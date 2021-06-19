package com.lite.controller.product; /**
 * @author GnaixEuy
 * @date 2021/6/19 17:24
 */

import com.lite.bean.ProductBean;
import com.lite.service.ProductService;
import com.lite.service.impl.ProductServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AllProductsServlet", value = "/AllProductsServlet.do")
public class AllProductsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductService productService = new ProductServiceImpl();
        List<ProductBean> list = productService.queryAllProductInfo();
        request.setAttribute("ProductsList", list);
        request.getRequestDispatcher("view/queryproducts.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
