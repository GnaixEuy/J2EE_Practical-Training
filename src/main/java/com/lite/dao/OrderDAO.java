package com.lite.dao;

import com.lite.bean.OrderBean;
import com.lite.bean.ProductBean;
import com.lite.bean.UserBean;

import java.util.List;

/**
 * @author GnaixEuy
 * @date 2021/6/22 14:40
 */
public interface OrderDAO {

    public boolean makeOrder(List<ProductBean> list, UserBean userBean);

    public List<OrderBean> queryAllOrderList();

    public OrderBean queryOrderInfo(String id);

    public int updateOrderInfo(OrderBean orderBean);
}
