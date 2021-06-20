<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
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
    <script defer src="${pageContext.request.contextPath}/static/js/all.min.js"></script>

    <!-- App CSS -->
    <link id="theme-style" rel="stylesheet" href="${pageContext.request.contextPath}/view/portal.css">


</head>

<body class="app app-signup p-0">
<div class="row g-0 app-auth-wrapper">
    <div class="m-12 md-7 g-6 auth-main text-center p-5">
        <div class="d-flex flex-column align-content-end site">
            <div class="app-auth-body mx-auto">
                <div class="app-auth-branding mb-4"><a class="app-logo"><img class="logo-icon mr-2"
                                                                             src="${pageContext.request.contextPath}/static/images/app-logo.svg"
                                                                             alt="logo"></a></div>
                <h2 class="auth-heading text-center mb-4">新增商品</h2>

                <h1>未完成请不要使用</h1>
                <form class="auth-form auth-signup-form" method="post"
                      action="${pageContext.request.contextPath}/RegisterUserServlet.do">
                    <div class="email mb-3">
                        <label class="sr-only" for="productid">商品id</label>
                        <input id="productid" name="id" type="text" class="form-control signup-name"
                               placeholder="商品编号" required="required">
                    </div>
                    <div class="email mb-3">
                        <label class="sr-only" for="productname">商品名称</label>
                        <input id="productname" name="name" type="text" class="form-control signup-email"
                               placeholder="商品名称" required="required">
                    </div>
                    <div class="password mb-3">
                        <label class="sr-only" for="productprice">商品价格</label>
                        <input id="productprice" name="price" type="text"
                               class="form-control signup-password" placeholder="请输入单价"
                               required="required">
                    </div>
                    <div class="password mb-3">
                        <label class="sr-only" for="producttype">种类</label>
                        <input id="producttype" name="telephone" type="password"
                               class="form-control signup-password" placeholder="请输入商品种类"
                               required="required">
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn app-btn-primary btn-block theme-btn mx-auto">
                            添加
                        </button>
                    </div>
                </form><!--//auth-form-->

                <div class="auth-option text-center pt-5">已经有一个账户？ <a class="text-link"
                                                                      href="${pageContext.request.contextPath}/view/adminlogin.jsp">登录</a>
                    <%--            后期加入登录页面的地址--%>
                </div>
            </div><!--//auth-form-container-->


        </div><!--//auth-body-->


    </div>

</div>
</body>
</html>