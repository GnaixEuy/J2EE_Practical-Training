package com.lite.controller.product; /**
 * @author GnaixEuy
 * @date 2021/6/19 20:26
 */

import com.lite.bean.ProductBean;
import com.lite.service.ProductService;
import com.lite.service.impl.ProductServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteProductServlet", value = "/DeleteProductServlet.do")
public class DeleteProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean isSuccess = false;
        try {
            String product_id = request.getParameter("product_id");
            String productName = request.getParameter("product_name");
            ProductService productService = new ProductServiceImpl();
            if ( product_id != null ) {
                isSuccess = productService.deleteProductById(product_id);
            } else if ( productName != null ) {
                ProductBean productBean = productService.getProductInfoByName(productName);
                if ( productBean != null ) {
                    isSuccess = productService.deleteProductById(productBean.getId());
                }
            }
        } catch ( Exception e ) {
            e.printStackTrace();
        }
        if ( isSuccess ) {
            request.getRequestDispatcher("/success.html").forward(request, response);
        } else {
            response.sendRedirect("view/error.jsp");
        }
    }
}
