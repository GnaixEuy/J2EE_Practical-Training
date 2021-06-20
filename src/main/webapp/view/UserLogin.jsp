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
          <h3>Coming Soon!</h3>
          <h1>Our New website <br>is on its way</h1>
          <p class="text-5 text-light mb-3">Get notified when we launch.</p>

          <form action="#" method="post" class="w3hny-subscribe-form">
            <input type="email" name="subscribe-form-email" class="form-control required" required=""
                   placeholder="Enter Your Email Here..">
            <button class="btn btn-primary" type="submit"><i class="fa fa-paper-plane" aria-hidden="true"></i></button>
          </form>

        </div>
      </div>
      <!-- /form -->
      <div class="main-hotair">
        <div class="content-wthree">
          <h2>Contact Now</h2>
          <form action="" method="post" class="signin-form">
            <div class="input-grids">
              <input type="text" name="w3lName" id="w3lName" placeholder="Your Name*" class="contact-input" autofocus
                     required=""/>
              <input type="email" name="w3lSender" id="w3lSender" placeholder="Your Email*" class="contact-input"
                     autofocus
                     required=""/>
              <textarea name="w3lMessage" id="w3lMessage" placeholder="Your Query*" required="" autofocus></textarea>
            </div>
            <button class="btn" type="submit">Send Message</button>

          </form>
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
    <div class="copyright text-center">
      <p class="copy-footer-29">Copyright &copy; 2021.Company name All rights reserved.<a target="_blank"
                                                                                          href="https://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
      </p>
    </div>
    <!-- //copyright-->
  </div>
</div>
<!-- //form section start -->
<!-- js -->
<script src="${pageContext.request.contextPath}/view/assets/js/jquery.min.js"></script>
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
