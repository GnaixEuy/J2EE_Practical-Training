package com.lite.dao;

import com.lite.bean.AdminBean;

/**
 * @author GnaixEuy
 * @date 2021/6/16 23:04
 */
public interface AdminDAO {
    //登入信息
    public int query(AdminBean admin);

    //修改密码
    public int update(AdminBean admin);

}
