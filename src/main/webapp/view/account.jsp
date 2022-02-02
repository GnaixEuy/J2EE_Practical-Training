<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: GnaixEuy
  Date: 2021/6/18
  Time: 10:45
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户信息</title>
    <title>卡卡西奶茶店管理系统后台</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <link rel="shortcut icon" href="favicon.ico">

    <link id="theme-style" rel="stylesheet" href="${pageContext.request.contextPath}/view/assets/css/portal.css">

    <%--    <script defer src="${pageContext.request.contextPath}/static/js/all.min.js"></script>--%>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/5.0.1/js/bootstrap.min.js"></script>

    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body>
<div class="app-content pt-3 p-md-3 p-lg-4 ">
    <div class="container-xl">
        <h1 class="app-page-title">会员信息</h1>
        <div class="row gy-4">
            <c:forEach items="${list}" var="user" varStatus="status">
                <div class="col-6 col-lg-6" style="position: relative;">
                    <div class="app-card app-card-account shadow-sm d-flex flex-column align-items-start">
                        <div class="app-card-header p-3 border-bottom-1">
                            <div class="row align-items-center gx-3">
                                <div class="col-auto">
                                    <div class="app-icon-holder">
                                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-person"
                                             fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd"
                                                  d="M10 5a2 2 0 1 1-4 0 2 2 0 0 1 4 0zM8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm6 5c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
                                        </svg>
                                    </div><!--//icon-holder-->
                                </div><!--//col-->
                                <div class="col-auto">
                                    <h4 class="app-card-title">${user.userId}</h4>
                                </div><!--//col-->
                            </div><!--//row-->
                        </div><!--//app-card-header-->
                        <div class="app-card-body px-4 w-100">
                            <div class="item border-bottom py-3">
                                <div class="row justify-content-between align-items-center">
                                    <div class="col-auto">
                                        <div class="item-label mb-2"><strong>Photo</strong></div>
                                        <div class="item-data"><img class="profile-image"
                                                                    src="view/assets/images/user.png"
                                                                    alt="">
                                        </div>
                                    </div><!--//col-->
                                    <div class="col text-right">
                                        <a class="btn-sm app-btn-secondary" href="#">Change</a>
                                    </div><!--//col-->
                                </div><!--//row-->
                            </div><!--//item-->
                            <div class="item border-bottom py-3">
                                <div class="row justify-content-between align-items-center">
                                    <div class="col-auto">
                                        <div class="item-label"><strong>Name</strong></div>
                                        <div class="item-data">${user.userName}</div>
                                    </div><!--//col-->
                                        <%--                                    <div class="col text-right">--%>
                                        <%--                                        <a class="btn-sm app-btn-secondary" href="${pageContext.request.contextPath}/UpdateUserInfoServlet.do?id=${user.userId}">Change</a>--%>
                                        <%--                                    </div><!--//col-->--%>
                                </div><!--//row-->
                            </div><!--//item-->
                            <div class="item border-bottom py-3">
                                <div class="row justify-content-between align-items-center">
                                    <div class="col-auto">
                                        <div class="item-label"><strong>密码</strong></div>
                                        <div class="item-data">${user.userPassword}</div>
                                    </div><!--//col-->
                                        <%--                                    <div class="col text-right">--%>
                                        <%--                                        <a class="btn-sm app-btn-secondary" href="${pageContext.request.contextPath}/UpdateUserInfoServlet.do?id=${user.userId}">Change</a>--%>
                                        <%--                                    </div><!--//col-->--%>
                                </div><!--//row-->
                            </div><!--//item-->
                            <div class="item border-bottom py-3">
                                <div class="row justify-content-between align-items-center">
                                    <div class="col-auto">
                                        <div class="item-label"><strong>手机号码</strong></div>
                                        <div class="item-data">
                                                ${user.userPhone}
                                        </div>
                                    </div><!--//col-->
                                        <%--                                    <div class="col text-right">--%>
                                        <%--                                        <a class="btn-sm app-btn-secondary" href="${pageContext.request.contextPath}/UpdateUserInfoServlet.do?id=${user.userId}">Change</a>--%>
                                        <%--                                    </div><!--//col-->--%>
                                </div><!--//row-->
                            </div><!--//item-->
                            <div class="item border-bottom py-3">
                                <div class="row justify-content-between align-items-center">
                                    <div class="col-auto">
                                        <div class="item-label"><strong>用户积分</strong></div>
                                        <div class="item-data">
                                                ${user.userBalance}
                                        </div>
                                    </div><!--//col-->
                                        <%--                                    <div class="col text-right">--%>
                                        <%--                                        <a class="btn-sm app-btn-secondary" href="${pageContext.request.contextPath}/UpdateUserInfoServlet.do?id=${user.userId}">Change</a>--%>
                                        <%--                                    </div><!--//col-->--%>
                                </div><!--//row-->
                            </div><!--//item-->
                        </div><!--//app-card-body-->
                        <div class="app-card-footer p-4 ">
                            <a class="btn app-btn-secondary"
                               data-toggle="modal" data-target="#myModal"
                               href="${pageContext.request.contextPath}/DeleteUserServlet.do?deleteId=${user.userId}">删除用户</a>
                            <a class="btn app-btn-secondary"
                               href="${pageContext.request.contextPath}/UpdateUserInfoServlet.do?id=${user.userId}"
                               style="margin-left: 40px">修改信息</a>
                        </div><!--//app-card-footer-->
                    </div><!--//app-card-->
                </div>
                <!--//col-->
            </c:forEach>
        </div>
    </div>
</div>
</body>
</html>
<script type="text/javascript">
    /* 鼠标特效 */
    var a_idx = 0;
    $("body").click(function (e) {
        var a = new Array("欢迎光临", "GnaixEuy", "Utah", "元芳，你怎么看？", "针不戳 ", "什么是快乐星球 ",  "祖安人", "达咩",  "小丑竟是我自己");
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



