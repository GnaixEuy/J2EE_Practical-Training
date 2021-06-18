package com.lite.dao.impl;

import com.lite.bean.UserBean;
import com.lite.dao.UserDAO;
import com.lite.utils.DBUtil;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl implements UserDAO {
    DBUtil dbUtil = new DBUtil();

    @Override
    public int insert(UserBean user) {
        String sql = "INSERT INTO users (Id,username,password,Phone, balance) VALUES(?,?,?,?,?)";
        String userId = user.getUserId();
        String userName = user.getUserName();
        String userPassword = user.getUserPassword();
        String userPhone = user.getUserPhone();
        Double userBalance = user.getUserBalance();
        int ret = dbUtil.update(sql, userId, userName, userPassword, userPhone, userBalance);
        return ret;
    }

    @Override
    public int update(UserBean user) {
        return 0;
    }

    @Override
    public int delete(UserBean user) {
        String userId = user.getUserId();
        String sql = "DELETE FROM users WHERE Id = ?";
        return dbUtil.update(sql, userId);
    }

    @Override
    public List<UserBean> queryAllUser() {
        String sql = "SELECT * from users";
        List<UserBean> list = new ArrayList<>();
        try {
            ResultSet resultSet = dbUtil.query(sql);
            if ( resultSet != null ) {
                while ( resultSet.next() ) {
                    String id = resultSet.getString("Id");
                    String username = resultSet.getString("username");
                    String password = resultSet.getString("password");
                    String phone = resultSet.getString("Phone");
                    double balance = resultSet.getDouble("balance");
                    UserBean userBean = new UserBean(id, username, password, balance, phone);
                    list.add(userBean);
                }
            }
        } catch ( Exception e ) {
            e.printStackTrace();
        }
        if ( list.size() == 0 ) {
            return null;
        }
        return list;
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

    @Override
    public boolean isUserLegal(UserBean userBean) {
        return false;
    }
}
