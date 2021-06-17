package com.lite.utils;

/**
 * 数据库工具类
 *
 * @author GnaixEuy
 * @date 2021/06/15
 */

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.sql.*;
import java.util.HashMap;
import java.util.Iterator;
import java.util.ResourceBundle;

public class DBUtil {

    private static HashMap<Connection, Boolean> connectionHashMap;

    /**
     * connectionHashMap放这
     *
     * @param connectionHashMap
     */
    public static void setConnectionHashMap(HashMap<Connection, Boolean> connectionHashMap) {
        DBUtil.connectionHashMap = connectionHashMap;
    }

    static ResourceBundle resourceBundle;
    private static String dbUrl;
    private static String dbUserId;
    private static String dbUserPassword;
    private static int connectionNum;

    private PreparedStatement preparedStatement = null;
    private ResultSet resultSet = null;

    static {
        String driverTypePath;
        try {
            resourceBundle = ResourceBundle.getBundle("dbInfo");
            driverTypePath = resourceBundle.getString("driverTypePath");
            dbUrl = resourceBundle.getString("dbUrl");
            dbUserId = resourceBundle.getString("dbUserId");
            dbUserPassword = resourceBundle.getString("dbUserPassword");
            connectionNum = Integer.parseInt(resourceBundle.getString("connectionNum"));
            Class.forName(driverTypePath);
        } catch ( Exception e ) {
            System.out.println("erro");
            e.printStackTrace();
        }
    }

    /**
     * 获取一个connection，获取失败时返回一个null
     *
     * @return connection
     * @throws SQLException
     * @author GnaixEuy
     */
    public Connection getConnection() throws SQLException {
        Connection connection;
        try {
            connection = DriverManager.getConnection(dbUrl, dbUserId, dbUserPassword);
        } catch ( Exception e ) {
            e.printStackTrace();
            throw new SQLException();
        }
        return connection;
    }

    /**
     * 传入一个connection来进行关闭，正确关闭时候返回true，反之返回false
     *
     * @param connection
     * @return boolean
     * @author GnaixEuy
     */
    public boolean closeConnection(Connection connection) {
        try {
            if ( connection != null ) {
                connection.close();
            }
        } catch ( Exception e ) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    /**
     * 关闭所有connection，错误时抛出异常
     *
     * @throws Exception
     * @author GnaixEuy
     */
    public void closeAllConnection() throws Exception {
        //遍历hashmap关闭所有连接
        for ( Connection connection : connectionHashMap.keySet() ) {
            if ( connection != null ) {
                if ( !closeConnection(connection) ) {
                    System.out.println("关闭出现异常");
                    throw new Exception();
                }
            }
        }
    }

    /**
     * 获取配置文件中预先设定的Connection数量，用于监听器初始化connectionHashMap时提供参数
     *
     * @return int
     * @author GnaixEuy
     */
    public int getConnectionNum() {
        return connectionNum;
    }

    /**
     * 需要从connectionHashMap里面拿到connection来进行操作
     *
     * @param sql
     * @param params
     * @return int
     */
    public int update(String sql, Object... params) {
        int ret = 0;
        try {
            Connection connection = this.getCon();
            preparedStatement = connection.prepareStatement(sql);
            if ( params != null ) {
                for ( int i = 0; i < params.length; i++ ) {
                    preparedStatement.setObject(i + 1, params[i]);
                }
            }
            ret = preparedStatement.executeUpdate();
        } catch ( Exception e ) {
            e.printStackTrace();
        }
        return ret;
    }

    /**
     * 需要从connectionHashMap里面拿到connection来进行操作
     *
     * @param sql
     * @param params
     * @return Result
     */
    public ResultSet query(String sql, Object... params) {
        Connection connection = null;
        try {
            connection = this.getCon();
            preparedStatement = connection.prepareStatement(sql);
            if ( params != null ) {
                for ( int i = 0; i < params.length; i++ ) {
                    preparedStatement.setObject(i + 1, params[i]);
                }
            }
            resultSet = null;
            resultSet = preparedStatement.executeQuery();
        } catch ( Exception e ) {
            e.printStackTrace();
            try {
                connection.rollback();
            } catch ( SQLException throwables ) {
                throwables.printStackTrace();
            }
        } finally {
            this.restoreCon(connection);
        }
        return resultSet;
    }


    /**
     * 获取服务器内已经缓存的可用connection
     *
     * @return Connection
     * @author GnaixEuy
     */
    public Connection getCon() {

        Iterator<Connection> iterator = connectionHashMap.keySet().iterator();
        Connection connection;
        while ( iterator.hasNext() ) {
            connection = iterator.next();
            boolean isFree = connectionHashMap.get(connection);
            if ( isFree ) {
                connectionHashMap.put(connection, false);
                return connection;
            }
        }
        return null;
    }

    /**
     * 完成操作后释放占用的connection
     *
     * @param connection
     * @return
     */
    public boolean restoreCon(Connection connection) {
        try {
            connectionHashMap.put(connection, true);
        } catch ( Exception e ) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
}
