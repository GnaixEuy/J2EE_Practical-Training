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

    <title>Fudee</title>
</head>

<body>
<!--    slide-bar Start   -->
<aside class="slide-bar">
    <div class="close-mobile-menu">
        <a href="javascript:void(0);"><i class="fas fa-times"></i></a>
    </div>
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
                <img src="assets/img/logo/logo.png" alt="logo">
            </a>
        </div>
        <!-- end side widget -->

        <!-- start side widget -->
        <div class="sidebar-widget">
            <div class="info-wdget">
                <h4 class="widget-title">Office Address</h4>
                <p>
                    23/A, Miranda City Likaoli Prikano, Dope
                </p>
            </div>
        </div>
        <!-- end side widget -->

        <!-- start side widget -->
        <div class="sidebar-widget">
            <div class="info-wdget">
                <h4 class="widget-title">Phone Number</h4>
                <p> +0989 7876 9865 9 </p>
                <p> +(090) 8765 86543 85 </p>
            </div>
        </div>
        <!-- end side widget -->

        <!-- start side widget -->
        <div class="sidebar-widget">
            <div class="info-wdget">
                <h4 class="widget-title">Email Address</h4>
                <p><a href="/cdn-cgi/l/email-protection" class="__cf_email__"
                      data-cfemail="8be2e5ede4cbeef3eae6fbe7eea5e8e4e6">[email&#160;protected]</a></p>
                <p><a href="/cdn-cgi/l/email-protection" class="__cf_email__"
                      data-cfemail="e18499808c918d84cf8c80888da189948ccf828e8c">[email&#160;protected]</a></p>
            </div>
        </div>
        <!-- end side widget -->

        <!-- start side widget -->
        <div class="sidebar-widget">
            <div class="instagram">
                <a href="#">
                    <img src="${pageContext.request.contextPath}/view/assets/img/widget/instagram-1.jpg"
                         alt="instagram">
                </a>
                <a href="#">
                    <img src="${pageContext.request.contextPath}/view/assets/img/widget/instagram-2.jpg"
                         alt="instagram">
                </a>
                <a href="#">
                    <img src="${pageContext.request.contextPath}/view/assets/img/widget/instagram-3.jpg"
                         alt="instagram">
                </a>
                <a href="#">
                    <img src="${pageContext.request.contextPath}/view/assets/img/widget/instagram-4.jpg"
                         alt="instagram">
                </a>
                <a href="#">
                    <img src="${pageContext.request.contextPath}/view/assets/img/widget/instagram-5.jpg"
                         alt="instagram">
                </a>
                <a href="#">
                    <img src="${pageContext.request.contextPath}/view/assets/img/widget/instagram-6.jpg"
                         alt="instagram">
                </a>
            </div>
        </div>
        <!-- end side widget -->

        <!-- start side widget -->
        <div class="sidebar-widget">
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
             data-opacity="7" style="background-image: url(assets/img/bg/breadcrumb-bg.jpg)">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8 text-center">
                    <div class="breadcrumb-content">
                        <h3 class="title">Shop</h3>
                        <ul>
                            <li><a href="index.html">Home</a></li>
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
                        <p style="display: inline;">Showing 1–22 of 32 results</p sty>
                    </div>
                    <%--            <div class="header-btn">--%>

                    <%--            </div>--%>
                </div>
                <div class="col-xl-6 col-md-6 col-sm-5">
                    <div class="pro-filter mb-40 f-left">
                        <form action="#">
                            <select name="pro-filter" id="pro-filter">
                                <option value="1">Shop By</option>
                                <option value="2">Top Sales</option>
                                <option value="3">New Product</option>
                                <option value="4">A to Z Product</option>
                            </select>
                        </form>
                    </div>
                    <div class="mb-40">
                        <a href="#" class="a-btn">shop now <i class="fas fa-plus"></i></a>
                        <div class="open-mobile-menu" style="align-items: center;">
                            <a href="javascript:void(0);">
                                <i class="far fa-bars"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row product-filter-grid">
                <div class="col-xl-3 col-md-6">
                    <div class="product-wrap">
                        <div class="product-thumb">
                            <a href="shop.html"><img src="assets/img/product/product-1.jpg" alt="product"></a>
                        </div>
                        <div class="product-details">
                            <h5><a href="shop.html">Fresh Orange</a></h5>
                            <ul class="product-rating">
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                            </ul>
                            <span class="product-price"> $49.99 </span>
                        </div>
                        <div class="product-hover">
                            <ul class="product-btns">
                                <li><a href="#"><i class="far fa-expand"></i></a></li>
                                <li><a href="#"><i class="far fa-heart"></i></a></li>
                                <li><a href="#"><i class="far fa-repeat"></i></a></li>
                            </ul>
                            <a href="shop.html" class="a-btn">
                                Add to cart <i class="fas fa-plus"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="product-wrap">
                        <div class="product-thumb">
                            <a href="shop.html"><img src="assets/img/product/product-2.jpg" alt="product"></a>
                        </div>
                        <div class="product-details">
                            <h5><a href="shop.html">Fresh banana</a></h5>
                            <ul class="product-rating">
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                            </ul>
                            <span class="product-price"> $49.99 </span>
                        </div>
                        <div class="product-hover">
                            <ul class="product-btns">
                                <li><a href="#"><i class="far fa-expand"></i></a></li>
                                <li><a href="#"><i class="far fa-heart"></i></a></li>
                                <li><a href="#"><i class="far fa-repeat"></i></a></li>
                            </ul>
                            <a href="shop.html" class="a-btn">
                                Add to cart <i class="fas fa-plus"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="product-wrap">
                        <div class="product-thumb">
                            <a href="shop.html"><img src="assets/img/product/product-3.jpg" alt="product"></a>
                        </div>
                        <div class="product-details">
                            <h5><a href="shop.html">Seasoned Beans</a></h5>
                            <ul class="product-rating">
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                            </ul>
                            <span class="product-price"> $49.99 </span>
                        </div>
                        <div class="product-hover">
                            <ul class="product-btns">
                                <li><a href="#"><i class="far fa-expand"></i></a></li>
                                <li><a href="#"><i class="far fa-heart"></i></a></li>
                                <li><a href="#"><i class="far fa-repeat"></i></a></li>
                            </ul>
                            <a href="shop.html" class="a-btn">
                                Add to cart <i class="fas fa-plus"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="product-wrap">
                        <div class="product-thumb">
                            <a href="shop.html"><img src="assets/img/product/product-4.jpg" alt="product"></a>
                        </div>
                        <div class="product-details">
                            <h5><a href="shop.html">Organic Tomato</a></h5>
                            <ul class="product-rating">
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                            </ul>
                            <span class="product-price"> $49.99 </span>
                        </div>
                        <div class="product-hover">
                            <ul class="product-btns">
                                <li><a href="#"><i class="far fa-expand"></i></a></li>
                                <li><a href="#"><i class="far fa-heart"></i></a></li>
                                <li><a href="#"><i class="far fa-repeat"></i></a></li>
                            </ul>
                            <a href="shop.html" class="a-btn">
                                Add to cart <i class="fas fa-plus"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="product-wrap">
                        <div class="product-thumb">
                            <a href="shop.html"><img src="assets/img/product/product-3.jpg" alt="product"></a>
                        </div>
                        <div class="product-details">
                            <h5><a href="shop.html">Seasoned Beans</a></h5>
                            <ul class="product-rating">
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                            </ul>
                            <span class="product-price"> $49.99 </span>
                        </div>
                        <div class="product-hover">
                            <ul class="product-btns">
                                <li><a href="#"><i class="far fa-expand"></i></a></li>
                                <li><a href="#"><i class="far fa-heart"></i></a></li>
                                <li><a href="#"><i class="far fa-repeat"></i></a></li>
                            </ul>
                            <a href="shop.html" class="a-btn">
                                Add to cart <i class="fas fa-plus"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="product-wrap">
                        <div class="product-thumb">
                            <a href="shop.html"><img src="assets/img/product/product-1.jpg" alt="product"></a>
                        </div>
                        <div class="product-details">
                            <h5><a href="shop.html">Fresh Orange</a></h5>
                            <ul class="product-rating">
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                            </ul>
                            <span class="product-price"> $49.99 </span>
                        </div>
                        <div class="product-hover">
                            <ul class="product-btns">
                                <li><a href="#"><i class="far fa-expand"></i></a></li>
                                <li><a href="#"><i class="far fa-heart"></i></a></li>
                                <li><a href="#"><i class="far fa-repeat"></i></a></li>
                            </ul>
                            <a href="shop.html" class="a-btn">
                                Add to cart <i class="fas fa-plus"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="product-wrap">
                        <div class="product-thumb">
                            <a href="shop.html"><img src="assets/img/product/product-2.jpg" alt="product"></a>
                        </div>
                        <div class="product-details">
                            <h5><a href="shop.html">Fresh banana</a></h5>
                            <ul class="product-rating">
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                            </ul>
                            <span class="product-price"> $49.99 </span>
                        </div>
                        <div class="product-hover">
                            <ul class="product-btns">
                                <li><a href="#"><i class="far fa-expand"></i></a></li>
                                <li><a href="#"><i class="far fa-heart"></i></a></li>
                                <li><a href="#"><i class="far fa-repeat"></i></a></li>
                            </ul>
                            <a href="shop.html" class="a-btn">
                                Add to cart <i class="fas fa-plus"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="product-wrap">
                        <div class="product-thumb">
                            <a href="shop.html"><img src="assets/img/product/product-4.jpg" alt="product"></a>
                        </div>
                        <div class="product-details">
                            <h5><a href="shop.html">Organic Tomato</a></h5>
                            <ul class="product-rating">
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                            </ul>
                            <span class="product-price"> $49.99 </span>
                        </div>
                        <div class="product-hover">
                            <ul class="product-btns">
                                <li><a href="#"><i class="far fa-expand"></i></a></li>
                                <li><a href="#"><i class="far fa-heart"></i></a></li>
                                <li><a href="#"><i class="far fa-repeat"></i></a></li>
                            </ul>
                            <a href="shop.html" class="a-btn">
                                Add to cart <i class="fas fa-plus"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="product-wrap">
                        <div class="product-thumb">
                            <a href="shop.html"><img src="assets/img/product/product-1.jpg" alt="product"></a>
                        </div>
                        <div class="product-details">
                            <h5><a href="shop.html">Fresh Orange</a></h5>
                            <ul class="product-rating">
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                            </ul>
                            <span class="product-price"> $49.99 </span>
                        </div>
                        <div class="product-hover">
                            <ul class="product-btns">
                                <li><a href="#"><i class="far fa-expand"></i></a></li>
                                <li><a href="#"><i class="far fa-heart"></i></a></li>
                                <li><a href="#"><i class="far fa-repeat"></i></a></li>
                            </ul>
                            <a href="shop.html" class="a-btn">
                                Add to cart <i class="fas fa-plus"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="product-wrap">
                        <div class="product-thumb">
                            <a href="shop.html"><img src="assets/img/product/product-2.jpg" alt="product"></a>
                        </div>
                        <div class="product-details">
                            <h5><a href="shop.html">Fresh banana</a></h5>
                            <ul class="product-rating">
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                            </ul>
                            <span class="product-price"> $49.99 </span>
                        </div>
                        <div class="product-hover">
                            <ul class="product-btns">
                                <li><a href="#"><i class="far fa-expand"></i></a></li>
                                <li><a href="#"><i class="far fa-heart"></i></a></li>
                                <li><a href="#"><i class="far fa-repeat"></i></a></li>
                            </ul>
                            <a href="shop.html" class="a-btn">
                                Add to cart <i class="fas fa-plus"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="product-wrap">
                        <div class="product-thumb">
                            <a href="shop.html"><img src="assets/img/product/product-3.jpg" alt="product"></a>
                        </div>
                        <div class="product-details">
                            <h5><a href="shop.html">Seasoned Beans</a></h5>
                            <ul class="product-rating">
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                            </ul>
                            <span class="product-price"> $49.99 </span>
                        </div>
                        <div class="product-hover">
                            <ul class="product-btns">
                                <li><a href="#"><i class="far fa-expand"></i></a></li>
                                <li><a href="#"><i class="far fa-heart"></i></a></li>
                                <li><a href="#"><i class="far fa-repeat"></i></a></li>
                            </ul>
                            <a href="shop.html" class="a-btn">
                                Add to cart <i class="fas fa-plus"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="product-wrap">
                        <div class="product-thumb">
                            <a href="shop.html"><img src="assets/img/product/product-4.jpg" alt="product"></a>
                        </div>
                        <div class="product-details">
                            <h5><a href="shop.html">Organic Tomato</a></h5>
                            <ul class="product-rating">
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                <li><a href="#"><i class="far fa-star"></i></a></li>
                            </ul>
                            <span class="product-price"> $49.99 </span>
                        </div>
                        <div class="product-hover">
                            <ul class="product-btns">
                                <li><a href="#"><i class="far fa-expand"></i></a></li>
                                <li><a href="#"><i class="far fa-heart"></i></a></li>
                                <li><a href="#"><i class="far fa-repeat"></i></a></li>
                            </ul>
                            <a href="shop.html" class="a-btn">
                                Add to cart <i class="fas fa-plus"></i>
                            </a>
                        </div>
                    </div>
                </div>
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
    <div class="brand-area pt-80 pb-80 bg-fix" style="background-image: url(assets/img/bg/brand-bg.png)">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="brand-slider">
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="assets/img/brand/brand-1.png" alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="assets/img/brand/brand-2.png" alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="assets/img/brand/brand-3.png" alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="assets/img/brand/brand-4.png" alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="assets/img/brand/brand-5.png" alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="assets/img/brand/brand-1.png" alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="assets/img/brand/brand-2.png" alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="assets/img/brand/brand-3.png" alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="assets/img/brand/brand-4.png" alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="assets/img/brand/brand-5.png" alt="brand">
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

<!--    footer-area start    -->
<footer class="footer-area">
    <div class="footer-area-wrap">
        <div class="footer-top">
            <div class="container">
                <div class="row footer-wid-border-wrap">
                    <div class="col-xl-4 col-lg-4 footer-wid-border">
                        <div class="footer-widget about-widget">
                            <div class="w-logo">
                                <a href="index.html"><img
                                        src="${pageContext.request.contextPath}/view/assets/img/logo/logo-white.png"
                                        alt="logo"></a>
                            </div>
                            <p>
                                Lorem ipsum dolor amet consesty
                                adipisicing elit sed do eiusmod tem
                                por incididunt ut labore et dolore
                                magna aliqua ad minimsx
                            </p>
                            <div class="w-social">
                                <a href="#"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href="#"><i class="fab fa-behance"></i></a>
                                <a href="#"><i class="fab fa-instagram"></i></a>
                                <a href="#"><i class="fab fa-youtube"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 footer-wid-border">
                        <div class="footer-widget category-widget">
                            <h3 class="widget-title">Quick Links</h3>
                            <ul>
                                <li><a href="#"><i class="far fa-arrow-right"></i> Our Services</a></li>
                                <li><a href="#"><i class="far fa-arrow-right"></i> Portfolio</a></li>
                                <li><a href="#"><i class="far fa-arrow-right"></i> Comapny History</a></li>
                                <li><a href="#"><i class="far fa-arrow-right"></i> Faqs</a></li>
                                <li><a href="#"><i class="far fa-arrow-right"></i> Latest Product</a></li>
                                <li><a href="#"><i class="far fa-arrow-right"></i> Settings</a></li>
                                <li><a href="#"><i class="far fa-arrow-right"></i> Team Member</a></li>
                                <li><a href="#"><i class="far fa-arrow-right"></i> Need Jobs ?</a></li>
                                <li><a href="#"><i class="far fa-arrow-right"></i> Tetimonials</a></li>
                                <li><a href="#"><i class="far fa-arrow-right"></i> Payouts</a></li>
                                <li><a href="#"><i class="far fa-arrow-right"></i> Call To Action</a></li>
                                <li><a href="#"><i class="far fa-arrow-right"></i> My Accounts</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 footer-wid-border">
                        <div class="footer-widget newsletters-widget">
                            <h3 class="widget-title">newsletters</h3>
                            <p>
                                Subscribe Our Newsletters
                                To Get More Updates
                            </p>
                            <form action="#">
                                <input type="text" placeholder="Enter Your Email">
                                <button type="submit" class="a-btn">
                                    subscribe now <i class="fas fa-plus"></i>
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12 footer-bottom-wrap">
					<span id="scrollUp">
						<i class="far fa-angle-up"></i>
					</span>
                        <p class="copyright">Copyright &copy; 2020.Company name All rights reserved.<a target="_blank"
                                                                                                       href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-shape"></div>
    </div>
    <div class="footer-thumb-1">
        <img src="${pageContext.request.contextPath}/view/assets/img/thumb/thumb-3.png" alt="thumb">
    </div>
    <div class="footer-thumb-2">
        <img src="${pageContext.request.contextPath}/view/assets/img/thumb/thumb-4.png" alt="thumb">
    </div>
</footer>
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