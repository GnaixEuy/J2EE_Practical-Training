<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: GnaixEuy
  Date: 2021/6/22
  Time: 09:42
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Place favicon.ico in the root directory -->
    <link rel="shortcut icon" type="image/x-icon"
          href="${pageContext.request.contextPath}/view/assets/img/logo/favicon.png">

    <!-- All CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/assets/css/animate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/assets/css/fontawesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/assets/icon-fonts/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/assets/css/slick.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/assets/css/spacing.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/assets/css/magnific-popup.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/assets/css/metisMenu.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/assets/css/main.css">

    <script>
        window.onload = function () {
            $("#key").click(function () {
                $("#openMenu").click()
            })
        }
    </script>
    <title>欢迎选购</title>
</head>

<body>
<!--    slide-bar Start   -->
<aside class="slide-bar">
    <%--    <div class="close-mobile-menu">--%>
    <%--        <a href="javascript:void(0);"><i class="fas fa-times"></i></a>--%>
    <%--    </div>--%>
    <!--    Mobile Menu Start   -->
    <nav class="side-mobile-menu">
        <ul id="mobile-menu-active">
            <li class="has-dropdown">
                <a href="#">Home</a>
                <ul class="sub-menu">
                    <li><a href="index.html">Home 1</a></li>
                    <li><a href="index-2.html">Home 2</a></li>
                </ul>
            </li>
            <li><a href="about.html">About</a></li>
            <li class="has-dropdown">
                <a href="service.html">Services</a>
                <ul class="sub-menu">
                    <li><a href="service.html">Services</a></li>
                    <li><a href="service-details.html">Services Details</a></li>
                </ul>
            </li>
            <li class="has-dropdown">
                <a href="blog.html">Blog</a>
                <ul class="sub-menu">
                    <li><a href="blog.html">Blog Standard</a></li>
                    <li><a href="blog-grid.html">Blog Grid</a></li>
                    <li><a href="blog-details.html">Blog Details</a></li>
                </ul>
            </li>
            <li class="has-dropdown">
                <a href="#">Pages</a>
                <ul class="sub-menu">
                    <li><a href="team.html">Team</a></li>
                    <li><a href="shop.html">Shop</a></li>
                    <li><a href="gallery.html">Gallery</a></li>
                    <li><a href="gallery-details.html">Gallery Details</a></li>
                </ul>
            </li>
            <li><a href="contact.html">Contact</a></li>
        </ul>
    </nav>
    <!--    Mobile Menu End    -->

    <!--    Offset Sidebar Start   -->
    <div class="sidebar-widget-wrapper">
        <!-- start side widget -->
        <div class="sidebar-widget logo-side">
            <a href="index.html">
                <img src="${pageContext.request.contextPath}/view/assets/img/logo/bg.png" alt="logo">
            </a>
        </div>
        <!-- end side widget -->

        <!-- start side widget -->
        <div class="sidebar-widget" style="height: auto">
            <div class="info-wdget" style="height: 550px">
                <h4 class="widget-title">购物清单</h4>
                <iframe frameborder="0" style="height: 100%; width: 100%" name="shopcarframe">
                </iframe>
            </div>
        </div>
        <!-- end side widget -->

        <!-- start side widget -->
        <div class="sidebar-widget" style="top: auto">
            <div class="social-widget">
                <a href="#">
                    <i class="fab fa-facebook-f"></i>
                </a>
                <a href="#">
                    <i class="fab fa-twitter"></i>
                </a>
                <a href="#">
                    <i class="fab fa-google-plus-g"></i>
                </a>
                <a href="#">
                    <i class="fab fa-instagram"></i>
                </a>
            </div>
        </div>
        <!-- end side widget -->
    </div>
    <!--    Offset Sidebar End    -->
</aside>
<div class="body-overlay"></div>
<!--    slide-bar End    -->

