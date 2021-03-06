package com.lite.controller.order; /**
 * @author GnaixEuy
 * @date 2021/6/22 14:29
 */

import com.lite.bean.OrderBean;
import com.lite.bean.ProductBean;
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

@WebServlet(name = "MakeOrderServlet", value = "/MakeOrderServlet.do")
public class MakeOrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {

            HttpSession session = request.getSession();
            UserBean user = (UserBean) session.getAttribute("user");
            List<ProductBean> carList = (List<ProductBean>) session.getAttribute("carList");
            OrderService orderService = new OrderServiceImpl();
            UserService userService = new UserServiceImpl();
            boolean b = orderService.makeOrder(carList, user);
            if ( b ) {
                carList.clear();
                List<OrderBean> historyOrderList = orderService.queryOrdersByUser(user);
                user = userService.getUserBeanById(user.getUserId());
                session.setAttribute("user", user);
                session.setAttribute("carList", carList);
                session.setAttribute("historyOrder", historyOrderList);
                request.setAttribute("msg", "下单成功");
                request.getRequestDispatcher("view/msg.jsp").forward(request, response);
            } else {
                request.setAttribute("msg", "下单失败，店内原料不足或你的余额不足");
                request.getRequestDispatcher("view/msg.jsp").forward(request, response);
            }
        } catch ( Exception e ) {
            e.printStackTrace();
        }

    }
}
