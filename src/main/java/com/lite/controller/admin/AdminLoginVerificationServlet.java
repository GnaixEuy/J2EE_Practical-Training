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


@WebServlet(name = "AdminLoginVerificationServlet", value = "/AdminLoginVerificationServlet.do")
public class AdminLoginVerificationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //非法访问转跳
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            AdminService adminService = new AdminServiceImpl();
            String id = request.getParameter("username");
            String password = request.getParameter("password");
            AdminBean adminBean = new AdminBean(id, password);
            if ( adminService.LoginIsLegal(adminBean) ) {
                HttpSession session = request.getSession();
                session.setAttribute("user", adminBean);
                request.getRequestDispatcher("/AdminBackStageMainServlet.do").forward(request, response);
            } else {
                String msg = "管理员信息不存在";
                request.setAttribute("msg", msg);
                System.out.println("错误登入");
                request.getRequestDispatcher("view/error.jsp").forward(request, response);
            }
        } catch ( Exception e ) {
            e.printStackTrace();
        }
    }
}
