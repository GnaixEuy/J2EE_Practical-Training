package com.lite.controller.product; /**
 * @author GnaixEuy
 * @date 2021/6/22 10:45
 */

import com.lite.bean.ProductBean;
import com.lite.service.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AddProductToShopCarServlet", value = "/AddProductToShopCarServlet.do")
public class AddProductToShopCarServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        ProductServiceImpl productService = new ProductServiceImpl();
        ProductBean productBean = productService.queryProductInfoById(id);
        HttpSession session = request.getSession();
        List<ProductBean> carList = (List<ProductBean>) session.getAttribute("carList");
        carList.add(productBean);
        session.setAttribute("carList", carList);
        System.out.println(productBean.getProductName() + "添加成功");
        request.getRequestDispatcher("view/UserIndex.jsp").forward(request, response);
    }
}
