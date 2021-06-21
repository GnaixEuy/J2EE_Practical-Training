package com.lite.controller.product; /**
 * @author GnaixEuy
 * @date 2021/6/21 09:49
 */

import com.lite.bean.MaterialBean;
import com.lite.service.MaterialService;
import com.lite.service.ProductService;
import com.lite.service.impl.MaterialServiceImpl;
import com.lite.service.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AddProductInitServlet", value = "/AddProductInitServlet.do")
public class AddProductInitServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MaterialService materialService = new MaterialServiceImpl();
        List<MaterialBean> materialBeansList = materialService.queryAllMaterials();
        ProductService productService = new ProductServiceImpl();
        List<String> allProductTypeList = productService.getAllProductType();
        request.setAttribute("materialsList", materialBeansList);
        request.setAttribute("allProductTypeList", allProductTypeList);
        request.getRequestDispatcher("/view/addProduct.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
