package com.lite.dao.impl;

import com.lite.bean.AdminBean;
import com.lite.dao.AdminDAO;
import com.lite.utils.DBUtil;


import java.sql.ResultSet;

/**
 * @author GnaixEuy
 * @date 2021/6/17 11:04
 */
public class AdminDaoImpl implements AdminDAO {
    DBUtil dbUtil = new DBUtil();

    @Override
    public int queryIsLegal(AdminBean admin) {
        String sql = "select * from admin where id = ? and admin_password = ?";
        String id = admin.getId();
        String adminPassword = admin.getAdminPassword();
        int ret = 0;
        try {
            ResultSet resultSet = dbUtil.query(sql, id, adminPassword);
            if ( resultSet.next() ) {
                ret = 1;
                admin.setAdminName(resultSet.getString("admin_name"));
            }
        } catch ( Exception e ) {
            e.printStackTrace();
        }
        return ret;
    }

    @Override
    public int updateAdminInfo(AdminBean admin) {
        String sql = "UPDATE admin SET admin_name = ?, admin_password = ? WHERE Id = ?";
        String id = admin.getId();
        String adminName = admin.getAdminName();
        String adminPassword = admin.getAdminPassword();
        int ret = 0;
        try {
            ret = dbUtil.update(sql, adminName, adminPassword, id);
        } catch ( Exception e ) {
            e.printStackTrace();
            return 0;
        }
        return ret;
    }
}
