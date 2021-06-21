package com.lite.controller.admin; /**
 * @author GnaixEuy
 * @date 2021/6/17 14:45
 */

import com.lite.bean.AdminBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "AdminBackStageMainServlet", value = "/AdminBackStageMainServlet.do")
public class AdminBackStageMainServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        AdminBean user = (AdminBean) session.getAttribute("user");
        session.setAttribute("adminName", user.getAdminName());
        request.getRequestDispatcher("view/BackStageMain.jsp").forward(request, response);
    }
}
