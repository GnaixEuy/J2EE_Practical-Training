<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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

    <title>咔咔西</title>
</head>
<script src="${pageContext.request.contextPath}/view/assets/js/jquery-3.4.1.min.js"></script>
<body>

<!-- preloader -->
<div id="preloader">
    <div class="preloader">
        <span></span>
        <span></span>
    </div>
</div>
<!-- preloader end  -->

<!--    header-area start    -->
<%--<header class="header-area">--%>
<div class="header-top d-none d-xl-block d-lg-block d-md-block">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xl-5 col-lg-6 col-md-7">
                <div class="header-info-wrap" style="margin-left: 90px">
                    <div class="header-info">
                        <i class="far fa-phone"></i>
                        <a href="tel:+012 (345) 789">联系热线</a>
                    </div>

                    <div class="header-info">
                        <i class="far fa-envelope-open"></i>
                        <a href="/cdn-cgi/l/email-protection#1c6f696c6c736e685c7b717d7570327f7371"><span
                                class="__cf_email__"
                                data-cfemail="ed9e989d9d829f99ad8a808c8481c38e8280">[邮箱热线]</span></a>
                    </div>
                </div>
                </div>
                <div class="col-xl-5 col-lg-6 col-md-5">
                    <div class="header-social">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-behance"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-bottom">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-2 col-lg-3 col-md-4 col-6">
                    <div class="logo">
<%--                        <a href="index.html">--%>
                            <img src="view/assets/img/logo/bg.png" style="height: 80px ;" alt="logo">
<%--                        </a>--%>
                    </div>
                </div>
                <div class="col-xl-8 d-none d-xl-block ">
                    <div class="main-menu-wrap">
                        <nav class="main-menu">
                            <ul>
                                <li class="has-dropdown">
                                    <a href="#">登入</a>
                                    <ul class="sub-menu">
                                        <li><a href="${pageContext.request.contextPath}/view/adminlogin.jsp">管理员模块</a>
                                        </li>
                                        <li><a href="${pageContext.request.contextPath}/view/UserLogin.jsp">会员模块</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="about.html">关于</a></li>
                                <li class="has-dropdown">
                                    <a href="service.html">服务</a>
                                    <ul class="sub-menu">
                                        <li><a href="service.html">服务</a></li>
                                        <li><a href="service-details.html">服务细节</a></li>
                                    </ul>
                                </li>
<%--                                <li class="has-dropdown">--%>
<%--                                    <a href="blog.html">Blog</a>--%>
<%--                                    <ul class="sub-menu">--%>
<%--                                        <li><a href="blog.html">Blog Standard</a></li>--%>
<%--                                        <li><a href="blog-grid.html">Blog Grid</a></li>--%>
<%--                                        <li><a href="blog-details.html">Blog Details</a></li>--%>
<%--                                    </ul>--%>
<%--                                </li>--%>
<%--                                <li class="has-dropdown">--%>
<%--                                    <a href="#">Pages</a>--%>
<%--                                    <ul class="sub-menu">--%>
<%--                                        <li><a href="team.html">Team</a></li>--%>
<%--                                        <li><a href="shop.html">Shop</a></li>--%>
<%--                                        <li><a href="gallery.html">Gallery</a></li>--%>
                                <%--                                        <li><a href="gallery-details.html">Gallery Details</a></li>--%>
                                <%--                                    </ul>--%>
                                <%--                                </li>--%>
                                <li><a href="contact.html">联系</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-xl-2 col-lg-9 col-md-8 col-6 align-self-center">
                    <div class="header-btn">
                        <a href="${pageContext.request.contextPath}/ToShopServlet.do" class="a-btn">购物 <i
                                class="fas fa-plus"></i></a>
                        <div class="open-mobile-menu">
                            <a href="javascript:void(0);">
                                <i class="far fa-bars"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!--    header-area end    -->

<!--    slide-bar Start   -->
<aside class="slide-bar">
    <div class="close-mobile-menu">
        <a href="javascript:void(0);"><i class="fas fa-times"></i></a>
    </div>
    <!--    Mobile Menu Start   -->
