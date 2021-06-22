package com.lite.controller.user; /**
 * @author GnaixEuy
 * @date 2021/6/18 13:31
 */

import com.lite.bean.ProductBean;
import com.lite.bean.UserBean;
import com.lite.service.UserService;
import com.lite.service.impl.ProductServiceImpl;
import com.lite.service.impl.UserServiceImpl;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserLoginVerificationServlet", value = "/UserLoginVerificationServlet.do")
public class UserLoginVerificationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String password = request.getParameter("password");
        UserService userService = new UserServiceImpl();
        ProductServiceImpl productService = new ProductServiceImpl();
        List<ProductBean> productList = productService.queryAllProductInfo();
        ServletContext application = request.getServletContext();
        application.setAttribute("productList", productList);
        UserBean userInfoToSession = null;
        if ( userService.userLoginVerification(id, password, userInfoToSession) ) {
            HttpSession session = request.getSession();
            session.setAttribute("user", userInfoToSession);
            response.sendRedirect("view/UserIndex.jsp");
        } else {
            String msg = "用户信息不存在";
            request.setAttribute("msg", msg);
            request.getRequestDispatcher("view/error.jsp").forward(request, response);
        }
    }
}
