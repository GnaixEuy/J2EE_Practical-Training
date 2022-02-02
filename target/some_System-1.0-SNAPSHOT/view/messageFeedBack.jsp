<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: GnaixEuy
  Date: 2021/6/24
  Time: 09:22
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.4.1/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div><span class="h3">用户反馈</span></div>
    <table width="500px" class="table table-hover">
        <tr>
            <th>ID</th>
            <th>内容</th>
            <th>日期</th>
        </tr>
        <c:forEach items="${requestScope.AppraisesList}" var="message" varStatus="i">
            <tr>
                <td>${message.apId}</td>
                <td>${message.apVal}</td>
                <td>${message.apDate}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
