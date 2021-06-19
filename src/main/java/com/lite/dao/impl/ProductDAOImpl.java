package com.lite.dao.impl;

import com.lite.bean.ProductBean;
import com.lite.dao.ProductDAO;
import com.lite.utils.DBUtil;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author GnaixEuy
 * @date 2021/6/19 16:36
 */
public class ProductDAOImpl implements ProductDAO {
    DBUtil dbUtil = new DBUtil();

    @Override
    public List<ProductBean> queryAllProduct() {
        String sql = "select * from product";
        ResultSet resultSet = dbUtil.query(sql);
        List<ProductBean> list = new ArrayList<ProductBean>(this.queryAllProductsNum());
        ProductBean productBean = null;
        try {
            while ( resultSet.next() ) {
                String productId = resultSet.getString("product_id");
                String productName = resultSet.getString("product_name");
                double productPrice = resultSet.getDouble("product_price");
                int productStore = resultSet.getInt("product_store");
                String productType = resultSet.getString("product_type");
                String productMeteria = resultSet.getString("product_meteria");
                productBean = new ProductBean(productId, productName, productPrice, productStore, productType, productMeteria);
                list.add(productBean);
            }
        } catch ( Exception e ) {
            e.printStackTrace();
        }
        if ( list.size() == 0 ) {
            return null;
        } else {
            return list;
        }
    }

    @Override
    public int queryAllProductsNum() {
        String sql = "SELECT COUNT(product_id) as num FROM products";
        try {
            return dbUtil.query(sql).getInt("num");
        } catch ( Exception e ) {
            e.printStackTrace();
        }
        return 0;
    }
}
