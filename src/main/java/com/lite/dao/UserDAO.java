package com.lite.dao;

import com.lite.bean.UserBean;

/**
 * 用户接口
 *
 * @author GnaixEuy
 * @date 2021/6/16 23:08
 */
public interface UserDAO {

    /**
     * 用户注册
     *
     * @param user
     * @return int
     */
    public int insert(UserBean user);

    /**
     * 用户修改密码
     *
     * @param user
     * @return int
     */
    public int update(UserBean user);

    /**
     * 用户注销
     *
     * @param user
     * @return
     */
    public int delete(UserBean user);

    /**
     * 用户查询购买记录
     *
     * @param user
     * @return int
     */
    public int queryHistory(UserBean user);

    /**
     * 通过ID查询用户信息
     *
     * @param userId
     * @return
     */
    public UserBean queryUserInfo(Integer userId);

    /**
     * 通过名字查询用户信息
     *
     * @param userName
     * @return
     */
    public UserBean queryUserInfo(String userName);
}
