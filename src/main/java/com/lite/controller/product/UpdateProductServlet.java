package com.lite.controller.product; /**
 * @author GnaixEuy
 * @date 2021/6/21 17:03
 */

import com.lite.bean.MaterialBean;
import com.lite.bean.ProductBean;
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

@WebServlet(name = "UpdateProductServlet", value = "/UpdateProductServlet.do")
public class UpdateProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        ProductService productService = new ProductServiceImpl();
        MaterialService materialService = new MaterialServiceImpl();
        List<MaterialBean> materialBeansList = materialService.queryAllMaterials();
        List<String> allProductTypeList = productService.getAllProductType();
        ProductBean productBean = productService.queryProductInfoById(id);
        request.setAttribute("product", productBean);
        request.setAttribute("materialsList", materialBeansList);
        request.setAttribute("allProductTypeList", allProductTypeList);
        request.getRequestDispatcher("view/EditProduct.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
