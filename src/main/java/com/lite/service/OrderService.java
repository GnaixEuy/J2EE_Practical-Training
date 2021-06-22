package com.lite.service;

import com.lite.bean.ProductBean;
import com.lite.bean.UserBean;

import java.util.List;

/**
 * @author GnaixEuy
 * @date 2021/6/22 14:33
 */
public interface OrderService {

    public boolean makeOrder(List<ProductBean> list, UserBean user);

}