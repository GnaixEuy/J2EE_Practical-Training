package com.lite.dao;

import com.lite.bean.ProductBean;

import java.util.List;

/**
 * @author GnaixEuy
 * @date 2021/6/19 17:11
 */
public interface ProductDAO {
    public List<ProductBean> queryAllProduct();

    public int queryAllProductsNum();

    public int deleteProduct(String productId);

    public ProductBean queryProductInfo(String type, String name);

    public List<ProductBean> queryProductInfoByName_blurry(String name);

    public int addProduct(ProductBean productBean);

    public List<String> getAllProductType();

    public int updateProduct(ProductBean productBean);

}
