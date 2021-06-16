package com.lite.controller.admin; /**
 * @author GnaixEuy
 * @date 2021/6/16 11:19
 */

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminLoginVerificationServlet.do", value = "/AdminLoginVerificationServlet.do")
public class AdminLoginVerificationServletdo extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //非法访问转跳
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String password = request.getParameter("password");
        try {


        } catch ( Exception e ) {

        }
    }
}
