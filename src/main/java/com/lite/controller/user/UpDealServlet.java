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
        String balance = request.getParameter("balance");


        UserService userService = new UserServiceImpl();
        boolean b = false;
        try {
            b = userService.updateUserInfo(id, name, password, telephone, Double.valueOf(balance));
        } catch ( Exception e ) {
            e.printStackTrace();
        }
        if ( b ) {
            request.setAttribute("msg", "修改会员信息成功");
            response.sendRedirect("view/msg.jsp");
        } else {
            request.getRequestDispatcher("/view/error.jsp");
        }
    }
}

