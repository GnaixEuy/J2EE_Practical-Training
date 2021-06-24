package com.lite.controller.user; /**
 * @author GnaixEuy
 * @date 2021/6/23 21:30
 */

import com.lite.bean.UserBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ToShopServlet", value = "/ToShopServlet.do")
public class ToShopServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        UserBean user = (UserBean) session.getAttribute("user");
        try {
            user.getUserName();
            request.getRequestDispatcher("view/UserIndex.jsp").forward(request, response);
        } catch ( Exception e ) {
            request.setAttribute("msg", "session未查询到用户信息");
            request.getRequestDispatcher("view/msg.jsp").forward(request, response);
        }
    }
}
