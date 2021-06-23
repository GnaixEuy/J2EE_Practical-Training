<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>修改信息</title>

    <link id="theme-style" rel="stylesheet" href="${pageContext.request.contextPath}/view/assets/css/portal.css">

    <script src="${pageContext.request.contextPath}/view/assets/js/jquery-3.4.1.min.js"></script>


</head>

<body class="app app-signup p-0">
<div class="row g-0 app-auth-wrapper">
    <div class="m-12 md-7 g-6 auth-main text-center p-5">
        <div class="d-flex flex-column align-content-end site">
            <div class="app-auth-body mx-auto">
                <div class="app-auth-branding mb-4"><a class="app-logo">
                    <img class="logo-icon mr-2"
                         src="${pageContext.request.contextPath}/view/assets/images/app-logo.svg"
                         alt="logo"></a></div>
                <h2 class="auth-heading text-center mb-4">信息修改</h2>
                <div class="auth-form-container text-left mx-auto">
                    <form class="auth-form auth-signup-form" method="post"
                          action="${pageContext.request.contextPath}/UpDealServlet.do">
                        <div class="email mb-3">
                            <label class="sr-only">账号</label>

                            <input id="signup-name" readonly name="id" type="text" class="form-control signup-name"
                                   placeholder="请输入账号" value="${requestScope.edituser.userId}">
                        </div>
                        <div class="email mb-3">
                            <label class="sr-only" for="signup-email">姓名</label>
                            <input id="signup-email" name="name" type="text" class="form-control signup-email"
                                   placeholder="请输入姓名" value=${requestScope.edituser.userName}>
                        </div>
                        <div class="password mb-3">
                            <label class="sr-only" for="signup-password">Password</label>
                            <input id="signup-password" name="password" type="text"
                                   class="form-control signup-password" placeholder="请输入密码"
                                   required="required" value=${requestScope.edituser.userPassword}>
                        </div>
                        <div class="password mb-3">
                            <label class="sr-only" for="signup-phone">电话</label>
                            <input id="signup-phone" name="telephone" type="text"
                                   class="form-control signup-password" placeholder="请输入电话"
                                   required="required" value="${requestScope.edituser.userPhone}">
                        </div>

                        <%--              </div>--%>
                </div><!--//extra-->

                <div class="text-center">
                    <button type="submit" class="btn app-btn-primary btn-block theme-btn mx-auto">修改
                    </button>
                </div>
                </form><!--//auth-form-->
            </div><!--//auth-form-container-->


        </div><!--//auth-body-->


    </div>

</div>
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