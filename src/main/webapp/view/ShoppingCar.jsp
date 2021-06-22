<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: GnaixEuy
  Date: 2021/6/22
  Time: 11:58
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: GnaixEuy
  Date: 2021/6/22
  Time: 09:25
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.4.1/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <table width="200px" class="table table-hover">
        <tr>
            <th>#</th>
            <th>产品名称</th>
            <th>产品价格</th>
            <th>产品类型</th>
            <th>产品配料</th>
            <th></th>
        </tr>
        <c:forEach items="${sessionScope.carList}" var="selectProduct" varStatus="i">
            <tr>
                <td>${selectProduct.id}</td>
                <td>${selectProduct.productName}</td>
                <td>${selectProduct.productPrice}</td>
                <td>${selectProduct.productType}</td>
                <td>${selectProduct.productMaterialsList}</td>
                <td><a>删除</a></td>
            </tr>
        </c:forEach>
    </table>
    <p>
        <a href="#" class="btn btn-success center-block">
            结算账单
        </a>
    </p>
</div>
</body>
</html>

