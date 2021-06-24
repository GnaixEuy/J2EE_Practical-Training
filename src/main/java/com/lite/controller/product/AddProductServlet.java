package com.lite.controller.product; /**
 * @author GnaixEuy
 * @date 2021/6/21 10:27
 */

import com.lite.bean.ProductBean;
import com.lite.service.impl.ProductServiceImpl;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AddProductServlet", value = "/AddProductServlet.do")
public class AddProductServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productId = (String) request.getAttribute("product_id");
        String productName = (String) request.getAttribute("product_name");
        String productPrice = (String) request.getAttribute("product_price");
        String productType = (String) request.getAttribute("product_type");
        String productStore = (String) request.getAttribute("product_store");
        List productmaterials = (List<String>) request.getAttribute("product_materials");
        ProductServiceImpl productService = new ProductServiceImpl();
        boolean b = productService.addProduct(productId, productName, Double.valueOf(productPrice), Integer.parseInt(productStore), productType, productmaterials);
        if ( b ) {
            List<ProductBean> list = productService.queryAllProductInfo();
            ServletContext application = request.getServletContext();
            application.setAttribute("productList", list);
            request.setAttribute("msg", "新增商品成功");
            request.getRequestDispatcher("view/msg.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("/view/error.jsp");
        }
    }
}
