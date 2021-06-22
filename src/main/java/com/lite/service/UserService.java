package com.lite.service;

import com.lite.bean.UserBean;

import java.util.List;

/**
 * @author GnaixEuy
 * @date 2021/6/18 08:52
 */
public interface UserService {
    /**
     * 新增会员
     *
     * @return boolean
     */
    public boolean addUser(String id, String name, String password, String telephone, Double balance);

    /**
     * 清除会员信息
     *
     * @return boolean
     */
    public boolean deleteUserById(String id);

    /**
     * 用户登入验证
     *
     * @param loginId
     * @param loginPassword
     * @return boolean
     */
    public boolean userLoginVerification(String loginId, String loginPassword);

    /**
     * 获取所有会员对象
     *
     * @return List<UserBean>
     */
    public List<UserBean> getAllUser();

    /**
     * 通过id 获取会员信息
     *
     * @param id
     * @return
     */
    public UserBean getUserBeanById(String id);

    /**
     * 更新会员信息
     *
     * @return boolean
     */
    public boolean updateUserInfo(String id, String userName, String userPassword, String userTelephone);


}
