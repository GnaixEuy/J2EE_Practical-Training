package com.lite.controller.user; /**
 * @author GnaixEuy
 * @date 2021/6/18 09:25
 */

import com.lite.service.UserService;
import com.lite.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteUserServlet", value = "/DeleteUserServlet.do")
public class DeleteUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String deleteId = request.getParameter("deleteId");
            UserService userService = new UserServiceImpl();
            boolean b = userService.deleteUserById(deleteId);
            if ( b ) {
                request.setAttribute("msg", "删除用户成功");
                request.getRequestDispatcher("view/msg.jsp").forward(request, response);
            } else {
                String msg = "删除失败";
                request.setAttribute("msg", msg);
                request.getRequestDispatcher("view/error.jsp").forward(request, response);
            }
    }

}
