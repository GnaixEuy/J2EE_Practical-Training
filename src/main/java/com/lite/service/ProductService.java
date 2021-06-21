package com.lite.service;

import com.lite.bean.ProductBean;

import java.util.List;

/**
 * @author GnaixEuy
 * @date 2021/6/19 17:13
 */
public interface ProductService {

    public List<ProductBean> queryAllProductInfo();

    /**
     * 获取店内产品数
     *
     * @return
     */
    public int getProductsNumInWareHourse();

    public boolean deleteProductById(String id);

    public List<ProductBean> getProductInfoByName_blurry(String name);

    public ProductBean queryProductInfoById(String id);

    public ProductBean getProductInfoByName(String name);

    public boolean addProduct(String productId, String productName, Double productPrice, Integer productStore, String productType, List<String> productMaterialsList);

}
