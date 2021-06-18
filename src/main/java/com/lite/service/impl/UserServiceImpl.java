package com.lite.service.impl;

import com.lite.bean.UserBean;
import com.lite.dao.UserDAO;
import com.lite.dao.impl.UserDaoImpl;
import com.lite.service.UserService;

import java.util.List;

/**
 * @author GnaixEuy
 * @date 2021/6/18 08:59
 */
public class UserServiceImpl implements UserService {

    private UserDAO userDao = new UserDaoImpl();

    @Override
    public boolean addUser(String id, String name, String password, String telephone, Double balance) {
        UserBean userBean = new UserBean(id, name, password, balance, telephone);
        return 1 == userDao.insert(userBean);
    }

    @Override
    public boolean deleteUserById(String id) {
        UserBean userBean = new UserBean(id);
        return userDao.delete(userBean) == 1;
    }

    @Override
    public List<UserBean> getAllUser() {
        List<UserBean> userBeans = userDao.queryAllUser();
        if ( userBeans != null ) {
            return userBeans;
        }
        return null;
    }

    @Override
    public UserBean getUserBeanById(String id) {
        return null;
    }

    @Override
    public boolean updateUserTelephone() {
        return false;
    }
}
