<%--
  Created by IntelliJ IDEA.
  User: GnaixEuy
  Date: 2021/6/20
  Time: 14:50
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${requestScope.product.productName}</title>
    <script defer src="${pageContext.request.contextPath}/view/assets/plugins/fontawesome/js/all.min.js"></script>
    <link id="theme-style" rel="stylesheet" href="${pageContext.request.contextPath}/view/assets/css/portal.css">


    <script src="${pageContext.request.contextPath}/view/assets/js/jquery-3.4.1.min.js"></script>
</head>
<body class="app" style="padding: unset">
<div class="col-6 col-md-4 col-xl-3 col-xxl-2">
    <div class="app-card app-card-doc shadow-sm  h-100">
        <div class="app-card-thumb-holder p-3">
            <div class="app-card-thumb">
                <img class="thumb-image" src="view/assets/images/doc-thumb-2.jpg" alt="">
            </div>
            <a class="app-card-link-mask" href="#file-link"></a>
        </div>
        <div class="app-card-body p-3 has-card-actions">

            <h4 class="app-doc-title truncate mb-0"><a href="#file-link">${requestScope.product.productName}</a>
            </h4>
            <div class="app-doc-meta">
                <ul class="list-unstyled mb-0">
                    <li><span class="text-muted">类型:</span> ${requestScope.product.productType}</li>
                    <li><span class="text-muted">价格:</span> ${requestScope.product.productPrice}</li>
                    <li><span class="text-muted">原料:</span>
                        ${requestScope.product.productMaterialsList}
                    </li>
                </ul>
            </div><!--//app-doc-meta-->
            <div class="app-card-actions">
                <div class="dropdown">
                    <div class="dropdown-toggle no-toggle-arrow" data-toggle="dropdown"
                         aria-expanded="false">
                        <svg width="1em" height="1em" viewBox="0 0 16 16"
                             class="bi bi-three-dots-vertical" fill="currentColor"
                             xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
                                  d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z"/>
                        </svg>
                    </div><!--//dropdown-toggle-->
                    <ul class="dropdown-menu dropdown-menu-right">
                        <li><a class="dropdown-item" href="#">
                            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-eye mr-2"
                                 fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
                                      d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.134 13.134 0 0 0 1.66 2.043C4.12 11.332 5.88 12.5 8 12.5c2.12 0 3.879-1.168 5.168-2.457A13.134 13.134 0 0 0 14.828 8a13.133 13.133 0 0 0-1.66-2.043C11.879 4.668 10.119 3.5 8 3.5c-2.12 0-3.879 1.168-5.168 2.457A13.133 13.133 0 0 0 1.172 8z"/>
                                <path fill-rule="evenodd"
                                      d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                            </svg>
                            View</a></li>
                        <li><a class="dropdown-item" href="#">
                            <svg width="1em" height="1em" viewBox="0 0 16 16"
                                 class="bi bi-pencil mr-2"
                                 fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
                                      d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5L13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175l-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z"/>
                            </svg>
                            Edit</a></li>
                        <li><a class="dropdown-item" href="#">
                            <svg width="1em" height="1em" viewBox="0 0 16 16"
                                 class="bi bi-download mr-2" fill="currentColor"
                                 xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
                                      d="M.5 9.9a.5.5 0 0 1 .5.5v2.5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2.5a.5.5 0 0 1 1 0v2.5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2.5a.5.5 0 0 1 .5-.5z"/>
                                <path fill-rule="evenodd"
                                      d="M7.646 11.854a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V1.5a.5.5 0 0 0-1 0v8.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3z"/>
                            </svg>
                            Download</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item"
                               href="${pageContext.request.contextPath}/DeleteProductServlet.do?product_id=${product.id}&product_name=${product.productName}">
                            <svg width="1em" height="1em" viewBox="0 0 16 16"
                                 class="bi bi-trash mr-2"
                                 fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                <path fill-rule="evenodd"
                                      d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4L4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                            </svg>
                            下架商品</a></li>
                    </ul>
                </div><!--//dropdown-->
            </div><!--//app-card-actions-->
        </div><!--//app-card-body-->
    </div><!--//app-card-->
</div>
</body>
</html>
<!-- Javascript -->
<script src="view/assets/plugins/popper.min.js"></script>
<script src="view/assets/plugins/bootstrap/js/bootstrap.min.js"></script>


<!-- Page Specific JS -->
<script src="view/assets/js/app.js"></script>
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