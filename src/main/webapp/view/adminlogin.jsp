<%--
  Created by IntelliJ IDEA.
  User: GnaixEuy
  Date: 2021/6/19
  Time: 16:22
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title></title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="description" content="">
    <meta name="author" content="Xiaoying Riley at 3rd Wave Media">

    <!-- FontAwesome JS-->
    <script defer src="${pageContext.request.contextPath}/view/assets/plugins/fontawesome/js/all.min.js"></script>

    <!-- App CSS -->
    <link id="theme-style" rel="stylesheet" href="${pageContext.request.contextPath}/view/assets/css/portal.css">
</head>

<body class="app app-login p-0">
<div class="row g-0 app-auth-wrapper">
    <div class="col-12 col-md-7 col-lg-6 auth-main-col text-center p-5">
        <div class="d-flex flex-column align-content-end">
            <div class="app-auth-body mx-auto">
                <div class="app-auth-branding mb-4"><a class="app-logo" href="index.html"><img class="logo-icon mr-2"
                                                                                               src="${pageContext.request.contextPath}/view/assets/images/app-logo.svg"
                                                                                               alt="logo"></a></div>
                <h2 class="auth-heading text-center mb-5">进入后台</h2>
                <div class="auth-form-container text-left">
                    <form class="auth-form login-form" method="post"
                          action="${pageContext.request.contextPath}/AdminLoginVerificationServlet.do">
                        <div class="email mb-3">
                            <label class="sr-only" for="signin-email">账号</label>
                            <input id="signin-email" name="username" type="text" class="form-control signin-email"
                                   placeholder="管理员账号" required="required">
                        </div><!--//form-group-->
                        <div class="password mb-3">
                            <label class="sr-only" for="signin-password">密码</label>
                            <input id="signin-password" name="password" type="password"
                                   class="form-control signin-password" placeholder="Password" required="required">
                            <div class="extra mt-3 row justify-content-between">
                                <div class="col-6">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="RememberPassword">
                                        <label class="form-check-label" for="RememberPassword">
                                            Remember me
                                        </label>
                                    </div>
                                </div><!--//col-6-->
                                <div class="col-6">
                                    <div class="forgot-password text-right">
                                        <a href="http://blog.GnaixEuy.cn">升级系统(加钱)</a>
                                    </div>
                                </div><!--//col-6-->
                            </div><!--//extra-->
                        </div><!--//form-group-->
                        <div class="text-center">
                            <button type="submit" class="btn app-btn-primary btn-block theme-btn mx-auto">Log In
                            </button>
                        </div>
                    </form>

                </div><!--//auth-form-container-->

            </div><!--//auth-body-->

            <footer class="app-auth-footer">
                <div class="container text-center py-3">
                    <!--/* This template is free as long as you keep the footer attribution link. If you'd like to use the template without the attribution link, you can buy the commercial license via our website: themes.3rdwavemedia.com Thank you for your support. :) */-->
                    <small class="copyright">Copyright &copy; 2021.Company name All rights reserved.<a target="_blank"
                                                                                                       href="https://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></small>

                </div>
            </footer><!--//app-auth-footer-->
        </div><!--//flex-column-->
    </div><!--//auth-main-col-->
    <div class="col-12 col-md-5 col-lg-6 h-100 auth-background-col">
        <div class="auth-background-holder">
        </div>
        <div class="auth-background-mask"></div>
        <div class="auth-background-overlay p-3 p-lg-5">
            <div class="d-flex flex-column align-content-end h-100">
                <div class="h-100"></div>
                <div class="overlay-content p-3 p-lg-4 rounded">
                    <h5 class="mb-3 overlay-title">Explore Portal Admin Template</h5>
                    <div>Portal is a free Bootstrap 5 admin dashboard template. You can download and view the template
                        license <a
                                href="https://themes.3rdwavemedia.com/bootstrap-templates/admin-dashboard/portal-free-bootstrap-admin-dashboard-template-for-developers/">here</a>.
                    </div>
                </div>
            </div>
        </div><!--//auth-background-overlay-->
    </div><!--//auth-background-col-->

</div><!--//row-->
</body>
</html>

