package com.lite.controller.user; /**
 * @author GnaixEuy
 * @date 2021/6/18 17:28
 */

import com.lite.service.UserService;
import com.lite.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpDealServlet", value = "/UpDealServlet.do")
public class UpDealServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String telephone = request.getParameter("telephone");
        UserService userService = new UserServiceImpl();
        boolean b = userService.updateUserInfo(id, name, password, telephone);
        if ( b ) {
            response.sendRedirect("success.html");
        } else {
            request.getRequestDispatcher("/view/error.jsp");
        }
    }
}

