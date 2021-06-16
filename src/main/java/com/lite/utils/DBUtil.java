package com.lite.utils;

/**
 * 数据库工具类
 *
 * @author GnaixEuy
 * @date 2021/06/15
 */

import java.sql.*;
import java.util.HashMap;
import java.util.ResourceBundle;

public class DBUtil {

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
     *
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
    public void closeAllConnection(HashMap<Connection, Boolean> connectionHashMap) throws Exception {
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

    public int update(Connection connection, String sql, Object... params) {
        int ret = 0;
        try {
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

    public ResultSet query(Connection connection, String sql, Object... params) {
        try {
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
        } finally {
            //暂时不关闭，外边调用端手动关闭
            //一旦关闭数据库的链接，数据库获取到到数据集就清空了
        }
        return resultSet;
    }
}
