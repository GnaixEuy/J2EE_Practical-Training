package com.lite.controller.user; /**
 * @author GnaixEuy
 * @date 2021/6/19 21:22
 */

import com.lite.bean.UserBean;
import com.lite.service.UserService;
import com.lite.service.impl.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateUserInfoServlet", value = "/UpdateUserInfoServlet.do")
public class UpdateUserInfoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        UserService userService = new UserServiceImpl();
        UserBean userBean = userService.getUserBeanById(id);
        request.setAttribute("edituser", userBean);
        request.getRequestDispatcher("/view/editor.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
