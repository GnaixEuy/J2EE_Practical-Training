package com.lite.controller.order; /**
 * @author GnaixEuy
 * @date 2021/6/22 20:07
 */

import com.lite.service.OrderService;
import com.lite.service.impl.OrderServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpDealOrderServlet", value = "/UpDealOrderServlet.do")
public class UpDealOrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String orderId = request.getParameter("orderId");
        String changeStatus = request.getParameter("changeStatus");
        OrderService orderService = new OrderServiceImpl();
        boolean b = orderService.updateOrderStatus(orderId, changeStatus);
        if ( b ) {
            request.getRequestDispatcher("/QueryOrderServlet.do").forward(request, response);
        } else {
            response.sendRedirect("view/error.jsp");
        }
    }

}
