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
                <div class="col-xl-4 col-lg-4 col-md-6">
                    <div class="contact-address-wrapper mb-30">
                        <div class="contact-address-title">
                            <h3>${material.materialName}</h3>
                        </div>
                        <ul class="contact-link">
                            <li>材料ID：${material.materialId}</li>
                            <li><a href="#" class="__cf_email__"
                                   data-cfemail="c4a2b1a0a1a184a1bca5a9b4a8a1eaa7aba9">进货（未完成）</a></li>
                            <li>库存余量：${material.materialStore}<br> 进货价格：${material.materialPrice}</li>
                        </ul>
                    </div>
                </div>
            </c:forEach>


        </div>
    </div>
</div>
<!--    contact-address-area end    -->

</body>
</html>
