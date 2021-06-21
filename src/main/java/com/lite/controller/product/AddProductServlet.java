package com.lite.controller.product; /**
 * @author GnaixEuy
 * @date 2021/6/21 10:27
 */

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddProductServlet", value = "/AddProductServlet.do")
public class AddProductServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getParameter("productid");
        request.getParameter("productname");
        request.getParameter("productprice");
    }
}
