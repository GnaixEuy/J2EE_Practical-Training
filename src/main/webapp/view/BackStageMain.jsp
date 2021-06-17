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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.css"/>
    <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.4.1/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
    <div class="page-header">
        <h1>
            卡卡西奶茶店管理系统后台
            <small>
                欢迎你 ${sessionScope.adminName}
            </small>
        </h1>
    </div>
    <div class="row">
        <div class="col-md-2 col-sm-4">
            <ul class="nav nav-pills nav-stacked">
                <li role="presentation" class="active">
                    <a href="index.jsp" target="content">
                        首页
                    </a>
                </li>
                <li role="presentation">
                    <a href="success.html" target="content">
                        会员查询
                    </a>
                </li>
                <li role="presentation">
                    <a href="">
                        产品管理
                    </a>
                </li>
                <li role="presentation">
                    <a href="">
                        产品管理
                    </a>
                </li>
                <li role="presentation">
                    <a href="">
                        产品管理
                    </a>
                </li>
                <li role="presentation">
                    <a href="">
                        产品管理
                    </a>
                </li>
                <li role="presentation">
                    <a href="${pageContext.request.contextPath}/view/changeAdminPassword.jsp" target="content">
                        管理员密码修改
                    </a>
                </li>
            </ul>
        </div>
        <div class="col-md-10 col-sm-8">
            <iframe frameborder="0" width="100%" height="100%" name="content">

            </iframe>
        </div>
    </div>
</div>

</body>
</html>
