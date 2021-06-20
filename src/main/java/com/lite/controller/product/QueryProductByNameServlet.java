package com.lite.controller.product; /**
 * @author GnaixEuy
 * @date 2021/6/20 15:20
 */

import com.lite.bean.ProductBean;
import com.lite.service.ProductService;
import com.lite.service.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "QueryProductByNameServlet", value = "/QueryProductByNameServlet.do")
public class QueryProductByNameServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productName = request.getParameter("productName");
        ProductService productService = new ProductServiceImpl();
        List<ProductBean> productBeanList = productService.getProductInfoByName_blurry(productName);
        if ( productBeanList != null ) {
            request.setAttribute("ProductsList", productBeanList);
            request.getRequestDispatcher("view/queryProducts.jsp").forward(request, response);
        } else {
            System.out.println("没找到");
            response.sendRedirect("view/error.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productName = request.getParameter("productName");
        ProductService productService = new ProductServiceImpl();
        List<ProductBean> productBeanList = productService.getProductInfoByName_blurry(productName);
        if ( productBeanList != null ) {
            request.setAttribute("ProductsList", productBeanList);
            request.getRequestDispatcher("view/queryProducts.jsp").forward(request, response);
        } else {
            System.out.println("没找到");
            response.sendRedirect("view/error.jsp");
        }
    }
}
