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


    <script src="${pageContext.request.contextPath}/view/assets/js/jquery-3.4.1.min.js"></script>
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
} else if ( "支付失败，余额不足".equals(msg) ) {
%>
<script type="text/javascript">
    alert("余额不足，支付失败")
    window.location.href = "view/ShoppingCar.jsp"
</script>
<%
%>
<script type="text/javascript">
    alert("错误处理")
    window.location.href = "index.jsp"
</script>
<%
    }
%>
</body>
</html>
<script type="text/javascript">
    /* 鼠标特效 */
    var a_idx = 0;
    $("body").click(function (e) {
        var a = new Array("欢迎光临", "GnaixEuy", "Utah", "元芳，你怎么看？", "针不戳 ", "什么是快乐星球 ",  "祖安人", "达咩",  "小丑竟是我自己");
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
