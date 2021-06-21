package com.lite.controller.product; /**
 * @author GnaixEuy
 * @date 2021/6/21 10:27
 */

import com.lite.service.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;

@WebServlet(name = "AddProductServlet", value = "/AddProductServlet.do")
public class AddProductServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productId = request.getParameter("productid");
        String productName = request.getParameter("productname");
        String productPrice = request.getParameter("productprice");
        String productType = request.getParameter("producttype");
        String productStore = request.getParameter("productstore");
        String[] productmaterials = request.getParameterValues("productmaterials");
        ProductServiceImpl productService = new ProductServiceImpl();
        boolean b = productService.addProduct(productId, productName, Double.parseDouble(productPrice), Integer.parseInt(productStore), productType, Arrays.asList(productmaterials));
        if ( b ) {
            response.sendRedirect("success.html");
        } else {
            request.getRequestDispatcher("/view/error.jsp");
        }
    }
}
