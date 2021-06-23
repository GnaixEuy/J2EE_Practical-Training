<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: GnaixEuy
  Date: 2021/6/23
  Time: 12:15
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>消息提示</title>
</head>
<body>
<script>
    <c:if test="${'取消订单成功'.equals(requestScope.msg)}">
    alert('取消成功')
    window.location.href = "view/UserIndex.jsp"
    </c:if>
</script>
</body>
</html>
