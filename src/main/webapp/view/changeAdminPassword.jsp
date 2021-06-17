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
    <script src="${pageContext.request.contextPath}/static/JavaScript/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#changePassword").click(function () {
                    if ($("#passwordtext").val() == $("#passwordtext2").val()) {
                        alert("ok")
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
<div class="center-block content">
    <form method="post" action="${pageContext.request.contextPath}/AdminChangePasswordServlet.do" id="passwordform">
        <input class="form-control" id="passwordtext" type="text" placeholder="请输入新的密码">
        <input class="form-control" id="passwordtext2" type="text" placeholder="请重复输入密码">
        <button type="button" class="btn btn-success" id="changePassword">修改密码</button>
    </form>
</div>
</body>
</html>
