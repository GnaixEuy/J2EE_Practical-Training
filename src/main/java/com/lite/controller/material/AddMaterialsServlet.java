package com.lite.controller.material;

import com.lite.bean.MaterialBean;
import com.lite.service.impl.MaterialServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author 徐宇杰
 * @date 2021/6/23
 */
@WebServlet(name = "AddMaterialsServlet", value = "/AddMaterialsServlet.do")
public class AddMaterialsServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MaterialServiceImpl materialService = new MaterialServiceImpl();

        //        更新
        String Id = request.getParameter("id");
        if (Id != null) {
            Integer id = Integer.parseInt(Id);
            String Name = request.getParameter("name");
            String price = request.getParameter("price");
            Double Price = Double.parseDouble(price);
            String store = request.getParameter("store");
            Integer Store = Integer.parseInt(store);

            String Num = request.getParameter("Num");

            MaterialBean materialBean = new MaterialBean(id, Name, Price, Store);
            int AddStore = Integer.parseInt(Num);

            materialService.updateAllMaterials(materialBean, AddStore);
            request.setAttribute("msg", "原料增加成功");
            request.getRequestDispatcher("view/msg.jsp").forward(request, response);
        }
    }


}
