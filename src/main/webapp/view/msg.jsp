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
    <c:if test="${'管理员信息不存在'.equals(requestScope.msg)}">
    alert('管理员信息不存在')
    window.location.href = "view/adminlogin.jsp"
    </c:if>
    <c:if test="${'用户信息不存在,请注册'.equals(requestScope.msg)}">
    alert('用户信息不存在,请注册')
    window.location.href = "view/UserLogin.jsp"
    </c:if>
    <c:if test="${'session未查询到用户信息'.equals(requestScope.msg)}">
    alert('session未查询到用户信息,请重新登入')
    window.location.href = "view/UserLogin.jsp"
    </c:if>


</script>
</body>
</html>
