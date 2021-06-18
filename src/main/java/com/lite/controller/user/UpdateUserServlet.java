package com.lite.controller.user; /**
 * @author GnaixEuy
 * @date 2021/6/18 15:41
 */

import com.lite.bean.AdminBean;
import com.lite.bean.UserBean;
import com.lite.service.UserService;
import com.lite.service.impl.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateUserServlet", value = "/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");

        HttpSession session = request.getSession();
        AdminBean user = (AdminBean) session.getAttribute("user");
        UserService userService = new UserServiceImpl();
        if ( user != null ) {
            UserBean userBean = userService.getUserBeanById(id);
            request.setAttribute("edituser", userBean);
            request.getRequestDispatcher("edituser.jsp").forward(request, response);
        } else {
            response.sendRedirect("view/error.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
