package com.lite.controller.user; /**
 * @author GnaixEuy
 * @date 2021/6/22 12:00
 */

import com.lite.bean.ProductBean;
import com.lite.bean.UserBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "QueryShoppingCarServlet", value = "/QueryShoppingCarServlet.do")
public class QueryShoppingCarServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        UserBean user = (UserBean) session.getAttribute("user");
        List<ProductBean> carList = (List<ProductBean>) session.getAttribute("carList");
        request.getRequestDispatcher("view/ShoppingCar.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
