<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: GnaixEuy
  Date: 2021/6/17
  Time: 13:31
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>卡卡西奶茶店管理系统后台</title>
    <%--    卡卡西奶茶店管理系统后台--%>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="description" content="">
    <link rel="shortcut icon" href="favicon.ico">
    <!-- App CSS -->
    <link id="theme-style" rel="stylesheet" href="${pageContext.request.contextPath}/view/assets/css/portal.css">
    <!-- FontAwesome JS-->
    <script defer src="${pageContext.request.contextPath}/view/assets/plugins/fontawesome/js/all.min.js"></script>
    <script src="${pageContext.request.contextPath}/view/assets/js/jquery-3.4.1.min.js"></script>
    <%--    红点--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/assets/css/red-point.css">

    <%--    音乐--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/assets/css/APlayer.min.css">
    <script src="${pageContext.request.contextPath}/view/assets/js/APlayer.min.js"></script>
</head>

<body class="app">

<header class="app-header fixed-top">
    <div class="app-header-inner">
        <div class="container-fluid py-2">
            <div class="app-header-content">
                <div class="row justify-content-between align-items-center">
                    <div class="col-auto">
                        <a id="sidepanel-toggler" class="sidepanel-toggler d-inline-block d-xl-none" href="#">
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 30 30"
                                 role="img">
                                <title>Menu</title>
                                <path stroke="currentColor" stroke-linecap="round" stroke-miterlimit="10"
                                      stroke-width="2" d="M4 7h22M4 15h22M4 23h22"></path>
                            </svg>
                        </a>
                    </div>
                    <!--//col-->
                    <div class="search-mobile-trigger d-sm-none col">
                        <i class="search-mobile-trigger-icon fas fa-search"></i>
                    </div>
                    <!--//col-->
                    <div class="app-search-box col">
                        <span class="logo-text" style="font-weight: bold">欢迎你管理员：
                            <span style="color: rgba(107,175,131,0.80);">${sessionScope.adminName}</span>
                        </span>
                    </div>
                    <!--//app-search-box-->

                    <div class="app-utilities col-auto">
                        <div class="aplayer"
                             data-id="8043500645"
                                 data-fixed="true"
                             data-server="tencent"
                             data-volume="0.7"
                             data-type="playlist"
                             data-autoplay="true"
                             order="random"
                             id="aplayermusic"
                        >
                        </div>
                        <script src="${pageContext.request.contextPath}/view/assets/js/Meting.min.js"></script>

                        <div class="app-utility-item app-user-dropdown dropdown">
                            <a class="dropdown-toggle" id="user-dropdown-toggle" data-toggle="dropdown" href="#"
                               role="button" aria-expanded="false"><img
                                    src="${pageContext.request.contextPath}/view/assets/images/user.png"
                                    alt="user profile"></a>
                            <ul class="dropdown-menu" aria-labelledby="user-dropdown-toggle">
                                <li><a class="dropdown-item" href="account.html">Account</a></li>
                                <li><a class="dropdown-item" href="settings.html">Settings</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item"
                                       href="${pageContext.request.contextPath}/AdminExitServlet.do">Log Out</a></li>
                            </ul>
                        </div>
                        <!--//app-user-dropdown-->
                    </div>
                    <!--//app-utilities-->
                </div>
                <!--//row-->
            </div>
            <!--//app-header-content-->
        </div>
        <!--//container-fluid-->
    </div>
    <!--//app-header-inner-->
    <div id="app-sidepanel" class="app-sidepanel">
        <div id="sidepanel-drop" class="sidepanel-drop"></div>
        <div class="sidepanel-inner d-flex flex-column">
            <a href="#" id="sidepanel-close" class="sidepanel-close d-xl-none">&times;</a>
            <div class="app-branding">
                <a class="app-logo" href="index.jsp">
                    <img class="logo-icon mr-2"
                         src="${pageContext.request.contextPath}/view/assets/images/app-logo.svg"
                         alt="logo"><span class="logo-text">KaKaxi</span></a>

            </div>
            <!--//app-branding-->

            <nav id="app-nav-main" class="app-nav app-nav-main flex-grow-1">
                <ul class="app-menu list-unstyled accordion" id="menu-accordion">
                    <li class="nav-item">

                        <a class="nav-link active" href="${pageContext.request.contextPath}/UpdateUserServlet.do">
									<span class="nav-icon">
										<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-house-door"
                                             fill="currentColor" xmlns="http://www.w3.org/2000/svg">
											<path fill-rule="evenodd"
                                                  d="M7.646 1.146a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 .146.354v7a.5.5 0 0 1-.5.5H9.5a.5.5 0 0 1-.5-.5v-4H7v4a.5.5 0 0 1-.5.5H2a.5.5 0 0 1-.5-.5v-7a.5.5 0 0 1 .146-.354l6-6zM2.5 7.707V14H6v-4a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 .5.5v4h3.5V7.707L8 2.207l-5.5 5.5z"/>
											<path fill-rule="evenodd"
                                                  d="M13 2.5V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
										</svg>
									</span>
                            <span class="nav-link-text">概述</span>
                        </a>
                        <!--//nav-link-->
                    </li>
                    <!--//nav-item-->
                    <li class="nav-item">

                        <a class="nav-link" href="docs.html">
									<span class="nav-icon">
										<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-folder"
                                             fill="currentColor" xmlns="http://www.w3.org/2000/svg">
											<path
                                                    d="M9.828 4a3 3 0 0 1-2.12-.879l-.83-.828A1 1 0 0 0 6.173 2H2.5a1 1 0 0 0-1 .981L1.546 4h-1L.5 3a2 2 0 0 1 2-2h3.672a2 2 0 0 1 1.414.586l.828.828A2 2 0 0 0 9.828 3v1z"/>
											<path fill-rule="evenodd"
                                                  d="M13.81 4H2.19a1 1 0 0 0-.996 1.09l.637 7a1 1 0 0 0 .995.91h10.348a1 1 0 0 0 .995-.91l.637-7A1 1 0 0 0 13.81 4zM2.19 3A2 2 0 0 0 .198 5.181l.637 7A2 2 0 0 0 2.826 14h10.348a2 2 0 0 0 1.991-1.819l.637-7A2 2 0 0 0 13.81 3H2.19z"/>
										</svg>
									</span>
                            <span class="nav-link-text">文档</span>
                        </a>
                        <!--//nav-link-->
                    </li>
                    <!--//nav-item-->
                    <li class="nav-item">

                        <a class="nav-link" href="${pageContext.request.contextPath}/QueryOrderServlet.do"
                           target="content">
									<span class="nav-icon">
										<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-card-list"
                                             fill="currentColor" xmlns="http://www.w3.org/2000/svg">
											<path fill-rule="evenodd"
                                                  d="M14.5 3h-13a.5.5 0 0 0-.5.5v9a.5.5 0 0 0 .5.5h13a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z"/>
											<path fill-rule="evenodd"
                                                  d="M5 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 5 8zm0-2.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm0 5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5z"/>
											<circle cx="3.5" cy="5.5" r=".5"/>
											<circle cx="3.5" cy="8" r=".5"/>
											<circle cx="3.5" cy="10.5" r=".5"/>
										</svg>
									</span>
                            <span class="nav-link-text">订单信息</span>
                        </a>
                        <!--//nav-link-->
                    </li>
                    <!--//nav-item-->
                    <li class="nav-item has-submenu">

                        <a class="nav-link submenu-toggle" href="#" data-toggle="collapse"
                           data-target="#submenu-1" aria-expanded="false" aria-controls="submenu-1"
                           id="usermanager">
									<span class="nav-icon">
										<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-files"
                                             fill="currentColor" xmlns="http://www.w3.org/2000/svg">
											<path fill-rule="evenodd"
                                                  d="M4 2h7a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2zm0 1a1 1 0 0 0-1 1v10a1 1 0 0 0 1 1h7a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H4z"/>
											<path
                                                    d="M6 0h7a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2v-1a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H6a1 1 0 0 0-1 1H4a2 2 0 0 1 2-2z"/>
										</svg>
									</span>
                            <span class="nav-link-text">会员信息管理</span>
                            <span class="submenu-arrow">
										<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-chevron-down"
                                             fill="currentColor" xmlns="http://www.w3.org/2000/svg">
											<path fill-rule="evenodd"
                                                  d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"/>
										</svg>
									</span>
                            <!--//submenu-arrow-->
                        </a>
                        <!--//nav-link-->
                        <div id="submenu-1" class="collapse submenu submenu-1" data-parent="#menu-accordion">
                            <ul class="submenu-list list-unstyled">
                                <li class="submenu-item">
                                    <a class="submenu-link"
                                       href="${pageContext.request.contextPath}/view/signup.jsp"
                                       target="content">新增会员</a>
                                </li>
                                <li class="submenu-item">
                                    <a class="submenu-link" href="${pageContext.request.contextPath}/AllUserServlet.do"
                                       target="content">全体信息
                                        <c:if test="${requestScope.UsersNum == 0}">
                                            <span class="minicart-number-red">${requestScope.UsersNum}</span></c:if>
                                        <c:if test="${requestScope.UsersNum != 0}">
                                            <span class="minicart-number-green">${requestScope.UsersNum}</span></c:if>
                                    </a>
                                </li>
                                <%--                                <li class="submenu-item">--%>
                                <%--                                    <a class="submenu-link"--%>
                                <%--                                       href="${pageContext.request.contextPath}/view/editor.jsp"--%>
                                <%--                                       target="content">修改账户</a></li>--%>
                            </ul>
                        </div>
                    </li>
                    <!--//nav-item-->
                    <li class="nav-item has-submenu">

                        <a class="nav-link submenu-toggle" href="#" data-toggle="collapse"
                           data-target="#submenu-2" aria-expanded="false" aria-controls="submenu-2" id="user">
									<span class="nav-icon">

										<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-columns-gap"
                                             fill="currentColor" xmlns="http://www.w3.org/2000/svg">
											<path fill-rule="evenodd"
                                                  d="M6 1H1v3h5V1zM1 0a1 1 0 0 0-1 1v3a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1V1a1 1 0 0 0-1-1H1zm14 12h-5v3h5v-3zm-5-1a1 1 0 0 0-1 1v3a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1v-3a1 1 0 0 0-1-1h-5zM6 8H1v7h5V8zM1 7a1 1 0 0 0-1 1v7a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1V8a1 1 0 0 0-1-1H1zm14-6h-5v7h5V1zm-5-1a1 1 0 0 0-1 1v7a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1V1a1 1 0 0 0-1-1h-5z"/>
										</svg>
									</span>
                            <span class="nav-link-text">商品管理</span>
                            <span class="submenu-arrow">
										<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-chevron-down"
                                             fill="currentColor" xmlns="http://www.w3.org/2000/svg">
											<path fill-rule="evenodd"
                                                  d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"/>
										</svg>
									</span>
                            <!--//submenu-arrow-->
                        </a>
                        <!--//nav-link-->
                        <div id="submenu-2" class="collapse submenu submenu-2" data-parent="#menu-accordion">
                            <ul class="submenu-list list-unstyled">
                                <li class="submenu-item"><a class="submenu-link"
                                                            href="${pageContext.request.contextPath}/AddProductInitServlet.do"
                                                            target="content">
                                    增加商品
                                </a>
                                </li>
                                <%--                                <li class="submenu-item"><a class="submenu-link" href="signup.html">删除商品</a>--%>
                                <%--                                </li>--%>
                                <li class="submenu-item"><a class="submenu-link minicart-title"
                                                            target="content"
                                                            href="${pageContext.request.contextPath}/AllProductsServlet.do?type=all">所有商品
                                    <c:if test="${requestScope.Account == 0}">
                                        <span class="minicart-number-red">${requestScope.Account}</span></c:if>
                                    <c:if test="${requestScope.Account != 0}">
                                        <span class="minicart-number-green">${requestScope.Account}</span></c:if>
                                </a>

                                </li>
                                <%--                                <li class="submenu-item"><a target="content" class="submenu-link" href="#">修改商品</a>--%>
                                <%--                                </li>--%>
                            </ul>
                        </div>
                    </li>
                    <!--//nav-item-->


                    <li class="nav-item">

                        <a target="content" class="nav-link"
                           href="${pageContext.request.contextPath}/QueryMaterialsInfoServlet.do">
									<span class="nav-icon">
										<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-bar-chart-line"
                                             fill="currentColor" xmlns="http://www.w3.org/2000/svg">
											<path fill-rule="evenodd"
                                                  d="M11 2a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v12h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1v-3a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3h1V7a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7h1V2zm1 12h2V2h-2v12zm-3 0V7H7v7h2zm-5 0v-3H2v3h2z"/>
										</svg>
									</span>
                            <span class="nav-link-text">原料库存</span>
                        </a>
                        <!--//nav-link-->
                    </li>
                    <!--//nav-item-->

                    <li class="nav-item">

                        <a class="nav-link" href="help.html">
									<span class="nav-icon">
										<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-question-circle"
                                             fill="currentColor" xmlns="http://www.w3.org/2000/svg">
											<path fill-rule="evenodd"
                                                  d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
											<path
                                                    d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z"/>
										</svg>
									</span>
                            <span class="nav-link-text">用户反馈</span>
                        </a>
                        <!--//nav-link-->
                    </li>
                    <!--//nav-item-->
                </ul>
                <!--//app-menu-->
            </nav>
            <!--//app-nav-->
            <div class="app-sidepanel-footer">
                <nav class="app-nav app-nav-footer">
                    <ul class="app-menu footer-menu list-unstyled">
                        <!--//nav-item-->
                        <li class="nav-item">

                            <a class="nav-link"
                               href="${pageContext.request.contextPath}/view/changeAdminPassword.jsp" target="content">
										<span class="nav-icon">
											<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-file-person"
                                                 fill="currentColor" xmlns="http://www.w3.org/2000/svg">
												<path fill-rule="evenodd"
                                                      d="M12 1H4a1 1 0 0 0-1 1v10.755S4 11 8 11s5 1.755 5 1.755V2a1 1 0 0 0-1-1zM4 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H4z"/>
												<path fill-rule="evenodd" d="M8 10a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
											</svg>
										</span>
                                <span class="nav-link-text">修改管理员密码(${sessionScope.adminName})</span>
                            </a>
                            <!--//nav-link-->
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="settings.html" target="content">
										<span class="nav-icon">
											<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-gear"
                                                 fill="currentColor" xmlns="http://www.w3.org/2000/svg">
												<path fill-rule="evenodd"
                                                      d="M8.837 1.626c-.246-.835-1.428-.835-1.674 0l-.094.319A1.873 1.873 0 0 1 4.377 3.06l-.292-.16c-.764-.415-1.6.42-1.184 1.185l.159.292a1.873 1.873 0 0 1-1.115 2.692l-.319.094c-.835.246-.835 1.428 0 1.674l.319.094a1.873 1.873 0 0 1 1.115 2.693l-.16.291c-.415.764.42 1.6 1.185 1.184l.292-.159a1.873 1.873 0 0 1 2.692 1.116l.094.318c.246.835 1.428.835 1.674 0l.094-.319a1.873 1.873 0 0 1 2.693-1.115l.291.16c.764.415 1.6-.42 1.184-1.185l-.159-.291a1.873 1.873 0 0 1 1.116-2.693l.318-.094c.835-.246.835-1.428 0-1.674l-.319-.094a1.873 1.873 0 0 1-1.115-2.692l.16-.292c.415-.764-.42-1.6-1.185-1.184l-.291.159A1.873 1.873 0 0 1 8.93 1.945l-.094-.319zm-2.633-.283c.527-1.79 3.065-1.79 3.592 0l.094.319a.873.873 0 0 0 1.255.52l.292-.16c1.64-.892 3.434.901 2.54 2.541l-.159.292a.873.873 0 0 0 .52 1.255l.319.094c1.79.527 1.79 3.065 0 3.592l-.319.094a.873.873 0 0 0-.52 1.255l.16.292c.893 1.64-.902 3.434-2.541 2.54l-.292-.159a.873.873 0 0 0-1.255.52l-.094.319c-.527 1.79-3.065 1.79-3.592 0l-.094-.319a.873.873 0 0 0-1.255-.52l-.292.16c-1.64.893-3.433-.902-2.54-2.541l.159-.292a.873.873 0 0 0-.52-1.255l-.319-.094c-1.79-.527-1.79-3.065 0-3.592l.319-.094a.873.873 0 0 0 .52-1.255l-.16-.292c-.892-1.64.902-3.433 2.541-2.54l.292.159a.873.873 0 0 0 1.255-.52l.094-.319z"/>
												<path fill-rule="evenodd"
                                                      d="M8 5.754a2.246 2.246 0 1 0 0 4.492 2.246 2.246 0 0 0 0-4.492zM4.754 8a3.246 3.246 0 1 1 6.492 0 3.246 3.246 0 0 1-6.492 0z"/>
											</svg>
										</span>
                                <span class="nav-link-text">开发人员</span>
                            </a>
                            <!--//nav-link-->
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="showMusic" onclick="changStatusMusic()">
										<span class="nav-icon">
											<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-download"
                                                 fill="currentColor" xmlns="http://www.w3.org/2000/svg">
												<path fill-rule="evenodd"
                                                      d="M.5 9.9a.5.5 0 0 1 .5.5v2.5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2.5a.5.5 0 0 1 1 0v2.5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2.5a.5.5 0 0 1 .5-.5z"/>
												<path fill-rule="evenodd"
                                                      d="M7.646 11.854a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V1.5a.5.5 0 0 0-1 0v8.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3z"/>
											</svg>
										</span>
                                <span class="nav-link-text">显示音乐播放器</span>
                            </a>
                            <!--//nav-link-->
                        </li>
                        <!--//nav-item-->
                    </ul>
                    <!--//footer-menu-->
                </nav>
            </div>
            <!--//app-sidepanel-footer-->

        </div>
        <!--//sidepanel-inner-->
    </div>
    <!--//app-sidepanel-->
