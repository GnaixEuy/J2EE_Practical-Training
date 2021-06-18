package com.lite.controller.user; /**
 * @author GnaixEuy
 * @date 2021/6/18 09:04
 */

import com.lite.service.UserService;
import com.lite.service.impl.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RegisterUserServlet", value = "/RegisterUserServlet.do")
public class RegisterUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("非法访问");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String telephone = request.getParameter("telephone");
        UserService userService = new UserServiceImpl();
        if ( userService.addUser(id, name, password, telephone, 0.0) ) {
            response.sendRedirect("success.html");
        } else {
            response.sendRedirect("view/error.jsp");
        }
    }
}
