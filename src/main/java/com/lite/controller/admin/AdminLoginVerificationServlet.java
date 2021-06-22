package com.lite.controller.admin; /**
 * @author GnaixEuy
 * @date 2021/6/16 11:19
 */

import com.lite.bean.AdminBean;
import com.lite.service.AdminService;
import com.lite.service.ProductService;
import com.lite.service.impl.AdminServiceImpl;
import com.lite.service.impl.ProductServiceImpl;
import com.lite.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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

            ProductService productService = new ProductServiceImpl();
            UserServiceImpl userService = new UserServiceImpl();
            AdminService adminService = new AdminServiceImpl();
            String id = request.getParameter("username");
            String password = request.getParameter("password");
            AdminBean adminBean = new AdminBean(id, password);
            int count = 0;
            int UsersNum = 0;
            if (adminService.LoginIsLegal(adminBean)) {
                count = productService.getProductsNumInWareHourse();
                UsersNum = userService.CountAllUsers();
                request.setAttribute("UsersNum",UsersNum);
                request.setAttribute("Account", count);
                HttpSession session = request.getSession();
                session.setAttribute("user", adminBean);
                session.setAttribute("adminUserName", adminBean.getId());
                request.getRequestDispatcher("/AdminBackStageMainServlet.do").forward(request, response);
            } else {
                String msg = "管理员信息不存在";
                request.setAttribute("msg", msg);
                System.out.println("错误登入");
                request.getRequestDispatcher("view/error.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
