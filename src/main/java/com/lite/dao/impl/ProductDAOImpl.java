package com.lite.dao.impl;

import com.lite.bean.ProductBean;
import com.lite.dao.ProductDAO;
import com.lite.utils.DBUtil;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author GnaixEuy
 * @date 2021/6/19 16:36
 */
public class ProductDAOImpl implements ProductDAO {
    DBUtil dbUtil = new DBUtil();
    private ProductBean productBean;

    @Override
    public List<ProductBean> queryAllProduct() {
        String sql = "select * from products";
        ResultSet resultSet = dbUtil.query(sql);
        List<ProductBean> list = new ArrayList<ProductBean>(this.queryAllProductsNum());
        try {
            resultToList(resultSet, list);
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
        String sql = "SELECT COUNT(product_id) FROM products";
        int ret = 0;
        try {
            ResultSet resultSet = dbUtil.query(sql);
            if ( resultSet.next() ) {
                ret = resultSet.getInt(1);
            }
        } catch ( Exception e ) {
            e.printStackTrace();
        }
        return ret;
    }

    @Override
    public int deleteProduct(String productId) {
        String sql = "DELETE FROM products WHERE product_id = ?";
        return dbUtil.update(sql, productId);
    }

    @Override
    public ProductBean queryProductInfo(String type, String name) {
        String sql = "SELECT * from products WHERE " + type + " = ?";
        ResultSet resultSet = dbUtil.query(sql, name);
        return this.resultSetToProductBean(resultSet);
    }

    @Override
    public List<ProductBean> queryProductInfoByName_blurry(String name) {
        String sql = "SELECT * from products WHERE product_name like ?";
        String nameNew = '%' + name + '%';
        ResultSet resultSet = dbUtil.query(sql, nameNew);
        List<ProductBean> list = new ArrayList<>(this.queryAllProductsNum());
        try {
            resultToList(resultSet, list);
            return list;
        } catch ( Exception e ) {
            e.printStackTrace();
            return null;
        }
    }

    private void resultToList(ResultSet resultSet, List<ProductBean> list) throws SQLException {
        ProductBean productBean;
        while ( resultSet.next() ) {
            String productId = resultSet.getString("product_id");
            String productName = resultSet.getString("product_name");
            double productPrice = resultSet.getDouble("product_price");
            int productStore = resultSet.getInt("product_store");
            String productType = resultSet.getString("product_type");
            String productMaterials = resultSet.getString("product_materials");
            productBean = new ProductBean(productId, productName, productPrice, productStore, productType, productMaterials);
            list.add(productBean);
        }
    }


    private ProductBean resultSetToProductBean(ResultSet resultSet) {
        try {
            if ( resultSet.next() ) {
                String productId = resultSet.getString("product_id");
                String productName = resultSet.getString("product_name");
                double productPrice = resultSet.getDouble("product_price");
                int productStore = resultSet.getInt("product_store");
                String productType = resultSet.getString("product_type");
                String productMaterials = resultSet.getString("product_materials");
                productBean = new ProductBean(productId, productName, productPrice, productStore, productType, productMaterials);
            } else {
                System.out.println("本次请求没取到信息");
            }
        } catch ( Exception e ) {
            e.printStackTrace();
        }
        return productBean;
    }

    @Override
    public int addProduct(ProductBean productBean) {
        String sql = "INSERT INTO products (product_id, product_name, product_price,product_store,product_type,product_materials) VALUES(?,?,?,?,?,?)";
        return dbUtil.update(sql, productBean.getId(), productBean.getProductName(), productBean.getProductPrice(), productBean.getProductStore(), productBean.getProductType(), productBean.getProductMaterials());
    }


    @Override
    public List<String> getAllProductType() {
        String sql = "select * from typeInfo";
        ResultSet resultSet = dbUtil.query(sql);
        List list = new ArrayList<String>();
        String typeName;
        try {
            while ( resultSet.next() ) {
                typeName = resultSet.getString("type_name");
                list.add(typeName);
            }
        } catch ( SQLException throwables ) {
            throwables.printStackTrace();
        }
        return list;
    }

    @Override
    public int updateProduct(ProductBean productBean) {
        String sql = "UPDATE products SET product_name = ?, product_type = ?, product_price = ?, product_store = ?, product_materials = ? WHERE product_id = ?";
        String id = productBean.getId();
        String productName = productBean.getProductName();
        Double productPrice = productBean.getProductPrice();
        Integer productStore = productBean.getProductStore();
        String productType = productBean.getProductType();
        String productMaterials = productBean.getProductMaterials();
        try {
            return dbUtil.update(sql, productName, productType, productPrice, productStore, productMaterials, id);
        } catch ( Exception e ) {
            e.printStackTrace();
        }
        return 0;
    }

}
