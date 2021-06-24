package com.lite.controller.product; /**
 * @author GnaixEuy
 * @date 2021/6/23 10:26
 */

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
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "NewAddProductServlet", value = "/NewAddProductServlet.do")
public class NewAddProductServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if ( ServletFileUpload.isMultipartContent(request) ) {

            String productId = null;
            FileItem photo = null;
            String path = request.getRealPath("/upload");

            //创建 FileItemFactory 工厂实现类
            FileItemFactory fileItemFactory = new DiskFileItemFactory();
            // 2. 创建用于解析上传数据的工具类
            ServletFileUpload servletFileUpload = new ServletFileUpload(fileItemFactory);
            try {
                // 3. 解析 上传的数据，得到每一个表单项 FiltItem
                List<FileItem> list = servletFileUpload.parseRequest(request);
                //循环判断，每一个表单项，是普通类型，还是上传的文件
                ArrayList<String> materialsList = new ArrayList<>();
                for ( FileItem fileItem : list ) {
                    // 是普通表单项
                    if ( fileItem.isFormField() ) {
                        String fieldName = fileItem.getFieldName();
                        String value = fileItem.getString("UTF-8");
                        if ( "product_id".equals(fieldName) ) {
                            productId = value;
                        }
                        if ( "product_materials".equals(fieldName) ) {
                            materialsList.add(value);
                        } else {
                            request.setAttribute(fieldName, value);
                        }
                    } else {
                        //是上传的文件
                        String name = fileItem.getFieldName();
                        String fieldName = fileItem.getName();
                        photo = fileItem;
                        DiskFileItemFactory dfi = new DiskFileItemFactory();
                        //设置文件大小超过1024*1024就写到disk上
                        dfi.setSizeThreshold(1024 * 1024);
                        //设置存储的仓库
                        dfi.setRepository(new File(path));
                        // 将数据写到指定的位置
                    }
                }
                assert photo != null;
                request.setAttribute("product_materials", materialsList);
                photo.write(new File(path, productId + ".jpg"));
                request.getRequestDispatcher("/AddProductServlet.do").forward(request, response);
            } catch ( Exception e ) {
                e.printStackTrace();
            }
        }
    }
}
