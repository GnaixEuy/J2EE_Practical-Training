package com.lite.service;

import com.lite.bean.AdminBean;

import javax.servlet.http.HttpServletRequest;

/**
 * @author GnaixEuy
 * @date 2021/6/17 08:10
 */
public interface AdminService {

    /**
     * 管理员登入验证
     *
     * @param adminBean
     * @return boolean
     */
    public boolean LoginIsLegal(AdminBean adminBean);


    public boolean ChangeAdminPassword(AdminBean adminBean, String newPassword);
}
