package com.lite.controller.admin; /**
 * @author GnaixEuy
 * @date 2021/6/17 14:45
 */

import com.lite.bean.AdminBean;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminBackStageMainServlet", value = "/AdminBackStageMainServlet.do")
public class AdminBackStageMainServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        AdminBean user = (AdminBean) session.getAttribute("user");
        session.setAttribute("adminName", user.getAdminName());
//        request.getRequestDispatcher("view/BackStageMain.jsp").forward(request, response);
        response.sendRedirect("view/BackStageMain.jsp");
    }
}
