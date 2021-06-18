package com.lite.controller.user; /**
 * @author GnaixEuy
 * @date 2021/6/18 09:25
 */

import com.lite.service.UserService;
import com.lite.service.impl.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteUserServlet", value = "/DeleteUserServlet.do")
public class DeleteUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Object user = session.getAttribute("user");
        if ( user != null ) {
            String deleteId = request.getParameter("deleteId");
            UserService userService = new UserServiceImpl();
            boolean b = userService.deleteUserById(deleteId);
            if ( b ) {
                request.getRequestDispatcher("success.html");
            } else {
                String msg = "删除失败";
                request.setAttribute("msg", msg);
                request.getRequestDispatcher("view/error.jsp").forward(request, response);
            }
        } else {
            String msg = "身份异常";
            request.setAttribute("msg", msg);
            request.getRequestDispatcher("view/error.jsp").forward(request, response);
        }
    }

}
