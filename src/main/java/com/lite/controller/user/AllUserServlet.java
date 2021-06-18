package com.lite.controller.user; /**
 * @author GnaixEuy
 * @date 2021/6/18 11:15
 */

import com.lite.bean.AdminBean;
import com.lite.bean.UserBean;
import com.lite.service.impl.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AllUserServlet", value = "/AllUserServlet.do")
public class AllUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        try {
            AdminBean adminBean = (AdminBean) session.getAttribute("user");
            if ( !"".equals(adminBean.getAdminName()) ) {
                UserServiceImpl userService = new UserServiceImpl();
                List<UserBean> allUser = userService.getAllUser();
                request.setAttribute("list", allUser);
                request.getRequestDispatcher("/view/account.jsp").forward(request, response);
            }
        } catch ( Exception e ) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
