package com.lite.dao.impl;

import com.lite.bean.UserBean;
import com.lite.dao.UserDAO;
import com.lite.utils.DBUtil;

public class UserDaoImpl implements UserDAO {
    DBUtil dbUtil =new DBUtil();
    @Override
    public int insert(UserBean user) {

        return 0;
    }

    @Override
    public int update(UserBean user) {
        return 0;
    }

    @Override
    public int delete(UserBean user) {
        return 0;
    }

    @Override
    public int queryHistory(UserBean user) {
        return 0;
    }

    @Override
    public UserBean queryUserInfo(Integer userId) {
        return null;
    }

    @Override
    public UserBean queryUserInfo(String userName) {
        return null;
    }
}
