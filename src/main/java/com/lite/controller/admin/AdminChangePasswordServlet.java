package com.lite.controller.admin; /**
 * @author GnaixEuy
 * @date 2021/6/17 16:08
 */

import com.lite.bean.AdminBean;
import com.lite.service.AdminService;
import com.lite.service.impl.AdminServiceImpl;
import com.mysql.cj.Session;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminChangePasswordServlet", value = "/AdminChangePasswordServlet.do")
public class AdminChangePasswordServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String passwordtext = request.getParameter("passwordtext");
        AdminService adminService = new AdminServiceImpl();
        HttpSession session = request.getSession();
        AdminBean user = (AdminBean) session.getAttribute("user");
        if ( adminService.ChangeAdminPassword(request, user, passwordtext) ) {
            request.getRequestDispatcher("success.html");
        } else {
            request.getRequestDispatcher("erro.html");
        }
    }
}
