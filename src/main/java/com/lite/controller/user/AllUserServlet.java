package com.lite.controller.user; /**
 * @author GnaixEuy
 * @date 2021/6/18 11:15
 */

import com.lite.bean.AdminBean;
import com.lite.bean.UserBean;
import com.lite.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AllUserServlet", value = "/AllUserServlet.do")
public class AllUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        try {
            AdminBean adminBean = (AdminBean) session.getAttribute("user");
            if ( adminBean != null && !"".equals(adminBean.getAdminName()) ) {
//                int Users = 0;
                UserServiceImpl userService = new UserServiceImpl();
                List<UserBean> allUser = userService.getAllUser();
//                Users = userService.CountAllUsers();
                  request.setAttribute("list", allUser);
//                request.setAttribute("Users",Users);
//                request.getRequestDispatcher("/AdminBackStageMainServlet.do").forward(request, response);
                request.getRequestDispatcher("/view/account.jsp").forward(request, response);
            } else {
                response.sendRedirect("view/error.jsp");
            }
        } catch ( Exception e ) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
