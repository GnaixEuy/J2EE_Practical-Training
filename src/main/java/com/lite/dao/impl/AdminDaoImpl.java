package com.lite.dao.impl;

import com.lite.bean.AdminBean;
import com.lite.dao.AdminDAO;
import com.lite.utils.DBUtil;

import javax.servlet.http.HttpServletRequest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * @author GnaixEuy
 * @date 2021/6/17 11:04
 */
public class AdminDaoImpl implements AdminDAO {
    DBUtil dbUtil = new DBUtil();

    @Override
    public int queryIsLegal(HttpServletRequest request, AdminBean admin) {
        String sql = "select * from admin where id = ? and adminpassword = ?";
        Integer id = admin.getId();
        String adminPassword = admin.getAdminPassword();
        Connection connection = dbUtil.getCon(request);
        ResultSet resultSet = null;
        int ret = 0;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, String.valueOf(id));
            preparedStatement.setString(2, adminPassword);
            resultSet = preparedStatement.executeQuery();
            if ( resultSet != null ) {
                ret = 1;
            }
        } catch ( Exception e ) {
            e.printStackTrace();
        } finally {
            dbUtil.closeCon(request, connection);
        }
        return ret;
    }

    @Override
    public int update(HttpServletRequest request, AdminBean admin) {
        return 0;
    }
}
