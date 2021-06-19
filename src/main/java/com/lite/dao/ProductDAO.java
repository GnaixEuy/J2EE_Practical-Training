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
}
