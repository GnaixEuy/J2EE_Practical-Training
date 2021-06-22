package com.lite.controller.product; /**
 * @author GnaixEuy
 * @date 2021/6/22 14:11
 */

import com.lite.bean.ProductBean;
import com.lite.bean.UserBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

@WebServlet(name = "DeleteProductFromShopCarServlet", value = "/DeleteProductFromShopCarServlet.do")
public class DeleteProductFromShopCarServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String deleteId = request.getParameter("deleteId");
        HttpSession session = request.getSession();
        UserBean user = (UserBean) session.getAttribute("user");
        List<ProductBean> carList = (List<ProductBean>) session.getAttribute("carList");
        Iterator<ProductBean> iterator = carList.iterator();
        while ( iterator.hasNext() ) {
            if ( deleteId.equals(iterator.next().getId()) ) {
                iterator.remove();
                break;
            }
        }
        session.setAttribute("carList", carList);
        request.getRequestDispatcher("view/ShoppingCar.jsp").forward(request, response);
    }
}
