package com.lite.service.impl;

import com.lite.bean.ProductBean;
import com.lite.bean.UserBean;
import com.lite.dao.OrderDAO;
import com.lite.dao.impl.OrderDAOImpl;
import com.lite.service.OrderService;

import java.util.List;

/**
 * @author GnaixEuy
 * @date 2021/6/22 14:34
 */
public class OrderServiceImpl implements OrderService {

    OrderDAO orderDAO = new OrderDAOImpl();

    @Override
    public boolean makeOrder(List<ProductBean> list, UserBean user) {
        try {
            return orderDAO.makeOrder(list, user);
        } catch ( Exception e ) {
            e.printStackTrace();
        }
        return false;
    }
}
