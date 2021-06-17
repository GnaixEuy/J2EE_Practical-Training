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
    String msg = (String) request.getAttribute("msg");
    if ( msg.equals("管理员信息不存在") ) {
%>
<script type="text/javascript">
    alert("${requestScope.msg}")
    window.location.href = "login.html"
</script>
<%
    }
%>

</body>
</html>
