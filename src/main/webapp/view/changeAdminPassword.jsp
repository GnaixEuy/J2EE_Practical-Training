<%--
  Created by IntelliJ IDEA.
  User: GnaixEuy
  Date: 2021/6/17
  Time: 16:09
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员密码修改</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/view/assets/css/portal.css"/>
    <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.4.1/css/bootstrap.css" rel="stylesheet">
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#changePassword").click(function () {
                    if ($("#passwordtext").val() === $("#passwordtext2").val()) {
                        $("#passwordform").submit();
                    } else {
                        alert("两次密码不一致")
                        $("#passwordtext2").val("")
                    }
                }
            )
        });
    </script>

    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>

<div class="row g-0 app-auth-wrapper">
    <div class="col-12 col-md-7 col-lg-6 auth-main-col text-center p-5">
        <div class="d-flex flex-column align-content-end">
            <div class="app-auth-body mx-auto">
                <div class="app-auth-branding mb-4"><a class="app-logo" href="index.html">
                    <img class="logo-icon mr-2"
                         src="http://blog.GnaixEuy.cn/wp-content/uploads/2021/06/DAD20A172A1B097D1A9DE3E5D72D47E3.jpg"
                         alt="logo"></a></div>
                <h2 class="auth-heading text-center mb-4">重置密码</h2>

                <div class="auth-intro mb-4 text-center">
                </div>

                <div class="auth-form-container text-left">

                    <form class="auth-form resetpass-form" method="post"
                          action="${pageContext.request.contextPath}/AdminChangePasswordServlet.do">
                        <div class="email mb-3">
                            <label class="sr-only" for="passwordtext">更改密码</label>
                            <input id="passwordtext" name="passwordtext" type="text" class="form-control login-email"
                                   placeholder="新密码" required="required">
                        </div><!--//form-group-->

                        <div class="email mb-3">
                            <label class="sr-only" for="passwordtext2">确认密码</label>
                            <input id="passwordtext2" name="passwordtext2" type="text" class="form-control login-email"
                                   placeholder="确认密码" required="required">
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn app-btn-primary btn-block theme-btn mx-auto">修改密码
                            </button>
                        </div>
                    </form>

                </div><!--//auth-form-container-->


            </div><!--//auth-body-->

<%--            <footer class="app-auth-footer">--%>

<%--            </footer><!--//app-auth-footer-->--%>
        </div><!--//flex-column-->
    </div><!--//auth-main-col-->
    <div class="col-12 col-md-5 col-lg-6 h-100 auth-background-col">
        <div class="auth-background-holder">
        </div>
        <div class="auth-background-mask"></div>
        <div class="auth-background-overlay p-3 p-lg-5">
            <div class="d-flex flex-column align-content-end h-100">
                <div class="h-100"><img src="http://blog.GnaixEuy.cn/wp-content/uploads/2021/06/background-3.jpg" style="width: 100% ;height: 100%"></div>

            </div>
        </div><!--//auth-background-overlay-->
    </div><!--//auth-background-col-->
</div><!--//row-->
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
