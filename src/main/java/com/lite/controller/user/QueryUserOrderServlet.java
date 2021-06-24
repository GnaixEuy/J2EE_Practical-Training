package com.lite.controller.user; /**
 * @author GnaixEuy
 * @date 2021/6/23 10:38
 */

import com.lite.bean.OrderBean;
import com.lite.bean.UserBean;
import com.lite.service.OrderService;
import com.lite.service.impl.OrderServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "QueryUserOrderServlet", value = "/QueryUserOrderServlet.do")
public class QueryUserOrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            UserBean user = (UserBean) session.getAttribute("user");
            OrderService orderService = new OrderServiceImpl();
            List<OrderBean> list = orderService.queryOrdersByUser(user);
            session.setAttribute("historyOrder", list);
        } catch ( Exception e ) {
            e.printStackTrace();
        }
    }
}
