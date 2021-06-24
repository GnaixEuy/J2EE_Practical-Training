package com.lite.controller.appraise; /**
 * @author GnaixEuy
 * @date 2021/6/24 00:12
 */

import com.lite.service.AppraiseService;
import com.lite.service.impl.AppraiseServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "MakeAppraiseServlet", value = "/MakeAppraiseServlet.do")
public class MakeAppraiseServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String thinking = request.getParameter("thinking");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
        Date date = new Date();
        String format = simpleDateFormat.format(date);
        AppraiseService appraiseService = new AppraiseServiceImpl();
        boolean b = appraiseService.addAp(format, thinking, new Date());
        if ( b ) {
            request.setAttribute("msg", "建议成功，希望你多读书多看报少吃零食多睡觉");
            request.getRequestDispatcher("view/msg.jsp").forward(request, response);
        } else {
            response.sendRedirect("view/error.jsp");
        }
    }
}
