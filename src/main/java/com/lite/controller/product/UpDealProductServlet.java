package com.lite.controller.product; /**
 * @author GnaixEuy
 * @date 2021/6/21 19:07
 */

import com.lite.service.ProductService;
import com.lite.service.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "UpDealProductServlet", value = "/UpDealProductServlet.do")
public class UpDealProductServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productId = request.getParameter("product_id");
        String productName = request.getParameter("product_name");
        Double productPrice = Double.parseDouble(request.getParameter("product_price"));
        int productStore = Integer.parseInt(request.getParameter("product_store"));
        String productType = request.getParameter("product_type");
        String[] productMaterials = request.getParameterValues("product_materials");
        List<String> productMaterialsList = Arrays.asList(productMaterials);
        ProductService productService = new ProductServiceImpl();
        if ( productService.updateProductInfo(productId, productName, productPrice, productStore, productType, productMaterialsList) ) {
            response.sendRedirect("success.html");
        } else {
            response.sendRedirect("view/error.jsp");
        }
    }
}
