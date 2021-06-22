package com.lite.controller.product; /**
 * @author GnaixEuy
 * @date 2021/6/19 17:24
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

@WebServlet(name = "AllProductsServlet", value = "/AllProductsServlet.do")
public class AllProductsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        ProductService productService = new ProductServiceImpl();
        List<ProductBean> list;



        if ( !"all".equals(type) ) {
            list = productService.queryProductByType(type);
            request.setAttribute("type", type);
        } else {
            list = productService.queryAllProductInfo();
            request.setAttribute("type", "所有商品");
        }
        List<String> allProductTypeList = productService.getAllProductType();
        request.setAttribute("ProductsList", list);
        request.setAttribute("allProductTypeList", allProductTypeList);
        request.getRequestDispatcher("view/queryProducts.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
