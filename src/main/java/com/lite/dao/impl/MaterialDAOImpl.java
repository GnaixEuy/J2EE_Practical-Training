package com.lite.dao.impl;

import com.lite.dao.MaterialDAO;
import com.lite.utils.DBUtil;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author GnaixEuy
 * @date 2021/6/21 08:30
 */
public class MaterialDAOImpl implements MaterialDAO {

    DBUtil dbUtil = new DBUtil();

    @Override
    public int getMaterialTypeNum() {
        String sql = "SELECT COUNT(Id) FROM material";
        ResultSet resultSet = dbUtil.query(sql);
        try {
            if ( resultSet.next() ) {
                return resultSet.getInt(1);
            }
        } catch ( SQLException throwables ) {
            throwables.printStackTrace();
        }
        return -1;
    }
}
