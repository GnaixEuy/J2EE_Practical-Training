package com.lite.controller.order; /**
 * @author GnaixEuy
 * @date 2021/6/22 17:21
 */

import com.lite.bean.OrderBean;
import com.lite.service.OrderService;
import com.lite.service.impl.OrderServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "QueryOrderServlet", value = "/QueryOrderServlet.do")
public class QueryOrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OrderService orderService = new OrderServiceImpl();
        List<OrderBean> list = orderService.queryAllOrder();
        if ( list == null ) {
            list = new ArrayList<>();
        }
        request.setAttribute("orderList", list);
        request.getRequestDispatcher("view/order.jsp").forward(request, response);
    }
}
