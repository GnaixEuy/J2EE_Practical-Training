package com.lite.dao;

import com.lite.bean.MaterialBean;

import java.util.List;

/**
 * @author GnaixEuy
 * @date 2021/6/21 08:29
 */
public interface MaterialDAO {

    public int getMaterialTypeNum();

    public List<MaterialBean> queryAllMaterials();

    public int updateAllMaterials(MaterialBean materialBean,int Store);

}
