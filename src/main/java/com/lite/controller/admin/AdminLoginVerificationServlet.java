package com.lite.controller.admin; /**
 * @author GnaixEuy
 * @date 2021/6/16 11:19
 */

import com.lite.bean.AdminBean;
import com.lite.service.AdminService;
import com.lite.service.impl.AdminServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.HashMap;

@WebServlet(name = "AdminLoginVerificationServlet", value = "/AdminLoginVerificationServlet.do")
public class AdminLoginVerificationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //非法访问转跳
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url;
        try {
            AdminService adminService = new AdminServiceImpl();
            Integer id = Integer.valueOf(request.getParameter("username"));
            String password = request.getParameter("password");
            AdminBean adminBean = new AdminBean(id, password);
            if ( adminService.LoginIsLegal(request, adminBean) ) {
                System.out.println("进来了");
                request.getRequestDispatcher("success.html").forward(request, response);
            } else {
                System.out.println("问题");
                PrintWriter out = response.getWriter();
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"管理员信息不存在\")");
                out.println("</script>");
            }
        } catch ( Exception e ) {
            e.printStackTrace();
        }
    }
}
