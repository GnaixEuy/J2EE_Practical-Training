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

    private AdminDAO adminDAO = new AdminDaoImpl();

    /**
     * 验证后台登入权限
     *
     * @param adminBean
     * @return
     */
    @Override
    public boolean LoginIsLegal(AdminBean adminBean) {
        int ret = adminDAO.queryIsLegal(adminBean);
        return ret == 1;
    }

    /**
     * 修改管理员密码
     *
     * @param adminBean
     * @param newPassword
     * @return boolean
     */

    @Override
    public boolean ChangeAdminPassword(AdminBean adminBean, String newPassword) {
        adminBean.setAdminPassword(newPassword);
        return adminDAO.updateAdminInfo(adminBean) == 1;
    }
}
