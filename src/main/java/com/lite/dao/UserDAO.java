package com.lite.dao;

import com.lite.bean.UserBean;

/**
 * 用户接口
 *
 * @author GnaixEuy
 * @date 2021/6/16 23:08
 */
public interface UserDAO {
    //用户注册
    public int insert(UserBean user);

    //用户修改密码
    public int update(UserBean user);

    //用户注销
    public int delete(UserBean user);

    //用户查询购买记录
    public int queryHistory(UserBean user);

    //用户查询积分//信息 -> ID
    public UserBean queryUserInfo(Integer userId);

    //用户查询积分//信息 -> Name
    public UserBean queryUserInfo(String userName);
}
