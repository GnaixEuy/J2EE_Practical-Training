package com.lite.controller.user; /**
 * @author GnaixEuy
 * @date 2021/6/18 10:42
 */

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "GetAllUsersServlet", value = "/GetAllUsersServlet.do")
public class GetAllUsersServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
