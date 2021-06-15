package com.lite.utils;

/**
 * @author GnaixEuy
 * @Date 2021/06/15
 * @Description
 */

import java.sql.*;
import java.util.HashMap;
import java.util.ResourceBundle;

public class DBUtil {

    static ResourceBundle resourceBundle;
    private static String dbUrl;
    private static String dbUserId;
    private static String dbUserPassword;


    static {
        String driverTypePath;
        try {
            resourceBundle = ResourceBundle.getBundle("dbInfo");
            driverTypePath = resourceBundle.getString("driverTypePath");
            dbUrl = resourceBundle.getString("dbUrl");
            dbUserId = resourceBundle.getString("dbUserId");
            dbUserPassword = resourceBundle.getString("dbUserPassword");
            Class.forName(driverTypePath);
        } catch ( Exception e ) {
            System.out.println("erro");
            e.printStackTrace();
        }
    }

    /**
     * @return connection
     * @throws SQLException
     * @author GnaixEuy
     * @deprecated 获取一个connection，获取失败时返回一个null
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
     * @param connection
     * @return boolean
     * @author GnaixEuy
     * @deprecated 传入一个connection来进行关闭，正确关闭时候返回true，反之返回false
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
     * @throws Exception
     * @author GnaixEuy
     * @deprecated 关闭所有connection，错误时抛出异常
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
}
