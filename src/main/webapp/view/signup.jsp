<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
        <h2 class="auth-heading text-center mb-4">用户登录</h2>

<%--        文本框--%>
        <div class="auth-form-container text-left mx-auto">
          <form class="auth-form auth-signup-form">
            <div class="email mb-3">
              <label class="sr-only" for="signup-email">账号</label>
              <input id="signup-name" name="signup-name" type="text" class="form-control signup-name"
                     placeholder="请输入账号" required="required">
            </div>
            <div class="email mb-3">
              <label class="sr-only" for="signup-email">姓名</label>
              <input id="signup-email" name="signup-email" type="email" class="form-control signup-email"
                     placeholder="请输入姓名" required="required">
            </div>
            <div class="password mb-3">
              <label class="sr-only" for="signup-password">Password</label>
              <input id="signup-password" name="signup-password" type="password"
                     class="form-control signup-password" placeholder="请输入密码"
                     required="required">
            </div>
            <div class="password mb-3">
              <label class="sr-only" for="signup-phone">电话</label>
              <input id="signup-phone" name="signup-password" type="password"
                     class="form-control signup-password" placeholder="请输入电话"
                     required="required">
            </div>
<%--            <div class="extra mb-3">--%>
<%--              <div class="form-check">--%>
<%--                <input class="form-check-input" type="checkbox" value="" id="RememberPassword">--%>
<%--                <label class="form-check-label" for="RememberPassword">--%>
<%--                  I agree to Portal's <a href="#" class="app-link">Terms of Service</a> and <a--%>
<%--                        href="#" class="app-link">Privacy Policy</a>.--%>
<%--                </label>--%>
<%--              </div>--%>
            </div><!--//extra-->

            <div class="text-center">
              <button type="submit" class="btn app-btn-primary btn-block theme-btn mx-auto">注册
              </button>
            </div>
          </form><!--//auth-form-->

          <div class="auth-option text-center pt-5">已经有一个账户？ <a class="text-link"
                                                                                href="">登录</a>
<%--            后期加入登录页面的地址--%>
          </div>
        </div><!--//auth-form-container-->


      </div><!--//auth-body-->

      <footer class="app-auth-footer">
<%--        <div class="container text-center py-3">--%>
<%--          <!--/* This template is free as long as you keep the footer attribution link. If you'd like to use the template without the attribution link, you can buy the commercial license via our website: themes.3rdwavemedia.com Thank you for your support. :) */-->--%>
<%--&lt;%&ndash;          <small class="copyright">Copyright &copy; 2021.Company name All rights reserved.<a target="_blank"&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                                                             href="https://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></small>&ndash;%&gt;--%>

<%--        </div>--%>
<%--      </footer><!--//app-auth-footer-->--%>
<%--    </div><!--//flex-column-->--%>
<%--  </div><!--//auth-main-col-->--%>


<%--  <div class="col-12 col-md-5 col-lg-6 h-100 auth-background-col">--%>
<%--    <div class="auth-background-holder">--%>
<%--    </div>--%>
<%--    <div class="auth-background-mask"></div>--%>
<%--    <div class="auth-background-overlay p-3 p-lg-5">--%>
<%--      <div class="d-flex flex-column align-content-end h-100">--%>
<%--        <div class="h-100"></div>--%>
<%--        <div class="overlay-content p-3 p-lg-4 rounded">--%>
<%--          <h5 class="mb-3 overlay-title">Explore Portal Admin Template</h5>--%>
<%--          <div>Portal is a free Bootstrap 5 admin dashboard template. You can download and view the template--%>
<%--            license <a--%>
<%--                    href="https://themes.3rdwavemedia.com/bootstrap-templates/admin-dashboard/portal-free-bootstrap-admin-dashboard-template-for-developers/">here</a>.--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div><!--//auth-background-overlay-->--%>
<%--  </div><!--//auth-background-col-->--%>

</div><!--//row-->


</body>
</html>