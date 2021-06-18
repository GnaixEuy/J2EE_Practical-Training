<%--
  Created by IntelliJ IDEA.
  User: GnaixEuy
  Date: 2021/6/17
  Time: 17:23
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>erro</title>
</head>
<body>
<c:choose>
    　　<c:when test="${\"管理员信息不存在\".equals(requestScope.msg)}">
    <script type="text/javascript">
        alert("${requestScope.msg}")
        window.location.href = "login.html"
    </script>
</c:when>

    　　<c:when test="${\"用户信息不存在\".equals(requestScope.msg)}">
    <script type="text/javascript">
        alert("${requestScope.msg}")
        window.location.href = "用户登入界面"
    </script>
</c:when>

    　　<c:otherwise>code..</c:otherwise>

</c:choose>
</body>
</html>
