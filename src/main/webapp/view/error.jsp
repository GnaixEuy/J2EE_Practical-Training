<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<%
    String msg = request.getParameter("msg");
    if ( "管理员信息不存在".equals(msg) ) {
%>
<script type="text/javascript">
    alert("${requestScope.msg}")
    window.location.href = "view/adminlogin.jsp"
</script>
<%
} else if ( "用户信息不存在".equals(msg) ) {
%>
<script type="text/javascript">
    alert("${requestScope.msg}")
    window.location.href = "view/UserLogin.jsp"
</script>
<%
} else {
%>
<script type="text/javascript">
    alert("错误处理")
    window.location.href = "index1.jsp"
</script>
<%
    }
%>
</body>
</html>
