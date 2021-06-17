package com.lite.service;

import com.lite.bean.AdminBean;

import javax.servlet.http.HttpServletRequest;

/**
 * @author GnaixEuy
 * @date 2021/6/17 08:10
 */
public interface AdminService {
    //-----
    public boolean LoginIsLegal(HttpServletRequest request, AdminBean adminBean);
}
