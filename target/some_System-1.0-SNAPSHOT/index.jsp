<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Place favicon.ico in the root directory -->
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/view/assets/img/logo/favicon.png">

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

    <title>卡卡西</title>
</head>
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
<header class="header-area">
    <div class="header-top d-none d-xl-block d-lg-block d-md-block">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-5 col-lg-6 col-md-7">
                    <div class="header-info-wrap">
                        <div class="header-info">
                            <i class="far fa-phone"></i>
                            <a href="tel:+012 (345) 789">+012 (345) 789</a>
                        </div>
                        <div class="header-info">
                            <i class="far fa-envelope-open"></i>
                            <a href="/cdn-cgi/l/email-protection#1c6f696c6c736e685c7b717d7570327f7371"><span class="__cf_email__" data-cfemail="ed9e989d9d829f99ad8a808c8481c38e8280">[email&#160;protected]</span></a>
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
                        <a href="index.html">
                            <img src="view/assets/img/logo/logo.png" alt="logo">
                        </a>
                    </div>
                </div>
                <div class="col-xl-8 d-none d-xl-block ">
                    <div class="main-menu-wrap">
                        <nav class="main-menu">
                            <ul>
                                <li class="has-dropdown">
                                    <a href="#">登入</a>
                                    <ul class="sub-menu">
                                        <li><a href="${pageContext.request.contextPath}/view/adminlogin.jsp">管理员模块</a></li>
                                        <li><a href="${pageContext.request.contextPath}/view/UserLogin.jsp">会员模块</a></li>
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
                    </div>
                </div>
                <div class="col-xl-2 col-lg-9 col-md-8 col-6 align-self-center">
                    <div class="header-btn">
                        <a href="#" class="a-btn">shop now <i class="fas fa-plus"></i></a>
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
                <p> <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="9ef7f0f8f1defbe6fff3eef2fbb0fdf1f3">[email&#160;protected]</a> </p>
                <p> <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="a8cdd0c9c5d8c4cd86c5c9c1c4e8c0ddc586cbc7c5">[email&#160;protected]</a> </p>
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
            <div class="home-slide" style="background-image: url(view/assets/img/slider/slider-1.jpg)">
                <div class="container">
                    <div class="row justify-content-xl-start justify-content-lg-start justify-content-center">
                        <div class="col-xl-7 col-lg-8 col-md-10">
                            <div class="home-slide-text">
                                <div class="home-slide-cat" data-animation="fadeInDown" data-delay="0.5s">
                                    <a href="blog.html">Food & Vegetables</a>
                                </div>
                                <div class="home-slide-title" data-animation="fadeInDown" data-delay="0.8s">
                                    <h3><span>Organic</span> Food Providers</h3>
                                </div>
                                <div class="home-slide-btn" data-animation="fadeInDown" data-delay="1.1s">
                                    <a href="blog.html" class="a-btn">learn more <i class="fas fa-plus"></i></a>
                                    <a href="#" class="play-btn popup-video">
                                        <i class="far fa-play-circle"></i>
                                        <span>watch videos</span>
                                    </a>
                                </div>
                                <div class="home-slide-shape" data-animation="zoomIn" data-delay="0.2s">
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
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
            <div class="home-slide" style="background-image: url(view/assets/img/slider/slider-1.jpg)">
                <div class="container">
                    <div class="row justify-content-xl-start justify-content-lg-start justify-content-center">
                        <div class="col-xl-7 col-lg-8 col-md-10">
                            <div class="home-slide-text">
                                <div class="home-slide-cat" data-animation="fadeInDown" data-delay="0.5s">
                                    <a href="blog.html">Food & Vegetables</a>
                                </div>
                                <div class="home-slide-title" data-animation="fadeInDown" data-delay="0.8s">
                                    <h3><span>Organic</span> Food Providers</h3>
                                </div>
                                <div class="home-slide-btn" data-animation="fadeInDown" data-delay="1.1s">
                                    <a href="blog.html" class="a-btn">learn more <i class="fas fa-plus"></i></a>
                                    <a href="#" class="play-btn popup-video"><i class="far fa-play-circle"></i>
                                        <span>watch videos</span></a>
                                </div>
                                <div class="home-slide-shape" data-animation="zoomIn" data-delay="0.2s">
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
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
                            <h4><a href="service-details.html">Organic Food</a></h4>
                            <p>
                                Sed ut perspiciatis omnis iste
                                natus error sit voluptate accusa
                                ntiuy dolorem laudantium
                            </p>
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
                            <h4><a href="service-details.html">Gardening</a></h4>
                            <p>
                                Sed ut perspiciatis omnis iste
                                natus error sit voluptate accusa
                                ntiuy dolorem laudantium
                            </p>
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
                            <h4><a href="service-details.html">Fresh & Organic</a></h4>
                            <p>
                                Sed ut perspiciatis omnis iste
                                natus error sit voluptate accusa
                                ntiuy dolorem laudantium
                            </p>
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
                            <h4><a href="service-details.html">Landscaping</a></h4>
                            <p>
                                Sed ut perspiciatis omnis iste
                                natus error sit voluptate accusa
                                ntiuy dolorem laudantium
                            </p>
                        </div>
                        <div class="service-shape"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--    service-area end    -->

    <!--    about-area start    -->
    <div class="about-area pt-130 pb-130">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6 col-lg-8 col-md-10">
                    <div class="section-title text-center">
                        <h5>About Us</h5>
                        <h3>We're Global Food Delivery Organic Company</h3>
                        <div class="icon">
                            <img src="view/assets/img/icon/icon-5.png" alt="icon">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-80 align-items-center">
                <div class="col-xl-6 col-lg-6">
                    <div class="about-thumb">
                        <img src="view/assets/img/thumb/thumb-1.jpg" alt="thumb">
                        <span class="about-thumb-shape" style="background-image: url(view/assets/img/thumb/thumb-2.jpg)">
							a
						</span>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6">
                    <div class="about-details mt-md-120 mt-xs-60">
                        <span class="about-num">25</span>
                        <h4>Years Since We Provide Organic Food & Vegetables For Golbal Agency</h4>
                        <p>
                            Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque
                            laudanti totam aperiam eaque ipsa quae ab illo inventore veritatis et architecto beatae
                            vitae dicta sunt explicabo. Nemoes enim ipsam voluptatem volup aspernatur
                        </p>
                        <a href="about.html" class="a-btn btn-theme mt-45">
                            learn more <i class="fas fa-plus"></i>
                        </a>
                        <div class="about-seal">
                            <img src="view/assets/img/shape/seal.png" alt="seal">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--    about-area end    -->

    <!--    service-area start    -->
    <div class="service-area service-area-2 pt-130 pb-130" style="background-image: url(view/assets/img/shape/shape-1.png)">
        <div class="container">
            <div class="row justify-content-center mb-55">
                <div class="col-xl-6 col-lg-8 col-md-10">
                    <div class="section-title text-center">
                        <h5>What We Do</h5>
                        <h3>Services We Provide That Benifited Health</h3>
                        <div class="icon">
                            <img src="view/assets/img/icon/icon-5.png" alt="icon">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-4 col-md-6">
                    <div class="service-wrap-2">
                        <div class="service-thumb">
                            <a href="service-details.html">
                                <img src="view/assets/img/service/service-1.jpg" alt="service">
                            </a>
                            <span class="service-icon">
								<i class="flaticon-lemon"></i>
							</span>
                        </div>
                        <div class="service-details">
                            <h4><a href="service-details.html">Fruits Care</a></h4>
                            <p>
                                Sedut perspicis unde omne iste natus error sit voluptatem acntium doloremque laudanum
                                totam
                            </p>
                            <a href="service-details.html" class="read-more"><i class="far fa-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-md-6">
                    <div class="service-wrap-2">
                        <div class="service-thumb">
                            <a href="service-details.html">
                                <img src="view/assets/img/service/service-2.jpg" alt="service">
                            </a>
                            <span class="service-icon">
								<i class="flaticon-onion"></i>
							</span>
                        </div>
                        <div class="service-details">
                            <h4><a href="service-details.html">Fruits Care</a></h4>
                            <p>
                                Sedut perspicis unde omne iste natus error sit voluptatem acntium doloremque laudanum
                                totam
                            </p>
                            <a href="service-details.html" class="read-more"><i class="far fa-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-md-6">
                    <div class="service-wrap-2">
                        <div class="service-thumb">
                            <a href="service-details.html">
                                <img src="view/assets/img/service/service-3.jpg" alt="service">
                            </a>
                            <span class="service-icon">
								<i class="flaticon-tomato"></i>
							</span>
                        </div>
                        <div class="service-details">
                            <h4><a href="service-details.html">Fruits Care</a></h4>
                            <p>
                                Sedut perspicis unde omne iste natus error sit voluptatem acntium doloremque laudanum
                                totam
                            </p>
                            <a href="service-details.html" class="read-more"><i class="far fa-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="shape-1">
            <img src="view/assets/img/icon/icon-6.png" alt="icon">
        </div>
        <div class="shape-2">
            <img src="view/assets/img/icon/icon-7.png" alt="icon">
        </div>
    </div>
    <!--    service-area end    -->

    <!--    product-area start    -->
    <div class="product-area product-area-shape product-filter-wrapper pt-130 pb-130">
        <div class="container">
            <div class="row justify-content-center mb-55">
                <div class="col-xl-6 col-lg-8 col-md-10">
                    <div class="section-title text-center">
                        <h5>Our Product</h5>
                        <h3>We Provide Different Organic Healthy Foods</h3>
                        <div class="icon">
                            <img src="view/assets/img/icon/icon-5.png" alt="icon">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mb-60">
                <div class="col-xl-12">
                    <div class="product-filter-nav">
                        <button class="active" data-filter="*">
                            <i class="flaticon-vegetable"></i>
                            <span>Vegetables</span>
                        </button>
                        <button data-filter=".orange">
                            <i class="flaticon-lemon-1"></i>
                            <span>Orange</span>
                        </button>
                        <button data-filter=".shallot">
                            <i class="flaticon-cabbage"></i>
                            <span>Shallot</span>
                        </button>
                        <button data-filter=".pumpkin">
                            <i class="flaticon-tomato-1"></i>
                            <span>Pumpkin</span>
                        </button>
                        <button data-filter=".meat">
                            <i class="flaticon-fruit-2"></i>
                            <span>Meat</span>
                        </button>
                    </div>
                </div>
            </div>
            <div class="row product-filter-grid">
                <div class="col-xl-3 col-md-6 grid-item orange meat">
                    <div class="product-wrap">
                        <div class="product-thumb">
                            <a href="shop.html"><img src="view/assets/img/product/product-1.jpg" alt="product"></a>
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
                <div class="col-xl-3 col-md-6 grid-item shallot orange">
                    <div class="product-wrap">
                        <div class="product-thumb">
                            <a href="shop.html"><img src="view/assets/img/product/product-2.jpg" alt="product"></a>
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
                <div class="col-xl-3 col-md-6 grid-item pumpkin orange">
                    <div class="product-wrap">
                        <div class="product-thumb">
                            <a href="shop.html"><img src="view/assets/img/product/product-3.jpg" alt="product"></a>
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
                <div class="col-xl-3 col-md-6 grid-item meat orange shallot">
                    <div class="product-wrap">
                        <div class="product-thumb">
                            <a href="shop.html"><img src="view/assets/img/product/product-4.jpg" alt="product"></a>
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
                <div class="col-xl-12 text-center">
                    <a href="shop.html" class="a-btn btn-dark mt-50">
                        view more product <i class="fas fa-plus"></i>
                    </a>
                </div>
            </div>
        </div>
        <div class="shape-1">
            <img src="view/assets/img/icon/icon-8.png" alt="icon">
        </div>
        <div class="shape-2">
            <img src="view/assets/img/icon/icon-9.png" alt="icon">
        </div>
        <div class="shape-3">
            <img src="view/assets/img/icon/icon-10.png" alt="icon">
        </div>
        <div class="shape-4">
            <img src="view/assets/img/icon/icon-11.png" alt="icon">
        </div>
    </div>
    <!--    product-area end    -->

    <!--    cta-area start    -->
    <div class="cta-area" style="background-image: url(view/assets/img/bg/cta-bg.jpg)">
        <div class="container">
            <div class="row justify-content-end">
                <div class="col-xl-7 col-lg-9">
                    <div class="cta-text">
                        <div class="cta-cat">
                            <a href="#" tabindex="0">Free Consultations</a>
                        </div>
                        <div class="cta-content">
                            <h4>Food Is Very Important Every For Human Beings</h4>
                            <p>
                                with love & dedication
                            </p>
                        </div>
                        <div class="cta-btn">
                            <a href="#" class="play-btn popup-video">
                                <span>watch videos</span>
                                <i class="far fa-play"></i>
                            </a>
                            <a href="about.html" class="a-btn" tabindex="0">get a quote <i class="fas fa-plus"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--    cta-area end    -->

    <!--    choose-us-area start    -->
    <div class="choose-us-area">
        <div class="choose-us-bg" style="background-image: url(view/assets/img/bg/choose-us-bg.png)">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-6">
                        <div class="choose-us-wrap">
                            <div class="section-title section-title-white mb-20">
                                <h5>Why Choose Us</h5>
                                <h3>Special Support & Caring Organic Farm Agency</h3>
                                <div class="icon">
                                    <img src="view/assets/img/icon/icon-5-white.png" alt="icon">
                                </div>
                            </div>
                            <p>
                                Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque
                                laudantium, totam rem aperiaceaque ipsa quae ab illo inventore veritatis et quasi
                                architecto beataest vitae dicta sunt explicabo enim ipsam voluptatem
                            </p>
                            <a href="about.html" class="b-btn">
                                Learn more
                                <i class="fas fa-plus"></i>
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-5 offset-xl-1 col-lg-6 mt-md-50 mt-xs-50 align-self-center">
                        <div class="choose-us-list mb-35">
                            <div class="choose-list-icon">
                                <div class="icon">
                                    <i class="far fa-leaf"></i>
                                </div>
                            </div>
                            <div class="choose-list-details">
                                <h4>Natural Process</h4>
                                <p>Sorem ipsum dolor sit amet consecta dipisicing sed eiusmod tempor</p>
                            </div>
                        </div>
                        <div class="choose-us-list mb-35">
                            <div class="choose-list-icon">
                                <div class="icon">
                                    <i class="far fa-leaf"></i>
                                </div>
                            </div>
                            <div class="choose-list-details">
                                <h4>Fresh & Organic Product</h4>
                                <p>Quis autem vel eum iure reprehenderit qui nea voluptate velit esse quam</p>
                            </div>
                        </div>
                        <div class="choose-us-list">
                            <div class="choose-list-icon">
                                <div class="icon">
                                    <i class="far fa-leaf"></i>
                                </div>
                            </div>
                            <div class="choose-list-details">
                                <h4>Homegrown Goodness</h4>
                                <p>To take a trivial example, which of ever undertakes laborious physical</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--    choose-us-area end    -->

    <!--    photo-gallery-area start    -->
    <div class="photo-gallery-area gallery-filter-wrapper pt-130 pb-100">
        <div class="container">
            <div class="row justify-content-center mb-20">
                <div class="col-xl-6 col-lg-8 col-md-10">
                    <div class="section-title text-center">
                        <h5>Photo Gallery</h5>
                        <h3>Let’s See Our Beautyful Gardern Views</h3>
                        <div class="icon">
                            <img src="view/assets/img/icon/icon-5.png" alt="icon">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mb-60">
                <div class="col-xl-12">
                    <div class="gallery-filter-nav">
                        <button class="active" data-filter="*">Show All</button>
                        <button data-filter=".vegetables">Vegetables</button>
                        <button data-filter=".farmers">Farmers</button>
                        <button data-filter=".doctors">Doctors</button>
                        <button data-filter=".fruits">Fruits</button>
                        <button data-filter=".gardern">Gardern</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid gallery-filter-space">
            <div class="row gallery-filter-grid">
                <div class="col-xl-3 col-md-6 grid-item vegetables gardern">
                    <div class="photo-gallery-wrap mb-30">
                        <div class="gallery-thumb">
                            <img src="view/assets/img/gallery/gallery-1.jpg" alt="gallery">
                        </div>
                        <div class="gallery-details">
                            <h4><a href="gallery-details.html">Organic Vegetables</a></h4>
                            <span class="cat"><a href="gallery-details.html">Fresh Food</a></span>
                            <a href="gallery-details.html" class="read-more"><i class="far fa-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 grid-item farmers fruits">
                    <div class="photo-gallery-wrap mb-30">
                        <div class="gallery-thumb">
                            <img src="view/assets/img/gallery/gallery-2.jpg" alt="gallery">
                        </div>
                        <div class="gallery-details">
                            <h4><a href="gallery-details.html">Organic Vegetables</a></h4>
                            <span class="cat"><a href="gallery-details.html">Fresh Food</a></span>
                            <a href="gallery-details.html" class="read-more"><i class="far fa-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 grid-item doctors farmers">
                    <div class="photo-gallery-wrap mb-30">
                        <div class="gallery-thumb">
                            <img src="view/assets/img/gallery/gallery-3.jpg" alt="gallery">
                        </div>
                        <div class="gallery-details">
                            <h4><a href="gallery-details.html">Organic Vegetables</a></h4>
                            <span class="cat"><a href="gallery-details.html">Fresh Food</a></span>
                            <a href="gallery-details.html" class="read-more"><i class="far fa-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 grid-item fruits gardern">
                    <div class="photo-gallery-wrap mb-30">
                        <div class="gallery-thumb">
                            <img src="view/assets/img/gallery/gallery-4.jpg" alt="gallery">
                        </div>
                        <div class="gallery-details">
                            <h4><a href="gallery-details.html">Organic Vegetables</a></h4>
                            <span class="cat"><a href="gallery-details.html">Fresh Food</a></span>
                            <a href="gallery-details.html" class="read-more"><i class="far fa-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-md-6 grid-item gardern doctors">
                    <div class="photo-gallery-wrap mb-30">
                        <div class="gallery-thumb">
                            <img src="view/assets/img/gallery/gallery-5.jpg" alt="gallery">
                        </div>
                        <div class="gallery-details">
                            <h4><a href="gallery-details.html">Organic Vegetables</a></h4>
                            <span class="cat"><a href="gallery-details.html">Fresh Food</a></span>
                            <a href="gallery-details.html" class="read-more"><i class="far fa-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 grid-item vegetables fruits">
                    <div class="photo-gallery-wrap mb-30">
                        <div class="gallery-thumb">
                            <img src="view/assets/img/gallery/gallery-6.jpg" alt="gallery">
                        </div>
                        <div class="gallery-details">
                            <h4><a href="gallery-details.html">Organic Vegetables</a></h4>
                            <span class="cat"><a href="gallery-details.html">Fresh Food</a></span>
                            <a href="gallery-details.html" class="read-more"><i class="far fa-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 grid-item farmers gardern">
                    <div class="photo-gallery-wrap mb-30">
                        <div class="gallery-thumb">
                            <img src="view/assets/img/gallery/gallery-7.jpg" alt="gallery">
                        </div>
                        <div class="gallery-details">
                            <h4><a href="gallery-details.html">Organic Vegetables</a></h4>
                            <span class="cat"><a href="gallery-details.html">Fresh Food</a></span>
                            <a href="gallery-details.html" class="read-more"><i class="far fa-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--    photo-gallery-area end    -->

    <!--    team-area start    -->
    <div class="team-area pb-130">
        <div class="container">
            <div class="row justify-content-center mb-50">
                <div class="col-xl-6 col-lg-8 col-md-10">
                    <div class="section-title text-center">
                        <h5>Team Members</h5>
                        <h3>Meet Our Expert Team Members</h3>
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
                                        <img src="view/assets/img/team/team-1.jpg" alt="team">
                                    </a>
                                </div>
                                <div class="team-details">
                                    <h4><a href="team.html">Benjamin R. Preece</a></h4>
                                    <p>Organic Farmer</p>
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
                                        <img src="view/assets/img/team/team-4.jpg" alt="team">
                                    </a>
                                </div>
                                <div class="team-details">
                                    <h4><a href="team.html">Donald L. Alexander</a></h4>
                                    <p>Organic Farmer</p>
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
                                        <img src="view/assets/img/team/team-2.jpg" alt="team">
                                    </a>
                                </div>
                                <div class="team-details">
                                    <h4><a href="team.html">Andrew J. Cousins</a></h4>
                                    <p>Organic Farmer</p>
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
                                    <a href="team.html"><img src="view/assets/img/team/team-3.jpg" alt="team"></a>
                                </div>
                                <div class="team-details">
                                    <h4><a href="team.html">Bernard M. Richardson</a></h4>
                                    <p>Organic Farmer</p>
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
                                        <img src="view/assets/img/team/team-1.jpg" alt="team">
                                    </a>
                                </div>
                                <div class="team-details">
                                    <h4><a href="team.html">Benjamin R. Preece</a></h4>
                                    <p>Organic Farmer</p>
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
                                    <h4><a href="team.html">Donald L. Alexander</a></h4>
                                    <p>Organic Farmer</p>
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
                                    <h4><a href="team.html">Andrew J. Cousins</a></h4>
                                    <p>Organic Farmer</p>
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
                                    <a href="team.html"><img src="view/assets/img/team/team-8.jpg" alt="team"></a>
                                </div>
                                <div class="team-details">
                                    <h4><a href="team.html">Bernard M. Richardson</a></h4>
                                    <p>Organic Farmer</p>
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

    <!--    counter-area start    -->
    <div class="counter-area bg-fix" style="background-image: url(view/assets/img/bg/counter-bg.jpg)">
        <div class="container">
            <div class="row justify-content-center align-items-center">
                <div class="col-xl-5 col-lg-6 col-md-8">
                    <div class="counter-details text-center">
                        <a href="#" class="play-animation popup-video">
                            <i class="fas fa-play"></i>
                            <span class="shape"></span>
                        </a>
                        <h3>How To Serve Gardern Watch Videos</h3>
                    </div>
                </div>
                <div class="col-xl-7">
                    <div class="counter-right-wrap">
                        <h4>We Are Startup Company. Experts In Field Organic Startup Movement.</h4>
                        <div class="row">
                            <div class="col-xl-6 col-md-6">
                                <div class="counter-wrap mb-60">
									<span class="icon">
										<i class="fas fa-umbrella-beach"></i>
									</span>
                                    <h4><span>25</span>+</h4>
                                    <p>Years Experience</p>
                                </div>
                            </div>
                            <div class="col-xl-6 col-md-6">
                                <div class="counter-wrap mb-60">
									<span class="icon">
										<i class="far fa-users-crown"></i>
									</span>
                                    <h4><span>97</span>+</h4>
                                    <p>Expert Member</p>
                                </div>
                            </div>
                            <div class="col-xl-6 col-md-6">
                                <div class="counter-wrap mb-60">
									<span class="icon">
										<i class="far fa-trophy-alt"></i>
									</span>
                                    <h4><span>3</span>k+</h4>
                                    <p>Awards Wins</p>
                                </div>
                            </div>
                            <div class="col-xl-6 col-md-6">
                                <div class="counter-wrap mb-60">
									<span class="icon">
										<i class="far fa-trees"></i>
									</span>
                                    <h4><span>65</span>+</h4>
                                    <p>Global Branch</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--    counter-area end    -->

    <!--    testimonial-area start    -->
    <div class="testimonial-area pt-130 pb-130">
        <div class="container">
            <div class="row justify-content-center mb-50">
                <div class="col-xl-5 col-lg-6 col-md-10">
                    <div class="section-title text-center">
                        <h5>Company Reviews</h5>
                        <h3>What Loving People Say About us</h3>
                        <div class="icon">
                            <img src="view/assets/img/icon/icon-5.png" alt="icon">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-12">
                    <div class="testimonial-slider">
                        <div class="testimonial-slide">
                            <div class="row justify-content-center align-items-center">
                                <div class="col-xl-4 col-lg-4 d-none d-xl-block d-lg-block">
                                    <div class="testimonial-img">
                                        <img src="view/assets/img/thumb/author-lg.png" alt="author">
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-8 col-md-10">
                                    <div class="testimonial-details">
                                        <div class="rating">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                        </div>
                                        <p>
                                            Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium
                                            oloremque laudantium totam rem aperiam eaque ipsa quae inventore veritatis
                                            architecto
                                        </p>
                                        <div class="author-wrap">
                                            <div class="author-thumb">
                                                <img src="view/assets/img/thumb/author-1.jpg" alt="author">
                                            </div>
                                            <div class="author-text">
                                                <h5>Sileen P. Willilams</h5>
                                                <p>Web Designer</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="testimonial-slide">
                            <div class="row justify-content-center align-items-center">
                                <div class="col-xl-4 col-lg-4 d-none d-xl-block d-lg-block">
                                    <div class="testimonial-img">
                                        <img src="view/assets/img/thumb/author-lg.png" alt="author">
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-8 col-md-10">
                                    <div class="testimonial-details">
                                        <div class="rating">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                        </div>
                                        <p>
                                            Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium
                                            oloremque laudantium totam rem aperiam eaque ipsa quae inventore veritatis
                                            architecto
                                        </p>
                                        <div class="author-wrap">
                                            <div class="author-thumb">
                                                <img src="view/assets/img/thumb/author-1.jpg" alt="author">
                                            </div>
                                            <div class="author-text">
                                                <h5>Sileen P. Willilams</h5>
                                                <p>Web Designer</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="testimonial-slide">
                            <div class="row justify-content-center align-items-center">
                                <div class="col-xl-4 col-lg-4 d-none d-xl-block d-lg-block">
                                    <div class="testimonial-img">
                                        <img src="view/assets/img/thumb/author-lg.png" alt="author">
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-8 col-md-10">
                                    <div class="testimonial-details">
                                        <div class="rating">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                        </div>
                                        <p>
                                            Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium
                                            oloremque laudantium totam rem aperiam eaque ipsa quae inventore veritatis
                                            architecto
                                        </p>
                                        <div class="author-wrap">
                                            <div class="author-thumb">
                                                <img src="view/assets/img/thumb/author-1.jpg" alt="author">
                                            </div>
                                            <div class="author-text">
                                                <h5>Sileen P. Willilams</h5>
                                                <p>Web Designer</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--    testimonial-area end    -->

    <!--    blog-area start    -->
    <div class="blog-area pt-130 pb-100 bg-fix" style="background-image: url(view/assets/img/bg/map-bg.png)">
        <div class="container">
            <div class="row justify-content-center mb-50">
                <div class="col-xl-5 col-lg-6 col-md-10">
                    <div class="section-title text-center">
                        <h5>Articles & Tips</h5>
                        <h3>Let’s Read Our Latest News & Blog</h3>
                        <div class="icon">
                            <img src="view/assets/img/icon/icon-5.png" alt="icon">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-4 col-lg-6">
                    <div class="blog-box-wrap">
                        <div class="blog-box-thumb">
                            <a href="blog-details.html">
                                <img src="view/assets/img/thumb/blog-1.jpg" alt="blog">
                            </a>
                            <div class="blog-box-date">
                                30
                                <span>apr</span>
                            </div>
                        </div>
                        <div class="blog-box-details">
                            <h4>
                                <a href="blog-details.html">Building Killer Robots Game Sehavior iOS With Fuzzy</a>
                            </h4>
                            <a href="blog-details.html" class="read-more">raed more <i
                                    class="far fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-6">
                    <div class="blog-box-wrap">
                        <div class="blog-box-thumb">
                            <a href="blog-details.html">
                                <img src="view/assets/img/thumb/blog-2.jpg" alt="blog">
                            </a>
                            <div class="blog-box-date">
                                30
                                <span>apr</span>
                            </div>
                        </div>
                        <div class="blog-box-details">
                            <h4>
                                <a href="blog-details.html">Make Em Shine How To Use Illustrations To Elicits</a>
                            </h4>
                            <a href="blog-details.html" class="read-more">raed more <i
                                    class="far fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-6">
                    <div class="blog-box-wrap">
                        <div class="blog-box-thumb">
                            <a href="blog-details.html">
                                <img src="view/assets/img/thumb/blog-3.jpg" alt="blog">
                            </a>
                            <div class="blog-box-date">
                                30
                                <span>apr</span>
                            </div>
                        </div>
                        <div class="blog-box-details">
                            <h4>
                                <a href="blog-details.html">Just Keep Scrolling How To Design Lengthy Lengthy</a>
                            </h4>
                            <a href="blog-details.html" class="read-more">raed more <i
                                    class="far fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--    blog-area end    -->

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
                                <a href="index.html"><img src="view/assets/img/logo/logo-white.png" alt="logo"></a>
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
                        <p class="copyright">Copyright &copy; 2020.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-shape"></div>
    </div>
    <div class="footer-thumb-1">
        <img src="view/assets/img/thumb/thumb-3.png" alt="thumb">
    </div>
    <div class="footer-thumb-2">
        <img src="view/assets/img/thumb/thumb-4.png" alt="thumb">
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