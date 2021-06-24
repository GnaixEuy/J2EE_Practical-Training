<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: GnaixEuy
  Date: 2021/6/21
  Time: 09:08
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Place favicon.ico in the root directory -->
    <link rel="shortcut icon" type="image/x-icon"
          href="${pageContext.request.contextPath}/view/assets/img/logo/favicon.png">

    <!-- All CSS -->
    <link rel="stylesheet" href="view/assets/css/animate.css">
    <link rel="stylesheet" href="view/assets/css/fontawesome.min.css">
    <link rel="stylesheet" href="view/assets/icon-fonts/flaticon.css">
    <link rel="stylesheet" href="view/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="view/assets/css/slick.css">
    <link rel="stylesheet" href="view/assets/css/spacing.css">
    <link rel="stylesheet" href="view/assets/css/magnific-popup.css">
    <link rel="stylesheet" href="view/assets/css/metisMenu.css">
    <link rel="stylesheet" href="view/assets/css/main.css">

    <title>所有原料</title>

    <script type="text/javascript">
        // var id = null;

        function GetValue() {
            var num =
            ${'Number'}.
            value();
            // id = document.getElementById("Id").toString();
            alert(num);

            $.ajax({
                url: "QueryMaterialsInfoServlet.do",
                type: "post",
                //传递单个数据
                Num: num,

                success: function (data) {
                    console.log(num)
                },
                error: function (xhr, errorMessage, e) {
                    alert("系统异常！！");
                }
            });

        }
    </script>
</head>
<body>

<!--    breadcrumb-area start    -->
<section class="breadcrumb-area pt-180 pb-180 pt-md-120 pb-md-120 pt-xs-100 pb-xs-100 bg-fix" data-overlay="dark"
         data-opacity="7"
         style="background-image: url(${pageContext.request.contextPath}/view/assets/img/bg/breadcrumb-bg.jpg)">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 text-center">
                <div class="breadcrumb-content">
                    <h3 class="title">Contact Us</h3>
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li class="active">Contact Us</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!--    breadcrumb-area end    -->


<!--    contact-address-area start    -->
<div class="contact-address-area pt-130 pb-100">
    <div class="container">
        <div class="row">
            <c:forEach items="${requestScope.materialsList}" var="material" varStatus="i">
                <%--                <input type="hidden" id="Mid" value="${material.materialId}" />--%>
                <c:if test="${material.materialStore == 0}"><div class="col-xl-4 col-lg-4 col-md-6" >
                    <div class="contact-address-wrapper mb-30" style="background: rgba(255,77,77,60%)">
                        <div class="contact-address-title">
                            <h3>${material.materialName}</h3>
                        </div>
                        <ul class="contact-link">
                            <li>材料ID：${material.materialId}</li>
                            <li>

                                    <%--                                <input type="submit" style="width: 100px" min="0" value="0" id="${material.materialId}"/>--%>
                                    <%--&lt;%&ndash;                                <input type="submit" onclick="sub();" value="添加" name="sub">&ndash;%&gt;--%>
                                    <%--                                                                    <a href="${pageContext.request.contextPath}/QueryMaterialsInfoServlet.do?id=${material.materialId}" onclick="sub();">添加</a>--%>
                                <form method="post" action="${pageContext.request.contextPath}/AddMaterialsServlet.do">
                                    <input type="hidden" id="id" name="id" value="${material.materialId}">
                                    <input type="hidden" id="name" name="name" value="${material.materialName}">
                                    <input type="hidden" id="price" name="price" value="${material.materialPrice}">
                                    <input type="hidden" id="store" name="store" value="${material.materialStore}">

                                    <input type="text" style="width: 100px" id="Num" name="Num" value="" oninput="inputNumber(this)">
                                        <%--                                    <a type="submit" href="${pageContext.request.contextPath}/AddMaterialsServlet.do?id=${material.materialId}&name=${material.materialName}&price=${material.materialPrice}&store=${material.materialStore}">添加</a>--%>
                                    <button type="submit">添加</button>
                                </form>
                            </li>
                            <li>库存余量：${material.materialStore}<br> 进货价格：${material.materialPrice}</li>
                        </ul>
                    </div>
                </div>
                </c:if>
                <c:if test="${material.materialStore != 0}"><div class="col-xl-4 col-lg-4 col-md-6">
                    <div class="contact-address-wrapper mb-30">
                        <div class="contact-address-title">
                            <h3>${material.materialName}</h3>
                        </div>
                        <ul class="contact-link">
                            <li>材料ID：${material.materialId}</li>
                            <li>

                                    <%--                                <input type="submit" style="width: 100px" min="0" value="0" id="${material.materialId}"/>--%>
                                    <%--&lt;%&ndash;                                <input type="submit" onclick="sub();" value="添加" name="sub">&ndash;%&gt;--%>
                                    <%--                                                                    <a href="${pageContext.request.contextPath}/QueryMaterialsInfoServlet.do?id=${material.materialId}" onclick="sub();">添加</a>--%>
                                <form method="post" action="${pageContext.request.contextPath}/AddMaterialsServlet.do">
                                    <input type="hidden" id="id" name="id" value="${material.materialId}">
                                    <input type="hidden" id="name" name="name" value="${material.materialName}">
                                    <input type="hidden" id="price" name="price" value="${material.materialPrice}">
                                    <input type="hidden" id="store" name="store" value="${material.materialStore}">

                                    <input type="text" style="width: 100px" id="Num" name="Num" value="" oninput="inputNumber(this)">
                                        <%--                                    <a type="submit" href="${pageContext.request.contextPath}/AddMaterialsServlet.do?id=${material.materialId}&name=${material.materialName}&price=${material.materialPrice}&store=${material.materialStore}">添加</a>--%>
                                    <button type="submit">添加</button>
                                </form>
                            </li>
                            <li>库存余量：${material.materialStore}<br> 进货价格：${material.materialPrice}</li>
                        </ul>
                    </div>
                </div></c:if>
            </c:forEach>


        </div>
    </div>
</div>
<!--    contact-address-area end    -->
<script>
    function inputNumber(e) {
        e.value = e.value.replace(/[^0-9]/g,"")  // 不可输入数字和小数点以外的
    }
</script>


<%--</script>--%>
</body>
</html>
