<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>新增商品</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="description" content="">
    <meta name="author" content="Xiaoying Riley at 3rd Wave Media">
    <link rel="shortcut icon" href="favicon.ico">

    <!-- FontAwesome JS-->
    <script defer src="${pageContext.request.contextPath}/view/assets/plugins/fontawesome/js/all.min.js"></script>

    <!-- App CSS -->
    <link id="theme-style" rel="stylesheet" href="${pageContext.request.contextPath}/view/assets/css/portal.css">
    <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css" rel="stylesheet">
</head>
<%
    long date = Long.parseLong(new SimpleDateFormat("yyyyMMddHHmmss").format(new Date().getTime()));
    request.setAttribute("date", date);
%>
<body class="app app-signup p-0">
<div class="row g-0 app-auth-wrapper">
    <div class="m-12 md-7 g-6 auth-main text-center p-5">
        <div class="d-flex flex-column align-content-end site">
            <div class="app-auth-body mx-auto">
                <form class="auth-form auth-signup-form" method="post"
                      action="${pageContext.request.contextPath}/NewAddProductServlet.do"
                      enctype="multipart/form-data"
                >
                    <div class="app-auth-branding mb-4">
                        <a class="app-logo">
                            <label for="photoFile">
                                <img class="logo-icon mr-2"
                                     src="${pageContext.request.contextPath}/view/assets/images/app-logo.svg"
                                     alt="logo">
                            </label>
                            <input type="file" class="img-circle" id="photoFile" name="productphoto" hidden>
                        </a>
                    </div>
                    <h2 class="auth-heading text-center mb-4">新增商品</h2>
                    <div class="email mb-3">
                        <label class="sr-only" for="product_id">商品id</label>
                        <input id="product_id" name="product_id" type="text" class="form-control signup-name"
                               value="${sessionScope.adminName}${date}"
                               placeholder="商品编号:${sessionScope.adminName}${date}"
                               readonly
                               required="required">
                    </div>
                    <div class="email mb-3">
                        <label class="sr-only" for="product_name">商品名称</label>
                        <input id="product_name" name="product_name" type="text" class="form-control signup-email"
                               placeholder="商品名称" required="required">
                    </div>
                    <div class="password mb-3">
                        <label class="sr-only" for="product_price">商品价格</label>
                        <input id="product_price" name="product_price" type="text"
                               class="form-control signup-password" placeholder="请输入单价"
                               required="required">
                    </div>

                    <div class="password mb-3">
                        <label class="sr-only" for="product_store">数量</label>
                        <input id="product_store" name="product_store" type="text"
                               class="form-control signup-password" placeholder="请输入商品数量"
                               required="required">
                    </div>
                    <div class="password mb-3">
                        <select class="form-control" name="product_type">
                            <option selected hidden disabled value="默认">请选择产品种类</option>
                            <c:forEach items="${requestScope.allProductTypeList}" var="selecttype"
                                       varStatus="i">
                                <option value="${selecttype}">
                                        ${selecttype}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="password mb-3">
                        <c:forEach items="${requestScope.materialsList}" var="material" varStatus="i">
                            <label class="checkbox-inline">
                                <input type="checkbox" id="inlineCheckbox" name="product_materials"
                                       value="${material.materialName}">
                                    ${material.materialName}
                            </label>
                        </c:forEach>
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn app-btn-primary btn-block theme-btn mx-auto">
                            添加
                        </button>
                    </div>
                </form><!--//auth-form-->
            </div><!--//auth-form-container-->
        </div><!--//auth-body-->


    </div>

</div>
</body>
</html>