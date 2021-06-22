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

    /**
     * 通过id 查询用户所有信息
     *
     * @param id
     * @return
     */
    @Override
    public UserBean getUserBeanById(String id) {
        UserBean userBean = new UserBean(id);
        boolean b = userDao.queryUserInfo(userBean);
        if ( b ) {
            return userBean;
        } else {
            return null;
        }
    }

    @Override
    public boolean userLoginVerification(String loginId, String loginPassword) {
        boolean ret = false;
        UserBean userBean = this.getUserBeanById(loginId);
        if ( userBean != null ) {
            if ( loginPassword.equals(userBean.getUserPassword()) ) {
                ret = true;
            }
        }
        return ret;
    }

    @Override
    public boolean updateUserInfo(String id, String userName, String userPassword, String userTelephone) {
        UserBean user = this.getUserBeanById(id);
        user.setUserName(userName);
        user.setUserPassword(userPassword);
        user.setUserPhone(userTelephone);
        return 1 == userDao.update(user);
    }

    @Override
    public int CountAllUsers() {
        return userDao.CountAllUser();
    }
}
