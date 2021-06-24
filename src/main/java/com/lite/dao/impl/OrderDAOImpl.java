package com.lite.dao.impl;

import com.lite.bean.MaterialBean;
import com.lite.bean.OrderBean;
import com.lite.bean.ProductBean;
import com.lite.bean.UserBean;
import com.lite.dao.OrderDAO;
import com.lite.utils.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
            String makeOrderSql = "INSERT into orders (order_id, order_list, order_price, order_userId, order_date, order_status) VALUES(?,?,?,?,?,?)";
            PreparedStatement materialsPreparedStatement = safeCon.prepareStatement(updateMaterialsSQL);
            PreparedStatement userPreparedStatement = safeCon.prepareStatement(updateUserInfoSQL);
            PreparedStatement makeOrderPreparedStatement = safeCon.prepareStatement(makeOrderSql);
            userPreparedStatement.setString(1, String.valueOf(userBean.getUserBalance()));
            userPreparedStatement.setString(2, userBean.getUserId());
            int useri = userPreparedStatement.executeUpdate();
            int mi = 0;
            for ( MaterialBean materialBean : materialBeans ) {
                materialsPreparedStatement.setInt(1, materialBean.getMaterialStore());
                materialsPreparedStatement.setInt(2, materialBean.getMaterialId());
                mi += materialsPreparedStatement.executeUpdate();
            }
            //注册订单
            StringBuffer orderId = new StringBuffer();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
            SimpleDateFormat dateSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date date = new Date();
            String format = simpleDateFormat.format(date.getTime());
            String orderDate = dateSimpleDateFormat.format(date.getTime());
            orderId.append(format);
            orderId.append(userBean.getUserId());
            orderId.append(userBean.getUserName());
            StringBuffer orderList = new StringBuffer();
            for ( ProductBean productBean : list ) {
                orderList.append(productBean.getProductName()).append(",");
            }
            orderList.deleteCharAt(orderList.length() - 1);
            makeOrderPreparedStatement.setString(1, orderId.toString());
            makeOrderPreparedStatement.setString(2, orderList.toString());
            makeOrderPreparedStatement.setDouble(3, needPay);
            makeOrderPreparedStatement.setString(4, userBean.getUserId());
            makeOrderPreparedStatement.setDate(5, java.sql.Date.valueOf(orderDate));
            makeOrderPreparedStatement.setString(6, "Pending");
            int z = makeOrderPreparedStatement.executeUpdate();
            if ( useri != 0 && mi > 0 && z != 0 ) {
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
            return false;
        }
        return true;
    }


    @Override
    public List<OrderBean> queryAllOrderList() {
        String sql = "select * from orders";
        ResultSet resultSet = dbUtil.query(sql);
        OrderBean orderBean;
        List<OrderBean> list = new ArrayList<OrderBean>();
        try {
            while ( resultSet.next() ) {
                String orderId = resultSet.getString("order_id");
                String orderList = resultSet.getString("order_list");
                double orderPrice = resultSet.getDouble("order_price");
                String orderUserid = resultSet.getString("order_userid");
                java.sql.Date orderDate = resultSet.getDate("order_date");
                String orderStatus = resultSet.getString("order_status");
                orderBean = new OrderBean(orderId, orderList, orderDate, orderPrice, orderUserid, orderStatus);
                list.add(orderBean);
            }
        } catch ( SQLException throwables ) {
            throwables.printStackTrace();
        }
        return list;
    }

    @Override
    public OrderBean queryOrderInfo(String id) {
        String sql = "select * from orders where order_id = ?";
        ResultSet resultSet = dbUtil.query(sql, id);
        OrderBean orderBean = null;
        try {
            if ( resultSet.next() ) {
                String orderList = resultSet.getString("order_list");
                double orderPrice = resultSet.getDouble("order_price");
                String orderUserid = resultSet.getString("order_userid");
                java.sql.Date orderDate = resultSet.getDate("order_date");
                String orderStatus = resultSet.getString("order_status");
                orderBean = new OrderBean(id, orderList, orderDate, orderPrice, orderUserid, orderStatus);
            }
        } catch ( SQLException throwables ) {
            throwables.printStackTrace();
        }
        return orderBean;
    }

    @Override
    public int updateOrderInfo(OrderBean orderBean) {
        String sql = "UPDATE orders set order_list = ?, order_userid = ?,order_date = ?,order_status=?,order_price = ? WHERE order_id = ?";
        String orderBeanId = orderBean.getId();
        String orderUserId = orderBean.getOrderUserId();
        String orderBeanProductName = orderBean.getProductName();
        String orderBeanStatus = orderBean.getStatus();
        Double puchasingPrice = orderBean.getPuchasingPrice();
        Date puchaseTime = orderBean.getPuchaseTime();
        int update = dbUtil.update(sql, orderBeanProductName, orderUserId, puchaseTime, orderBeanStatus, puchasingPrice, orderBeanId);
        return update;
    }
}
