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
import java.util.ArrayList;
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
        List<String> allProductType = productService.getAllProductType();
        List<ProductBean> carList = new ArrayList<>();
        List<ProductBean> productList = productService.queryAllProductInfo();
        int productsNumInWareHourse = productService.getProductsNumInWareHourse();

        ServletContext application = request.getServletContext();
        application.setAttribute("productnum", productsNumInWareHourse);
        application.setAttribute("productList", productList);
        application.setAttribute("allProductType", allProductType);
        UserBean userInfoToSession;
        if ( userService.userLoginVerification(id, password) ) {
            HttpSession session = request.getSession();
            userInfoToSession = userService.getUserBeanById(id);
            session.setAttribute("user", userInfoToSession);
            session.setAttribute("carList", carList);
            response.sendRedirect("view/UserIndex.jsp");
        } else {
            String msg = "用户信息不存在";
            request.setAttribute("msg", msg);
            request.getRequestDispatcher("view/error.jsp").forward(request, response);
        }
    }
}
