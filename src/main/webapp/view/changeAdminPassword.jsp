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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.css"/>
    <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.4.1/css/bootstrap.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#changePassword").click(function () {
                if ($("#passwordtext").val() == $("#passwordtext2").val()) {
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
<body >
<div class="center-block content">
    <form method="post" action="${pageContext.request.contextPath}/AdminChangePasswordServlet.do" id="passwordform">
        <div class="row g-0 app-auth-wrapper">
            <div class="col-12 col-md-7 col-lg-6 auth-main-col text-center p-5">
                <div class="d-flex flex-column align-content-end">
                    <div class="app-auth-body mx-auto">
                        <div class="app-auth-branding mb-4"><a class="app-logo" href="index.html"><img class="logo-icon mr-2" src="http://blog.GnaixEuy.cn/wp-content/uploads/2021/06/DAD20A172A1B097D1A9DE3E5D72D47E3.jpg" alt="logo" style="width: 300px"></a></div>
                        <h2 class="auth-heading text-center mb-4"></h2>


                        <div class="auth-form-container text-left"  >

                            <form class="auth-form resetpass-form">
                                <div class="email mb-3" style="text-align: center">
                                    <input class="form-control" name="passwordtext" id="passwordtext" type="text" placeholder="请输入新的密码" style="position: relative;left: 30%;top: 40%">
                                    <input class="form-control" id="passwordtext2" type="text" placeholder="请重复输入密码" style="position: relative;left: 30%;top: 60%">
                                </div>
                                <div class="text-center">
                                    <button type="button" class="btn btn-success" id="changePassword" >修改密码</button>
                                </div>
                            </form>

<%--                            <div class="auth-option text-center pt-5"><a class="app-link" href="userlogin.html" >Log in</a> <span class="px-2">|</span> <a class="app-link" href="userlogin.html" >Sign up</a></div>--%>
                        </div>
                    </div>
                    <footer class="app-auth-footer">
                    </footer>
                </div>
            </div>
            <div class="col-12 col-md-5 col-lg-6 h-100 auth-background-col" >
                <div class="auth-background-holder">
                </div>
                <img src="http://blog.GnaixEuy.cn/wp-content/uploads/2021/06/background-3.jpg" style="width: 1357px" ><img>
                <div class="auth-background-mask"></div>
                <div class="auth-background-overlay p-3 p-lg-5">
                    <div class="d-flex flex-column align-content-end h-100">
                        <div class="h-100"></div>
                        <div class="overlay-content p-3 p-lg-4 rounded">
                            <h5 class="mb-3 overlay-title"></h5>
                            <div> <a href="https://themes.3rdwavemedia.com/bootstrap-templates/admin-dashboard/portal-free-bootstrap-admin-dashboard-template-for-developers/"></a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
<style>
    .form-control{
        height: 40px;
        width: 300px;
        margin: 0;
    }
</style>
</body>
</html>
