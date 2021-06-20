package com.lite.controller.product; /**
 * @author GnaixEuy
 * @date 2021/6/20 14:12
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

@WebServlet(name = "queryProductServlet", value = "/queryProductServlet.do")
public class queryProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productId = request.getParameter("productId");
        ProductService productService = new ProductServiceImpl();
        ProductBean productBean = productService.queryProductInfoById(productId);
        if ( productBean != null ) {
            request.setAttribute("product", productBean);
            request.getRequestDispatcher("view/queryProductResult.jsp").forward(request, response);
        } else {
            System.out.println("没找到");
            response.sendRedirect("view/error.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productId = request.getParameter("productId");
        ProductService productService = new ProductServiceImpl();
        ProductBean productBean = productService.queryProductInfoById(productId);
        if ( productBean != null ) {
            request.setAttribute("product", productBean);
            request.getRequestDispatcher("view/queryProductResult.jsp").forward(request, response);
        } else {
            System.out.println("没找到");
            response.sendRedirect("view/error.jsp");
        }
    }
}
