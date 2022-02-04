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

    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<div class="container">

    <table width="200px" class="table table-hover">
        <tr>
<%--            <th>#</th>--%>
            <th>产品名称</th>
            <th>产品价格</th>
            <th>产品类型</th>
            <%--            <th>产品配料</th>--%>
            <th></th>
        </tr>
        <c:forEach items="${sessionScope.carList}" var="selectProduct" varStatus="i">
            <tr>
                    <%--                <td>${selectProduct.id}</td>--%>
                <td>${selectProduct.productName}</td>
                <td>${selectProduct.productPrice}</td>
                <td>${selectProduct.productType}</td>
                    <%--                <td>${selectProduct.productMaterialsList}</td>--%>
                <td>
                    <a href="${pageContext.request.contextPath}/DeleteProductFromShopCarServlet.do?deleteId=${selectProduct.id}">删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <p>
        <a href="${pageContext.request.contextPath}/MakeOrderServlet.do" class="btn btn-success center-block">
            结算账单
        </a>
    </p>
</div>
</body>
</html>
<script type="text/javascript">
    /* 鼠标特效 */
    var a_idx = 0;
    $("body").click(function (e) {
        var a = ["欢迎光临", "GnaixEuy", "Utah", "元芳，你怎么看？", "针不戳 ", "什么是快乐星球 ",  "祖安人", "达咩",  "小丑竟是我自己"];
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

