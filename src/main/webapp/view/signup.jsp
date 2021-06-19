<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>用户登录</title>

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
                <h2 class="auth-heading text-center mb-4">用户注册</h2>

                <%--        文本框--%>
                <div class="auth-form-container text-left mx-auto">
                    <form class="auth-form auth-signup-form" method="post"
                          action="${pageContext.request.contextPath}/RegisterUserServlet.do">
                        <div class="email mb-3">
                            <label class="sr-only" for="signup-email">账号</label>
                            <input id="signup-name" name="id" type="text" class="form-control signup-name"
                                   placeholder="请输入账号" required="required">
                        </div>
                        <div class="email mb-3">
                            <label class="sr-only" for="signup-email">姓名</label>
                            <input id="signup-email" name="name" type="text" class="form-control signup-email"
                                   placeholder="请输入姓名" required="required">
                        </div>
                        <div class="password mb-3">
                            <label class="sr-only" for="signup-password">Password</label>
                            <input id="signup-password" name="password" type="password"
                                   class="form-control signup-password" placeholder="请输入密码"
                                   required="required">
                        </div>
                        <div class="password mb-3">
                            <label class="sr-only" for="signup-phone">电话</label>
                            <input id="signup-phone" name="telephone" type="password"
                                   class="form-control signup-password" placeholder="请输入电话"
                                   required="required">
                        </div>

                        <%--              </div>--%>
                </div><!--//extra-->

                <div class="text-center">
                    <button type="submit" class="btn app-btn-primary btn-block theme-btn mx-auto">注册
                    </button>
                </div>
                </form><!--//auth-form-->

                <div class="auth-option text-center pt-5">已经有一个账户？ <a class="text-link"
                                                                      href="Desktop/java/some_System/src/main/webapp/view/adminlogin.jsp">登录</a>
                    <%--            后期加入登录页面的地址--%>
                </div>
            </div><!--//auth-form-container-->


        </div><!--//auth-body-->


    </div>

</div>
</body>
</html>