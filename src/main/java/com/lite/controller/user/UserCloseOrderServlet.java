package com.lite.controller.user; /**
 * @author GnaixEuy
 * @date 2021/6/23 12:12
 */

import com.lite.bean.OrderBean;
import com.lite.bean.UserBean;
import com.lite.service.OrderService;
import com.lite.service.UserService;
import com.lite.service.impl.OrderServiceImpl;
import com.lite.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserCloseOrderServlet", value = "/UserCloseOrderServlet.do")
public class UserCloseOrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String orderId = request.getParameter("orderId");
        String changeStatus = request.getParameter("changeStatus");
        OrderService orderService = new OrderServiceImpl();
        UserService userService = new UserServiceImpl();
        boolean b = orderService.updateOrderStatus(orderId, changeStatus);
        HttpSession session = request.getSession();
        UserBean user = (UserBean) session.getAttribute("user");
        if ( b ) {
            List<OrderBean> list = orderService.queryOrdersByUser(user);
            user = userService.getUserBeanById(user.getUserId());
            session.setAttribute("historyOrder", list);
            session.setAttribute("user", user);
            request.setAttribute("msg", "取消订单成功");
            request.getRequestDispatcher("/view/msg.jsp").forward(request, response);
        } else {
            response.sendRedirect("view/error.jsp");
        }
    }
}
