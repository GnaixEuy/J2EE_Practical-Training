package com.lite.dao;

import com.lite.bean.AdminBean;

import javax.servlet.http.HttpServletRequest;

/**
 * @author GnaixEuy
 * @date 2021/6/16 23:04
 */
public interface AdminDAO {

    /**
     * 查询验证登入信息
     *
     * @param admin
     * @return int
     */

    public int queryIsLegal(AdminBean admin);

    /**
     * 修改密码
     *
     * @param admin
     * @return
     */
    public int updateAdminInfo(AdminBean admin);

}
