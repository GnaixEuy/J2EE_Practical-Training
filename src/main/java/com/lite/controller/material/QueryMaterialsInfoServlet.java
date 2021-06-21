package com.lite.controller.material; /**
 * @author GnaixEuy
 * @date 2021/6/21 09:04
 */

import com.lite.bean.MaterialBean;
import com.lite.service.impl.MaterialServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "QueryMaterialsInfoServlet", value = "/QueryMaterialsInfoServlet.do")
public class QueryMaterialsInfoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MaterialServiceImpl materialService = new MaterialServiceImpl();
        List<MaterialBean> list = materialService.queryAllMaterials();
        request.setAttribute("materialsList", list);
        request.getRequestDispatcher("view/AllMaterials.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
