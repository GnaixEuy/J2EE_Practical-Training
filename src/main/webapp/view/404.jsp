<%--
Created by IntelliJ IDEA.
User: GnaixEuy
Date: 2021/6/17
Time: 13:31
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>找不到资源</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="description" content="">
    <meta name="author" content="Xiaoying Riley at 3rd Wave Media">
    <link rel="shortcut icon" href="favicon.ico">

    <!-- FontAwesome JS-->
    <!-- App CSS -->
    <link id="theme-style" rel="stylesheet" href="${pageContext.request.contextPath}/view/portal.css">
    <!-- FontAwesome JS-->
    <script defer src="${pageContext.request.contextPath}/static/js/all.min.js"></script>

</head>

<body class="app app-404-page">

<div class="container mb-5">
    <div class="row">
        <div class="col-12 col-md-11 col-lg-7 col-xl-6 mx-auto">
            <div class="app-branding text-center mb-5">
                <a class="app-logo" href="${pageContext.request.contextPath}/index.jsp"><img class="logo-icon mr-2"
                                                                                             src="static/images/app-logo.svg"
                                                                                             alt="logo"><span
                        class="logo-text">PORTAL</span></a>

            </div><!--//app-branding-->
            <div class="app-card p-5 text-center shadow-sm">
                <h1 class="page-title mb-4">404<br><span class="font-weight-light">Page Not Found</span></h1>
                <div class="mb-4">
                    Sorry, we can't find the page you're looking for.
                </div>
                <a class="btn app-btn-primary" href="${pageContext.request.contextPath}/index.jsp">返回首页</a>
            </div>
        </div><!--//col-->
    </div><!--//row-->
</div><!--//container-->


<footer class="app-footer">
    <div class="container text-center py-3">
        <!--/* This template is free as long as you keep the footer attribution link. If you'd like to use the template without the attribution link, you can buy the commercial license via our website: themes.3rdwavemedia.com Thank you for your support. :) */-->
        <small class="copyright">Copyright &copy; 2021.Company name All rights reserved.<a target="_blank"
                                                                                           href="https://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></small>

    </div>
</footer><!--//app-footer-->

<!-- Javascript -->
<script src="assets/plugins/popper.min.js"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>


<!-- Charts JS -->
<script src="assets/plugins/chart.js/chart.min.js"></script>
<script src="assets/js/charts-custom.js"></script>

<!-- Page Specific JS -->
<script src="assets/js/app.js"></script>

</body>
</html> 

