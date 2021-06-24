package com.lite.controller.appraise; /**
 * @author GnaixEuy
 * @date 2021/6/24 00:13
 */

import com.lite.bean.AppraiseBean;
import com.lite.service.AppraiseService;
import com.lite.service.impl.AppraiseServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "QueryAllAppraiseServlet", value = "/QueryAllAppraiseServlet.do")
public class QueryAllAppraiseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AppraiseService appraiseService = new AppraiseServiceImpl();
        List<AppraiseBean> list = appraiseService.queryAllAp();
        request.setAttribute("AppraisesList", list);
        request.getRequestDispatcher("view/messageFeedBack.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
