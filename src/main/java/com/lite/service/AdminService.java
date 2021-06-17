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
     * @param request
     * @param adminBean
     * @return boolean
     */
    public boolean LoginIsLegal(HttpServletRequest request, AdminBean adminBean);


    public boolean ChangeAdminPassword(HttpServletRequest request, AdminBean adminBean, String newPassword);
}
