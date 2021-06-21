package com.lite.service;

import com.lite.bean.MaterialBean;

import java.util.List;

/**
 * @author GnaixEuy
 * @date 2021/6/21 08:35
 */
public interface MaterialService {

    public int getMaterialTypeNumInWebhourse();

    public List<MaterialBean> queryAllMaterials();
}
