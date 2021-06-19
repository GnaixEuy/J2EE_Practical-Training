package com.lite.dao;

import com.lite.bean.ProductBean;
import com.lite.service.ProductService;

import java.util.List;

/**
 * @author GnaixEuy
 * @date 2021/6/19 17:11
 */
public interface ProductDAO {
    public List<ProductBean> queryAllProduct();

    public int queryAllProductsNum();

    public int deleteProduct(String productId);

    public ProductBean queryProductInfoByName(String name);
}
