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
    <title>联系</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="shortcut icon" href="favicon.ico">

    <!-- FontAwesome JS-->
    <!-- App CSS -->
    <link id="theme-style" rel="stylesheet" href="${pageContext.request.contextPath}/view/assets/css/portal.css">
    <!-- FontAwesome JS-->
    <script defer src="${pageContext.request.contextPath}/view/assets/js/all.min.js"></script>


    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>

<body class="app app-404-page">

<div class="container mb-5">
    <div class="row">
        <div class="col-12 col-md-11 col-lg-7 col-xl-6 mx-auto">
            <div class="app-branding text-center mb-5">
                <a class="app-logo" href="${pageContext.request.contextPath}/index.jsp">
                    <img class="logo-icon mr-2"
                         src="${pageContext.request.contextPath}/view/assets/images/app-logo.svg"
                         alt="logo"><span
                        class="logo-text">咔咔西</span></a>

            </div><!--//app-branding-->
            <div class="app-card p-5 text-center shadow-sm">
                <h1 class="page-title mb-4">联系方式<br>
                    <span class="font-weight-light"></br>
                    <h4>侍云鹏：2693319057</h4>
                    <h4>苏粤翔：1259409073</h4>
                    <h4>王鹏伟：1423328589</h4>
                    <h4>徐宇杰：1195435623</h4>
                </span></h1>
<%--                <div class="mb-4">--%>
<%--                    Sorry, we can't find the page you're looking for.--%>
<%--                </div>--%>
                <a class="btn app-btn-primary" href="${pageContext.request.contextPath}/index.jsp">返回首页</a>
            </div>
        </div><!--//col-->
    </div><!--//row-->
</div><!--//container-->


<footer class="app-footer">
    <div class="container text-center py-3">
        <!--/* This template is free as long as you keep the footer attribution link. If you'd like to use the template without the attribution link, you can buy the commercial license via our website: themes.3rdwavemedia.com Thank you for your support. :) */-->
        <small class="copyright">
            <a target="_blank"
               href="http://blog.GnaixEuy.cn">加钱升级</a></small>

    </div>
</footer><!--//app-footer-->

<!-- Javascript -->
<script src="view/assets/plugins/popper.min.js"></script>
<script src="view/assets/plugins/bootstrap/js/bootstrap.min.js"></script>


<!-- Charts JS -->
<script src="${pageContext.request.contextPath}/view/assets/plugins/chart.js/chart.min.js"></script>
<script src="${pageContext.request.contextPath}/view/assets/js/charts-custom.js"></script>

<!-- Page Specific JS -->
<script src="view/assets/js/app.js"></script>

</body>
</html>
<script type="text/javascript">
    /* 鼠标特效 */
    var a_idx = 0;
    $("body").click(function (e) {
        var a = ["欢迎光临", "GnaixEuy", "Utah", "元芳，你怎么看？", "针不戳 ", "什么是快乐星球 ",  "祖安人", "达咩",  "小丑竟是我自己"];
        var $i = $("<span />").text(a[a_idx]);
        a_idx = (a_idx + 1) % a.length;
        var x = e.pageX,
            y = e.pageY;
        $i.css({
            "z-index": 999999999999999999999999999999999999999999999999999999999999999999999,
            "top": y - 20,
            "left": x,
            "z_index": 100,
            "position": "absolute",
            "font-weight": "bold",
            "color": "#38b848"
        });
        $("body").append($i);
        $i.animate({
                "top": y - 180,
                "opacity": 0
            },
            1500,
            function () {
                $i.remove();
            });
    });
</script>

