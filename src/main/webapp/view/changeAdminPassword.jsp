<%--
  Created by IntelliJ IDEA.
  User: GnaixEuy
  Date: 2021/6/17
  Time: 16:09
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员密码修改</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/view/assets/css/portal.css"/>
    <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.4.1/css/bootstrap.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#changePassword").click(function () {
                    if ($("#passwordtext").val() === $("#passwordtext2").val()) {
                        $("#passwordform").submit();
                    } else {
                        alert("两次密码不一致")
                        $("#passwordtext2").val("")
                    }
                }
            )
        });
    </script>
</head>
<body>

<div class="row g-0 app-auth-wrapper">
    <div class="col-12 col-md-7 col-lg-6 auth-main-col text-center p-5">
        <div class="d-flex flex-column align-content-end">
            <div class="app-auth-body mx-auto">
                <div class="app-auth-branding mb-4"><a class="app-logo" href="index.html">
                    <img class="logo-icon mr-2"
                         src="http://blog.GnaixEuy.cn/wp-content/uploads/2021/06/DAD20A172A1B097D1A9DE3E5D72D47E3.jpg"
                         alt="logo"></a></div>
                <h2 class="auth-heading text-center mb-4">Password Reset</h2>

                <div class="auth-intro mb-4 text-center">Enter your email address below. We'll email you a link to a
                    page where you can easily create a new password.
                </div>

                <div class="auth-form-container text-left">

                    <form class="auth-form resetpass-form" method="post"
                          action="${pageContext.request.contextPath}/AdminChangePasswordServlet.do">
                        <div class="email mb-3">
                            <label class="sr-only" for="passwordtext">更改密码</label>
                            <input id="passwordtext" name="passwordtext" type="text" class="form-control login-email"
                                   placeholder="新密码" required="required">
                        </div><!--//form-group-->

                        <div class="email mb-3">
                            <label class="sr-only" for="passwordtext2">确认密码</label>
                            <input id="passwordtext2" name="passwordtext2" type="text" class="form-control login-email"
                                   placeholder="确认密码" required="required">
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn app-btn-primary btn-block theme-btn mx-auto">Reset
                                Password
                            </button>
                        </div>
                    </form>

                    <div class="auth-option text-center pt-5"><a class="app-link"
                                                                 href="${pageContext.request.contextPath}/view/UserLogin.jsp">Log
                        in</a> <span
                            class="px-2">|</span> <a class="app-link"
                                                     href="${pageContext.request.contextPath}/view/signup.jsp">Sign
                        up</a></div>
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
