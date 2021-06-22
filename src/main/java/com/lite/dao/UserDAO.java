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
     * 通过ID查询用户信息
     *
     * @param userBean
     * @return
     */
    public boolean queryUserInfo(UserBean userBean);

    public int CountAllUser();

}
