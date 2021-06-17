package com.lite.bean;

/**
 * 管理员实体
 *
 * @author GnaixEuy
 * @date 2021/6/16 16:17
 */
public class AdminBean {
    private String adminId;
    private String adminName;
    private String adminPassword;

    public AdminBean(String adminId, String adminName, String adminPassword) {
        this.adminId = adminId;
        this.adminName = adminName;
        this.adminPassword = adminPassword;
    }

    public AdminBean(String adminId, String adminPassword) {
        this.adminId = adminId;
        this.adminPassword = adminPassword;
    }

    public String getId() {
        return adminId;
    }

    public void setId(String id) {
        this.adminId = id;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword;
    }
}
