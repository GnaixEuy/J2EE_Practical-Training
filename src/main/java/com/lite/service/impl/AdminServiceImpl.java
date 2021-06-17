package com.lite.service.impl;

import com.lite.bean.AdminBean;
import com.lite.dao.AdminDAO;
import com.lite.dao.impl.AdminDaoImpl;
import com.lite.service.AdminService;
import com.lite.utils.DBUtil;

import javax.servlet.http.HttpServletRequest;
import java.sql.Connection;

/**
 * @author GnaixEuy
 * @date 2021/6/17 08:54
 */
public class AdminServiceImpl implements AdminService {

    AdminDAO adminDAO = new AdminDaoImpl();

    /**
     * 验证后台登入权限
     *
     * @param request
     * @param adminBean
     * @return
     */
    @Override
    public boolean LoginIsLegal(HttpServletRequest request, AdminBean adminBean) {
        int ret = adminDAO.queryIsLegal(request, adminBean);
        return ret == 1;
    }

}
