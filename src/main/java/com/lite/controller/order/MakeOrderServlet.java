package com.lite.controller.order; /**
 * @author GnaixEuy
 * @date 2021/6/22 14:29
 */

import com.lite.bean.ProductBean;
import com.lite.bean.UserBean;
import com.lite.dao.OrderDAO;
import com.lite.dao.impl.OrderDAOImpl;

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
        HttpSession session = request.getSession();
        UserBean user = (UserBean) session.getAttribute("user");
        List<ProductBean> carList = (List<ProductBean>) session.getAttribute("carList");
        OrderDAO orderDAO = new OrderDAOImpl();
        boolean b = orderDAO.makeOrder(carList, user);
        if ( b ) {
            response.sendRedirect("success.html");
        } else {
            response.sendRedirect("view/error.jsp");
        }
    }
}
