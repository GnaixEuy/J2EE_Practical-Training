package com.lite.dao;

import com.lite.bean.UserBean;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

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
    public int update( UserBean user);

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
     * 获取所有用户信息
     *
     * @return List<UserBean>
     */
    public List<UserBean> queryAllUser();

    /**
     * 用户登入验证
     *
     * @param userBean
     * @return boolean
     */
    public boolean isUserLegal(UserBean userBean);

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
