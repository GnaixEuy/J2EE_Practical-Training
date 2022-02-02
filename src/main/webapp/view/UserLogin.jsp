<%--
  Created by IntelliJ IDEA.
  User: GnaixEuy
  Date: 2021/6/20
  Time: 20:08
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>会员登入</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8"/>
    <meta name="keywords"
          content="Slot Coming Soon Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template"/>
    <!-- //Meta tag Keywords -->
    <link href="https://fonts.googleapis.com/css2?family=Hind:wght@400;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
    <!--/Style-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/assets/css/style.css" type="text/css"
          media="all"/>
    <!--//Style-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/assets/css/fontawesome.min.css" type="text/css"
          media="all">

</head>

<body>
<div id="block" class="w3lvide-content" data-vide-bg="${pageContext.request.contextPath}/view/assets/images/slot"
     data-vide-options="position: 0% 50%">
    <div class="wrapper">
        <div class="workinghny-form-grid">
            <div class="slot-w3l-comingsoon">
                <div class="slot-w3content">
                    <%--          <h3>意见输入框</h3>--%>
                    <h1>您的满意是我们<br>永恒的追求</h1>
                    <p class="text-5 text-light mb-3"></p>

                    <form action="${pageContext.request.contextPath}/MakeAppraiseServlet.do" method="post"
                          class="w3hny-subscribe-form">
                        <input type="text" name="thinking" class="form-control required" required=""
                               placeholder="请输入您对我们的意见">
                        <button class="btn btn-primary" type="submit">
                            <i class="fa fa-paper-plane" aria-hidden="true"></i>
                        </button>
                    </form>

                </div>
            </div>
            <!-- /form -->
            <div class="main-hotair">
                <div class="content-wthree">
                    <h2>咔咔西会员登陆</h2>
                    <form action="${pageContext.request.contextPath}/UserLoginVerificationServlet.do" method="post"
                          class="signin-form">
                        <div class="input-grids">
                            <input type="text" name="id" id="w3lName" placeholder="用户名" class="contact-input"
                                   autofocus required=""/>
                            <input type="password" name="password" id="w3lSender" placeholder="密码" class="contact-input"
                                   autofocus required=""/>
                        </div>
                        <button class="btn" type="submit">登陆</button>
                        </br>
                    </form>
                    <div class="auth-option text-center pt-5">
                        <a class="app-link " href="${pageContext.request.contextPath}/view/signup.jsp"
                           style="margin-top: 30px">
                            <button class="btn" type="submit" style="margin: 1px">注册</button>
                        </a>
                    </div>
                </div>
                <div class="social-login">
                    <a href="#facebook">

                        <span class="fa fa-facebook" aria-hidden="true"></span>


                    </a>
                    <a href="#twiter">

                        <span class="fa fa-twitter" aria-hidden="true"></span>

                    </a>
                    <a href="#google">

                        <span class="fa fa-google-plus" aria-hidden="true"></span>

                    </a>

                    <a href="#insta">

                        <span class="fa fa-pinterest" aria-hidden="true"></span>
                    </a>
                </div>
            </div>

        </div>
        <!-- //form -->
    </div>
    <!-- copyright-->
    <%--    <div class="copyright text-center">--%>
    <%--      <p class="copy-footer-29">Copyright &copy; 2021.Company name All rights reserved.<a target="_blank"--%>
    <%--                                                                                          href="https://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>--%>
    <%--      </p>--%>
    <%--    </div>--%>
    <!-- //copyright-->
</div>
</div>
<!-- //form section start -->
<!-- js -->
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- //js -->
<script src="${pageContext.request.contextPath}/view/assets/js/jquery.vide.js"></script>
<script>
    // $(document).ready(function () {
    //     $("#block").vide("video/ocean"); // Non declarative initialization
    //
    //     var instance = $("#block").data("vide"); // Get instance
    //     var video = instance.getVideoObject(); // Get video object
    //     instance.destroy(); // Destroy instance
    // });
</script>
</body>

</html>
<script type="text/javascript">
    /* 鼠标特效 */
    var a_idx = 0;
    $("body").click(function (e) {
        var a = ["欢迎光临", "GnaixEuy", "Utah", "元芳，你怎么看？", "针不戳 ", "什么是快乐星球 ", "祖安人", "达咩", "小丑竟是我自己"];
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
