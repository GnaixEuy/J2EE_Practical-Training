package com.lite.service.impl;

import com.lite.bean.MaterialBean;
import com.lite.dao.MaterialDAO;
import com.lite.dao.impl.MaterialDAOImpl;
import com.lite.service.MaterialService;

import java.util.List;

/**
 * @author GnaixEuy
 * @date 2021/6/21 08:36
 */
public class MaterialServiceImpl implements MaterialService {

    MaterialDAO materialDAO = new MaterialDAOImpl();


    @Override
    public int getMaterialTypeNumInWebhourse() {
        return materialDAO.getMaterialTypeNum();
    }

    @Override
    public List<MaterialBean> queryAllMaterials() {
        return materialDAO.queryAllMaterials();
    }
}
