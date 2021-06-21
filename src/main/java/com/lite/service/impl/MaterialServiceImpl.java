package com.lite.service.impl;

import com.lite.dao.MaterialDAO;
import com.lite.dao.impl.MaterialDAOImpl;

/**
 * @author GnaixEuy
 * @date 2021/6/21 08:36
 */
public class MaterialServiceImpl implements MaterialDAO {

    MaterialDAO materialDAO = new MaterialDAOImpl();


    @Override
    public int getMaterialTypeNum() {
        return materialDAO.getMaterialTypeNum();
    }
}
