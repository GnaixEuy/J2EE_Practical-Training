package com.lite.controller.user; /**
 * @author GnaixEuy
 * @date 2021/6/18 13:31
 */

import com.lite.bean.UserBean;
import com.lite.service.UserService;
import com.lite.service.impl.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

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
        UserBean userInfoToSession = null;
        if ( userService.userLoginVerification(id, password, userInfoToSession) ) {
            HttpSession session = request.getSession();
            session.setAttribute("user", userInfoToSession);
            response.sendRedirect("订购界面");
        } else {
            String msg = "用户信息不存在";
            request.setAttribute("msg", msg);
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
