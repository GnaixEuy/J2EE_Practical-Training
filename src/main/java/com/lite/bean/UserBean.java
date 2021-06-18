package com.lite.bean;

/**
 * 用户实体
 *
 * @author GnaixEuy
 * @date 2021/6/16 22:58
 */
public class UserBean {
    private String userId;
    private String userName;
    private String userPassword;
    private Double userBalance;
    private String userPhone;

    public UserBean(String userId) {
        this.userId = userId;
    }

    public UserBean(String userId, String userName, String userPassword, Double userBalance, String userPhone) {
        this.userId = userId;
        this.userName = userName;
        this.userPassword = userPassword;
        this.userBalance = userBalance;
        this.userPhone = userPhone;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public Double getUserBalance() {
        return userBalance;
    }

    public void setUserBalance(Double userBalance) {
        this.userBalance = userBalance;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }
}
