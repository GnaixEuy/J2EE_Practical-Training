package com.lite.dao.impl;

import com.lite.bean.MaterialBean;
import com.lite.dao.MaterialDAO;
import com.lite.utils.DBUtil;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author GnaixEuy
 * @date 2021/6/21 08:30
 */
public class MaterialDAOImpl implements MaterialDAO {

    DBUtil dbUtil = new DBUtil();

    @Override
    public int getMaterialTypeNum() {
        String sql = "SELECT COUNT(material_id) FROM material";
        ResultSet resultSet = dbUtil.query(sql);
        try {
            if ( resultSet.next() ) {
                return resultSet.getInt(1);
            }
        } catch ( SQLException throwables ) {
            throwables.printStackTrace();
        }
        return -1;
    }

    @Override
    public List<MaterialBean> queryAllMaterials() {
        String sql = "SELECT * FROM material ORDER BY material_id";
        ResultSet resultSet = dbUtil.query(sql);
        List<MaterialBean> materialBeanList = new ArrayList<>();
        try {
            return this.resultToList(resultSet, materialBeanList);
        } catch ( SQLException throwables ) {
            throwables.printStackTrace();
        }
        return null;
    }

    private List<MaterialBean> resultToList(ResultSet resultSet, List<MaterialBean> list) throws SQLException {
        MaterialBean materialBean;
        while ( resultSet.next() ) {
            int materialId = resultSet.getInt("material_id");
            String materialName = resultSet.getString("material_name");
            double materialPrice = resultSet.getDouble("material_price");
            int materialStore = resultSet.getInt("material_store");
            materialBean = new MaterialBean(materialId, materialName, materialPrice, materialStore);
            list.add(materialBean);
        }
        return list;
    }


}