</header>
<!--//app-header-->

<div class="app-wrapper">
    <iframe frameborder="0" width="100%" height="100%" name="content">
    </iframe>
</div>

</body>
</html>

<!-- Javascript -->
<script src="${pageContext.request.contextPath}/view/assets/plugins/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/view/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
    /* 鼠标特效 */
    var a_idx = 0;
    $("body").click(function (e) {
        var a = new Array("欢迎光临", "GnaixEuy", "Uth", "⁽(◍˃̵͈̑ᴗ˂̵͈̑)⁽", "( 。ớ ₃ờ) ", "(⑅˃◡˂⑅)(╹⚇╹?) ", "ฅ⁽͑ ˚̀ ˙̭ ˚́ ⁾̉", "( ง⁼̴̀ω⁼̴́)ง⁼³₌₃ ( ˃᷄˶˶̫˶˂᷅ )", "(๑ᵒ̴̶̷͈᷄ᗨᵒ̴̶̷͈᷅)", "Ծ‸Ծ", "=͟͟͞͞(꒪⌓꒪*)", "(;-_-)ᴇᴍᴍᴍ");
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
            "color": "#61e084"
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

<!-- Page Specific JS -->
<script src="${pageContext.request.contextPath}/view/assets/js/app.js"></script>

<script>
    window.onload = function () {
        var musicflag = false
        changStatusMusic = function () {
            $("#aplayermusic").hidden = !musicflag
            musicflag = !musicflag
        }
    }

</script>