<!--    main-area start    -->
<main>
    <!--    breadcrumb-area start    -->
    <section class="breadcrumb-area pt-180 pb-180 pt-md-120 pb-md-120 pt-xs-100 pb-xs-100 bg-fix" data-overlay="dark"
             data-opacity="7"
             style="background-image: url(${pageContext.request.contextPath}/view/assets/img/bg/breadcrumb-bg.jpg)">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8 text-center">
                    <div class="breadcrumb-content">
                        <h3 class="title">Shop</h3>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
                            <li class="active">Shop</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--    breadcrumb-area end    -->

    <!--    product-area start    -->
    <div class="product-area pt-130 pb-130">
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-5 col-md-6 col-sm-7">
                    <div class="product-showing">
                        <p style="display: inline;">
                            欢迎你：
                            <span style="color: rgba(142,194,86,70); ">
                                ${sessionScope.user.userName}
                            </span>
                            (<span style="color: rgba(142,194,86,70); ">
                            ${sessionScope.user.userId}
                        </span>)
                        </p>
                        <p style="display: inline;">本店产品共<span style="color: rgba(142,194,86,70); font-size: large">
                            ${applicationScope.productnum}
                        </span>件</p>
                    </div>
                    <div class="open-mobile-menu" hidden>
                        <a id="openMenu"></a>
                    </div>

                    <a href="${pageContext.request.contextPath}/view/ShoppingCar.jsp" class="a-btn"
                       target="shopcarframe" id="key">
                        购物车
                        <i class="fas fa-plus"></i>
                    </a>
                </div>
                <%--                <div class="col-xl-6 col-md-6 col-sm-5">--%>
                <%--                    <div class="pro-filter mb-40 ">--%>
                <%--                        <form action="#">--%>
                <%--                            <select name="pro-filter" id="pro-filter"--%>
                <%--                                    onchange="window.location=this.value;">--%>
                <%--                                <option selected>所有</option>--%>
                <%--                                <c:forEach items="${applicationScope.allProductType}" var="type" varStatus="t">--%>
                <%--                                    <option value="t">${type}</option>--%>
                <%--                                </c:forEach>--%>
                <%--                            </select>--%>
                <%--                        </form>--%>
                <%--                    </div>--%>
                <%--                    <div class="pro-filter mb-40">--%>
                <%--                    </div>--%>
                <%--                </div>--%>
            </div>
            <div class="row product-filter-grid">
                <c:forEach items="${applicationScope.productList}" var="product" varStatus="i">
                    <div class="col-xl-3 col-md-6">
                        <div class="product-wrap">
                            <div class="product-thumb">
                                <a href="shop.html"><img
                                        src="${pageContext.request.contextPath}/view/assets/img/product/product-2.jpg"
                                        alt="product"></a>
                            </div>
                            <div class="product-details">
                                <h5>
                                    <a href="${pageContext.request.contextPath}/AddProductToShopCarServlet.do?id=${product.id}">
                                            ${product.productName}
                                    </a>
                                </h5>
                                <ul class="product-rating">
                                    <li><a href="#"><i class="far fa-star"></i></a></li>
                                    <li><a href="#"><i class="far fa-star"></i></a></li>
                                    <li><a href="#"><i class="far fa-star"></i></a></li>
                                    <li><a href="#"><i class="far fa-star"></i></a></li>
                                    <li><a href="#"><i class="far fa-star"></i></a></li>
                                </ul>
                                <span class="product-price"> 价格：${product.productPrice} </span>
                            </div>
                            <div class="product-hover">
                                <ul class="product-btns">
                                    <li><a href="#"><i class="far fa-expand"></i></a></li>
                                    <li><a href="#"><i class="far fa-heart"></i></a></li>
                                    <li><a href="#"><i class="far fa-repeat"></i></a></li>
                                </ul>
                                <a href="${pageContext.request.contextPath}/AddProductToShopCarServlet.do?id=${product.id}"
                                   class="a-btn">
                                    Add to cart <i class="fas fa-plus"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <div class="row">
                <div class="col-xl-12">
                    <div class="shop-pagination text-center">
                        <ul>
                            <li><a href="#"><i class="fas fa-angle-double-left"></i></a></li>
                            <li><a href="#">01</a></li>
                            <li><a href="#">02</a></li>
                            <li><a href="#">03</a></li>
                            <li><a href="#"><i class="fas fa-ellipsis-h"></i></a></li>
                            <li><a href="#"><i class="fas fa-angle-double-right"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--    product-area end    -->

    <!--    brand-area start    -->
    <div class="brand-area pt-80 pb-80 bg-fix"
         style="background-image: url(${pageContext.request.contextPath}/view/assets/img/bg/brand-bg.png)">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="brand-slider">
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="${pageContext.request.contextPath}/view/assets/img/brand/brand-1.png"
                                     alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="${pageContext.request.contextPath}/view/assets/img/brand/brand-2.png"
                                     alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="${pageContext.request.contextPath}/view/assets/img/brand/brand-3.png"
                                     alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="${pageContext.request.contextPath}/view/assets/img/brand/brand-4.png"
                                     alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="${pageContext.request.contextPath}/view/assets/img/brand/brand-5.png"
                                     alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="${pageContext.request.contextPath}/view/assets/img/brand/brand-1.png"
                                     alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="${pageContext.request.contextPath}/view/assets/img/brand/brand-2.png"
                                     alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="${pageContext.request.contextPath}/view/assets/img/brand/brand-3.png"
                                     alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="${pageContext.request.contextPath}/view/assets/img/brand/brand-4.png"
                                     alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="${pageContext.request.contextPath}/view/assets/img/brand/brand-5.png"
                                     alt="brand">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--    brand-area end    -->
</main>
<!--    main-area end    -->

<!--    footer-area end    -->

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="${pageContext.request.contextPath}/view/assets/js/jquery-3.4.1.min.js"></script>
<script src="${pageContext.request.contextPath}/view/assets/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/view/assets/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/view/assets/js/metisMenu.min.js"></script>
<script src="${pageContext.request.contextPath}/view/assets/js/slick.min.js"></script>
<script src="${pageContext.request.contextPath}/view/assets/js/imagesloaded.pkgd.min.js"></script>
<script src="${pageContext.request.contextPath}/view/assets/js/isotope.pkgd.min.js"></script>
<script src="${pageContext.request.contextPath}/view/assets/js/jquery.appear.js"></script>
<script src="${pageContext.request.contextPath}/view/assets/js/jquery.knob.min.js"></script>
<script src="${pageContext.request.contextPath}/view/assets/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/view/assets/js/jquery.final-countdown.min.js"></script>
<script src="${pageContext.request.contextPath}/view/assets/js/script.js"></script>
</body>

</html>