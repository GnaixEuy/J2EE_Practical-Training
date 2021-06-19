package com.lite.service;

import com.lite.bean.ProductBean;

import java.util.List;

/**
 * @author GnaixEuy
 * @date 2021/6/19 17:13
 */
public interface ProductService {

    public List<ProductBean> queryAllProductInfo();

    public int getProductsNumInWareHourse();
}
