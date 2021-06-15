package com.lite.utils;

/**
 * Created with IntelliJ IDEA
 *
 * @author: GnaixEuy
 * @Date: 2021/06/15
 * @Description:
 */

import java.util.ResourceBundle;

public class DBUtil {

    static ResourceBundle resourceBundle;
    private static String driverTypePath;
    private static String dbUrl;
    private static String dbUserId;
    private static String dbUserPassword;

    static {
        try {
            resourceBundle = ResourceBundle.getBundle("dbInfo");
            System.out.println(resourceBundle);
            driverTypePath = resourceBundle.getString("driverTypePath");
            dbUrl = resourceBundle.getString("dbUrl");
            dbUserId = resourceBundle.getString("dbUserId");
            dbUserPassword = resourceBundle.getString("dbUserPassword");
        } catch ( Exception e ) {
            System.out.println("erro");
            e.printStackTrace();
        } finally {

        }
    }
}
