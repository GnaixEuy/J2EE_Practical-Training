package com.lite.dao.impl;

import com.lite.bean.AdminBean;
import com.lite.dao.AdminDAO;
import com.lite.utils.DBUtil;

import javax.servlet.http.HttpServletRequest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author GnaixEuy
 * @date 2021/6/17 11:04
 */
public class AdminDaoImpl implements AdminDAO {
    DBUtil dbUtil = new DBUtil();

    @Override
    public int queryIsLegal(HttpServletRequest request, AdminBean admin) {
        String sql = "select * from admin where id = ? and admin_password = ?";
        String id = admin.getId();
        String adminPassword = admin.getAdminPassword();
        Connection connection = dbUtil.getCon(request);
        int ret = 0;
        try {
            ResultSet resultSet = dbUtil.query(connection, sql, id, adminPassword);
            if ( resultSet.next() ) {
                ret = 1;
                admin.setAdminName(resultSet.getString("admin_name"));
            }
        } catch ( Exception e ) {
            e.printStackTrace();
        } finally {
            dbUtil.closeCon(request, connection);
        }
        return ret;
    }

    @Override
    public int updateAdminInfo(HttpServletRequest request, AdminBean admin) {
        String sql = "UPDATE admin SET admin_name = ?, admin_password = ? WHERE Id = ?";
        Connection connection = dbUtil.getCon(request);
        String id = admin.getId();
        String adminName = admin.getAdminName();
        String adminPassword = admin.getAdminPassword();
        int ret = 0;
        try {
            ret = dbUtil.update(connection, sql, adminName, adminPassword, id);
        } catch ( Exception e ) {
            e.printStackTrace();
            try {
                connection.rollback();
            } catch ( SQLException throwables ) {
                throwables.printStackTrace();
            }
            return 0;
        }
        return ret;
    }
}
