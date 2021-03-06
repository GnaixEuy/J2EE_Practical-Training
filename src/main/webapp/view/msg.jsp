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
    <c:if test="${'新增商品成功'.equals(requestScope.msg)}">
    alert('新增商品成功')
    window.location.href = "${pageContext.request.contextPath}/AllProductsServlet.do?type=all"
    </c:if>
    <c:if test="${'建议成功，希望你多读书多看报少吃零食多睡觉'.equals(requestScope.msg)}">
    alert('建议成功，希望你多读书多看报少吃零食多睡觉')
    window.location.href = "${pageContext.request.contextPath}/view/UserLogin.jsp"
    </c:if>
    <c:if test="${'删除商品成功'.equals(requestScope.msg)}">
    alert('删除商品成功')
    window.location.href = "${pageContext.request.contextPath}/AllProductsServlet.do?type=all"
    </c:if>
    <c:if test="${'下单成功'.equals(requestScope.msg)}">
    alert('下单成功')
    window.location.href = "${pageContext.request.contextPath}/QueryShoppingCarServlet.do"
    </c:if>
    <c:if test="${'余额不足，支付失败'.equals(requestScope.msg)}">
    alert('余额不足，支付失败')
    window.location.href = "${pageContext.request.contextPath}/QueryShoppingCarServlet.do"
    </c:if>
    <c:if test="${'修改会员信息成功'.equals(requestScope.msg)}">
    alert('修改会员信息成功')
    window.location.href = "${pageContext.request.contextPath}/AllUserServlet.do"
    </c:if>

    <c:if test="${'删除用户成功'.equals(requestScope.msg)}">
    alert('删除用户成功')
    window.location.href = "${pageContext.request.contextPath}/AllUserServlet.do"
    </c:if>
    <c:if test="${'原料增加成功'.equals(requestScope.msg)}">
    alert('原料增加成功')
    window.location.href = "${pageContext.request.contextPath}/QueryMaterialsInfoServlet.do"
    </c:if>
    <c:if test="${'下单失败，店内原料不足或你的余额不足'.equals(requestScope.msg)}">
    alert('下单失败，店内原料不足或你的余额不足')
    window.location.href = "${pageContext.request.contextPath}/view/ShoppingCar.jsp"
    </c:if>
</script>
</body>
</html>
