package com.lite.dao.impl;

import com.lite.bean.MaterialBean;
import com.lite.bean.ProductBean;
import com.lite.bean.UserBean;
import com.lite.dao.OrderDAO;
import com.lite.utils.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

/**
 * @author GnaixEuy
 * @date 2021/6/22 14:42
 */
public class OrderDAOImpl implements OrderDAO {

    DBUtil dbUtil = new DBUtil();


    @SuppressWarnings("SqlResolve")
    @Override
    public boolean makeOrder(List<ProductBean> list, UserBean userBean) {
        MaterialDAOImpl materialDAO = new MaterialDAOImpl();
        List<MaterialBean> materialBeans = materialDAO.queryAllMaterials();
        double needPay = 0.0f;
        for ( ProductBean productBean : list ) {
            List<String> productMaterialsList = productBean.getProductMaterialsList();
            //减少原料
            for ( String s : productMaterialsList ) {
                for ( MaterialBean materialBean : materialBeans ) {
                    if ( s.equals(materialBean.getMaterialName()) ) {
                        int tmp = materialBean.getMaterialStore();
                        if ( tmp == 0 ) {
                            return false;
                        } else {
                            materialBean.setMaterialStore(tmp - 1);
                        }
                    }
                }
            }
            //统计消费
            needPay += productBean.getProductPrice();
        }
        Double userBalance = userBean.getUserBalance();
        userBalance -= needPay;
        if ( userBalance < 0 ) {
            return false;
        } else {
            userBean.setUserBalance(userBalance);
        }
        //更新数据库信息即可
        Connection safeCon = dbUtil.getSafeCon();
        try {
            String updateMaterialsSQL = "UPDATE material SET material_store = ? WHERE material_id = ?";
            String updateUserInfoSQL = "UPDATE users SET balance = ? WHERE Id = ?";
            PreparedStatement materialsPreparedStatement = safeCon.prepareStatement(updateMaterialsSQL);
            PreparedStatement userPreparedStatement = safeCon.prepareStatement(updateUserInfoSQL);
            userPreparedStatement.setString(1, String.valueOf(userBean.getUserBalance()));
            userPreparedStatement.setString(2, userBean.getUserId());
            int useri = userPreparedStatement.executeUpdate();
            int mi = 0;
            for ( MaterialBean materialBean : materialBeans ) {
                materialsPreparedStatement.setInt(1, materialBean.getMaterialStore());
                materialsPreparedStatement.setInt(2, materialBean.getMaterialId());
                mi += materialsPreparedStatement.executeUpdate();
            }
            if ( useri != 0 && mi > 0 ) {
                safeCon.commit();
            }
            dbUtil.restoreSafeCon(safeCon);
        } catch ( Exception e ) {
            e.printStackTrace();
            try {
                safeCon.rollback();
                dbUtil.restoreSafeCon(safeCon);
            } catch ( SQLException throwables ) {
                throwables.printStackTrace();
            }
        }
        return true;
    }
}
