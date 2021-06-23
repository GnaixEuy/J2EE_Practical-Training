package com.lite.controller.product; /**
 * @author GnaixEuy
 * @date 2021/6/23 10:26
 */

import com.lite.service.impl.ProductServiceImpl;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "NewAddProductServlet", value = "/NewAddProductServlet")
public class NewAddProductServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if ( ServletFileUpload.isMultipartContent(request) ) {
            //创建 FileItemFactory 工厂实现类
            FileItemFactory fileItemFactory = new DiskFileItemFactory();
            // 2. 创建用于解析上传数据的工具类
            ServletFileUpload servletFileUpload = new ServletFileUpload(fileItemFactory);
            try {
                // 3. 解析 上传的数据，得到每一个表单项 FiltItem
                List<FileItem> list = servletFileUpload.parseRequest(request);
                //循环判断，每一个表单项，是普通类型，还是上传的文件
                for ( FileItem fileItem : list ) {

                    // 是普通表单项
                    if ( fileItem.isFormField() ) {
                        String fieldName = fileItem.getFieldName();
                        String value = fileItem.getString("UTF-8");

                        System.out.println("表单项的name属性值 = " + fieldName);
                        System.out.println("表单项的value属性值 = " + value);
                    } else {
                        //是上传的文件
                        String name = fileItem.getFieldName();
                        String fieldName = fileItem.getName();

                        System.out.println("表单项的name属性值 = " + name);
                        System.out.println("上传的文件名 = " + fieldName);

                        // 将数据写到指定的位置
                        fileItem.write(new File("F:\\" + fileItem.getName()));
                    }
                }

            } catch ( Exception e ) {
                e.printStackTrace();
            }
        } else {
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
}
