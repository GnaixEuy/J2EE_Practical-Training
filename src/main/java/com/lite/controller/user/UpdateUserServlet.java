package com.lite.controller.user; /**
 * @author GnaixEuy
 * @date 2021/6/18 15:41
 */

import com.lite.bean.UserBean;
import com.lite.service.UserService;
import com.lite.service.impl.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateUserServlet", value = "/UpdateUserServlet.do")
public class UpdateUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            String id = request.getParameter("id");
            UserService userService = new UserServiceImpl();
            UserBean userBean = userService.getUserBeanById(id);
            System.out.println("进来了");
            request.setAttribute("edituser", userBean);
            request.getRequestDispatcher("view/edituser.jsp").forward(request, response);
        } catch ( Exception e ) {
            e.printStackTrace();
        }
    }
}