<%--    <nav class="side-mobile-menu">--%>
<%--        <ul id="mobile-menu-active">--%>
<%--            <li class="has-dropdown">--%>
<%--                <a href="#">Home</a>--%>
<%--                <ul class="sub-menu">--%>
<%--                    <li><a href="index.html">Home 1</a></li>--%>
<%--                    <li><a href="index-2.html">Home 2</a></li>--%>
<%--                </ul>--%>
<%--            </li>--%>
<%--            <li><a href="about.html">About</a></li>--%>
<%--            <li class="has-dropdown">--%>
<%--                <a href="service.html">Services</a>--%>
<%--                <ul class="sub-menu">--%>
<%--                    <li><a href="service.html">Services</a></li>--%>
<%--                    <li><a href="service-details.html">Services Details</a></li>--%>
<%--                </ul>--%>
<%--            </li>--%>
<%--            <li class="has-dropdown">--%>
<%--                <a href="blog.html">Blog</a>--%>
<%--                <ul class="sub-menu">--%>
<%--                    <li><a href="blog.html">Blog Standard</a></li>--%>
<%--                    <li><a href="blog-grid.html">Blog Grid</a></li>--%>
<%--                    <li><a href="blog-details.html">Blog Details</a></li>--%>
<%--                </ul>--%>
<%--            </li>--%>
<%--            <li class="has-dropdown">--%>
<%--                <a href="#">Pages</a>--%>
<%--                <ul class="sub-menu">--%>
<%--                    <li><a href="team.html">Team</a></li>--%>
<%--                    <li><a href="shop.html">Shop</a></li>--%>
<%--                    <li><a href="gallery.html">Gallery</a></li>--%>
<%--                    <li><a href="gallery-details.html">Gallery Details</a></li>--%>
<%--                </ul>--%>
<%--            </li>--%>
<%--            <li><a href="contact.html">Contact</a></li>--%>
<%--        </ul>--%>
<%--    </nav>--%>
    <!--    Mobile Menu End    -->

    <!--    Offset Sidebar Start   -->
    <div class="sidebar-widget-wrapper">
        <!-- start side widget -->
        <div class="sidebar-widget logo-side">
            <a href="index.html">
                <img src="view/assets/img/logo/logo.png" alt="logo">
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
                      data-cfemail="9ef7f0f8f1defbe6fff3eef2fbb0fdf1f3">[email&#160;protected]</a></p>
                <p><a href="/cdn-cgi/l/email-protection" class="__cf_email__"
                      data-cfemail="a8cdd0c9c5d8c4cd86c5c9c1c4e8c0ddc586cbc7c5">[email&#160;protected]</a></p>
            </div>
        </div>
        <!-- end side widget -->

        <!-- start side widget -->
        <div class="sidebar-widget">
            <div class="instagram">
                <a href="#">
                    <img src="view/assets/img/widget/instagram-1.jpg" alt="instagram">
                </a>
                <a href="#">
                    <img src="view/assets/img/widget/instagram-2.jpg" alt="instagram">
                </a>
                <a href="#">
                    <img src="view/assets/img/widget/instagram-3.jpg" alt="instagram">
                </a>
                <a href="#">
                    <img src="view/assets/img/widget/instagram-4.jpg" alt="instagram">
                </a>
                <a href="#">
                    <img src="view/assets/img/widget/instagram-5.jpg" alt="instagram">
                </a>
                <a href="#">
                    <img src="view/assets/img/widget/instagram-6.jpg" alt="instagram">
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
    <!--    slider-area start    -->
    <div class="slider-area">
        <div class="home-slider">
            <div class="home-slide" style="background-image: url(view/assets/img/slider/bg1.jpg)">
                <div class="container">
                    <div class="row justify-content-xl-start justify-content-lg-start justify-content-center">
                        <div class="col-xl-7 col-lg-8 col-md-10">
                            <div class="home-slide-text">
<%--                                <div class="home-slide-cat" data-animation="fadeInDown" data-delay="0.5s">--%>
<%--                                    <a href="blog.html">Food & Vegetables</a>--%>
<%--                                </div>--%>
    <div class="home-slide-title" data-animation="fadeInDown" data-delay="0.8s">
        <h3><span>好茶</span></h3>
        <h4>激发一份好的灵感</h4>

    </div>
    <div class="home-slide-btn" data-animation="fadeInDown" data-delay="1.1s">
        <a href="blog.html" class="a-btn">learn more <i class="fas fa-plus"></i></a>
        <a href="https://www.bilibili.com/video/BV1Ws411u73k?from=search&seid=2232649222334745743"
           class="play-btn popup-video">
            <i class="far fa-play-circle"></i>
            <span>watch videos</span>
        </a>
    </div>
    <div class="home-slide-shape" data-animation="zoomIn" data-delay="0.2s">
        <svg xmlns="http://www.w3.org/2000/svg"
             width="659px" height="657px">
            <path fill-rule="evenodd" fill="rgb(255, 255, 255)"
                  d="M404.619,98.175 C435.465,137.384 470.409,169.818 506.015,194.454 C541.384,219.602 577.416,236.952 604.940,257.895 C632.599,278.653 651.758,302.991 656.547,337.786 C661.846,371.693 652.776,416.057 635.756,456.388 C562.446,626.457 369.620,701.287 201.054,630.161 C32.989,558.367 -44.639,362.971 27.363,195.425 C45.542,152.856 71.175,116.687 102.501,84.718 C133.643,53.202 170.478,25.887 206.801,11.504 C243.244,-3.033 279.180,-4.649 311.323,11.602 C343.892,27.086 372.668,60.438 404.619,98.175 L404.619,98.175 Z"/>
        </svg>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>




            <div class="home-slide" style="background-image: url(view/assets/img/slider/bg1.jpg)">
                <div class="container">
                    <div class="row justify-content-xl-start justify-content-lg-start justify-content-center">
                        <div class="col-xl-7 col-lg-8 col-md-10">
                            <div class="home-slide-text">
<%--                                <div class="home-slide-cat" data-animation="fadeInDown" data-delay="0.5s">--%>
<%--                                    <a href="blog.html">Food & Vegetables</a>--%>
<%--                                </div>--%>
                                <div class="home-slide-title" data-animation="fadeInDown" data-delay="0.8s">
                                    <h3>
                                        <span>好茶</span></h3>
                                        <h4>激发一份好的灵感</h4>

                                </div>
                                <div class="home-slide-btn" data-animation="fadeInDown" data-delay="1.1s">
                                    <a href="blog.html" class="a-btn">learn more <i class="fas fa-plus"></i></a>
                                    <a href="#" class="play-btn popup-video"><i class="far fa-play-circle"></i>
                                        <span>watch videos</span></a>
                                </div>
                                <div class="home-slide-shape" data-animation="zoomIn" data-delay="0.2s">
                                    <svg xmlns="http://www.w3.org/2000/svg"
                                         width="659px" height="657px">
                                        <path fill-rule="evenodd" fill="rgb(255, 255, 255)"
                                              d="M404.619,98.175 C435.465,137.384 470.409,169.818 506.015,194.454 C541.384,219.602 577.416,236.952 604.940,257.895 C632.599,278.653 651.758,302.991 656.547,337.786 C661.846,371.693 652.776,416.057 635.756,456.388 C562.446,626.457 369.620,701.287 201.054,630.161 C32.989,558.367 -44.639,362.971 27.363,195.425 C45.542,152.856 71.175,116.687 102.501,84.718 C133.643,53.202 170.478,25.887 206.801,11.504 C243.244,-3.033 279.180,-4.649 311.323,11.602 C343.892,27.086 372.668,60.438 404.619,98.175 L404.619,98.175 Z"/>
                                    </svg>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    <!--    slider-area end    -->

    <!--    service-area start    -->
    <div class="service-area">
        <div class="container-fluid px-0">
            <div class="row no-gutters">
                <div class="col-xl-3 col-md-6">
                    <div class="service-wrap">
                        <div class="service-icon">
                            <img src="view/assets/img/icon/icon-1.png" alt="icon">
                        </div>
                        <div class="service-details">
                            <h4><a href="service-details.html">醇香奶茶</a></h4>
                        </div>
                        <div class="service-shape"></div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="service-wrap">
                        <div class="service-icon">
                            <img src="view/assets/img/icon/icon-2.png" alt="icon">
                        </div>
                        <div class="service-details">
                            <h4><a href="service-details.html">活力果茶</a></h4>
                        </div>
                        <div class="service-shape"></div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="service-wrap">
                        <div class="service-icon">
                            <img src="view/assets/img/icon/icon-3.png" alt="icon">
                        </div>
                        <div class="service-details">
                            <h4><a href="service-details.html">提神咖啡</a></h4>
                        </div>
                        <div class="service-shape"></div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="service-wrap">
                        <div class="service-icon">
                            <img src="view/assets/img/icon/icon-4.png" alt="icon">
                        </div>
                        <div class="service-details">
                            <h4><a href="service-details.html">蛋糕甜点</a></h4>
                        </div>
                        <div class="service-shape"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--    service-area end    -->

    <!--    about-area start    -->

    <!--    service-area end    -->


    <!--    team-area start    -->
    <div class="team-area pb-130">
        <div class="container">
            <div class="row justify-content-center mb-50">
                <div class="col-xl-6 col-lg-8 col-md-10">
                    <div class="section-title text-center">
                        <h5>团队成员</h5>
                        <h3>我们优秀的团队成员</h3>
                        <div class="icon">
                            <img src="view/assets/img/icon/icon-5.png" alt="icon">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-12">
                    <div class="team-slider">
                        <div class="team-slide">
                            <div class="team-wrap">
                                <div class="team-thumb">
                                    <a href="team.html">
                                        <img src="view/assets/img/team/t1.jpg" alt="team">
                                    </a>
                                </div>
                                <div class="team-details">
                                    <h4><a href="team.html">侍云鹏</a></h4>
<%--                                    <p>Organic Farmer</p>--%>
                                    <div class="social">
                                        <a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a>
                                        <a href="#" class="twitter"><i class="fab fa-twitter"></i></a>
                                        <a href="#" class="pinterest"><i class="fab fa-pinterest-p"></i></a>
                                        <a href="#" class="instagram"><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="team-slide">
                            <div class="team-wrap">
                                <div class="team-thumb">
                                    <a href="team.html">
                                        <img src="view/assets/img/team/t2.jpg" alt="team">
                                    </a>
                                </div>
                                <div class="team-details">
                                    <h4><a href="team.html">苏粤翔</a></h4>
<%--                                    <p>Organic Farmer</p>--%>
                                    <div class="social">
                                        <a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a>
                                        <a href="#" class="twitter"><i class="fab fa-twitter"></i></a>
                                        <a href="#" class="pinterest"><i class="fab fa-pinterest-p"></i></a>
                                        <a href="#" class="instagram"><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="team-slide">
                            <div class="team-wrap">
                                <div class="team-thumb">
                                    <a href="team.html">
                                        <img src="view/assets/img/team/t3.jpg" alt="team">
                                    </a>
                                </div>
                                <div class="team-details">
                                    <h4><a href="team.html">王鹏伟</a></h4>
<%--                                    <p>Organic Farmer</p>--%>
                                    <div class="social">
                                        <a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a>
                                        <a href="#" class="twitter"><i class="fab fa-twitter"></i></a>
                                        <a href="#" class="pinterest"><i class="fab fa-pinterest-p"></i></a>
                                        <a href="#" class="instagram"><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="team-slide">
                            <div class="team-wrap">
                                <div class="team-thumb">
                                    <a href="team.html"><img src="view/assets/img/team/t4.jpg" alt="team"></a>
                                </div>
                                <div class="team-details">
                                    <h4><a href="team.html">徐宇杰</a></h4>
<%--                                    <p>Organic Farmer</p>--%>
                                    <div class="social">
                                        <a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a>
                                        <a href="#" class="twitter"><i class="fab fa-twitter"></i></a>
                                        <a href="#" class="pinterest"><i class="fab fa-pinterest-p"></i></a>
                                        <a href="#" class="instagram"><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="team-slide">
                            <div class="team-wrap">
                                <div class="team-thumb">
                                    <a href="team.html">
                                        <img src="view/assets/img/team/team-5.jpg" alt="team">
                                    </a>
                                </div>
                                <div class="team-details">
                                    <h4><a href="team.html">美国朋友2</a></h4>
<%--                                    <p>Organic Farmer</p>--%>
                                    <div class="social">
                                        <a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a>
                                        <a href="#" class="twitter"><i class="fab fa-twitter"></i></a>
                                        <a href="#" class="pinterest"><i class="fab fa-pinterest-p"></i></a>
                                        <a href="#" class="instagram"><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="team-slide">
                            <div class="team-wrap">
                                <div class="team-thumb">
                                    <a href="team.html">
                                        <img src="view/assets/img/team/team-7.jpg" alt="team">
                                    </a>
                                </div>
                                <div class="team-details">
                                    <h4><a href="team.html">美国朋友</a></h4>
<%--                                    <p>Organic Farmer</p>--%>
                                    <div class="social">
                                        <a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a>
                                        <a href="#" class="twitter"><i class="fab fa-twitter"></i></a>
                                        <a href="#" class="pinterest"><i class="fab fa-pinterest-p"></i></a>
                                        <a href="#" class="instagram"><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--    team-area end    -->

    <!--    brand-area start    -->
    <div class="brand-area pt-80 pb-80 bg-fix" style="background-image: url(view/assets/img/bg/brand-bg.png)">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="brand-slider">
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="view/assets/img/brand/brand-1.png" alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="view/assets/img/brand/brand-2.png" alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="view/assets/img/brand/brand-3.png" alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="view/assets/img/brand/brand-4.png" alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="view/assets/img/brand/brand-5.png" alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="view/assets/img/brand/brand-1.png" alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="view/assets/img/brand/brand-2.png" alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="view/assets/img/brand/brand-3.png" alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="view/assets/img/brand/brand-4.png" alt="brand">
                            </div>
                        </div>
                        <div class="brand-slide">
                            <div class="brand-wrap">
                                <img src="view/assets/img/brand/brand-5.png" alt="brand">
                            </div>
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