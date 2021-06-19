package com.lite.service.impl;

import com.lite.bean.ProductBean;
import com.lite.dao.ProductDAO;
import com.lite.dao.impl.ProductDAOImpl;
import com.lite.service.ProductService;

import java.util.List;

/**
 * @author GnaixEuy
 * @date 2021/6/19 17:13
 */
public class ProductServiceImpl implements ProductService {

    ProductDAO productDAO = new ProductDAOImpl();

    @Override
    public List<ProductBean> queryAllProductInfo() {
        List<ProductBean> list = productDAO.queryAllProduct();
        if ( list == null || list.isEmpty() || list.size() != this.getProductsNumInWareHourse() ) {
            return null;
        } else {
            return list;
        }
    }

    /**
     * 获取仓库内所有产品的种类总数
     *
     * @return 产品数量
     */
    @Override
    public int getProductsNumInWareHourse() {
        return productDAO.queryAllProductsNum();
    }
}