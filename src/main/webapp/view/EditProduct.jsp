<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>修改信息</title>
    <link id="theme-style" rel="stylesheet" href="${pageContext.request.contextPath}/view/assets/css/portal.css">

    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<c:set var="doubleyin" value='" "'/>
<c:set var="air" value='""'/>
<body class="app app-signup p-0">
<div class="row g-0 app-auth-wrapper">
    <div class="m-12 md-7 g-6 auth-main text-center p-5">
        <div class="d-flex flex-column align-content-end site">
            <div class="app-auth-body mx-auto">
                <div class="app-auth-branding mb-4"><a class="app-logo">
                    <img class="logo-icon mr-3"
                         src="${pageContext.request.contextPath}/upload/${product.id}.jpg"
                         alt="logo"></a>
                </div>
                <h2 class="auth-heading text-center mb-4">信息修改</h2>
                <div class="auth-form-container text-left mx-auto">
                    <form class="auth-form auth-signup-form" method="post"
                          action="${pageContext.request.contextPath}/UpDealProductServlet.do">
                        <div class="email mb-3">
                            <label class="sr-only">商品id</label>
                            <input id="signup-name" readonly name="product_id" type="text"
                                   class="form-control signup-name"
                                   placeholder="请输入账号" value="${requestScope.product.id}">
                        </div>
                        <div class="email mb-3">
                            <label class="sr-only" for="signup-email">姓名</label>
                            <input id="signup-email" name="product_name" type="text" class="form-control signup-email"
                                   placeholder="请输入姓名" value=${requestScope.product.productName}>
                        </div>
                        <div class="password mb-3">
                            <label class="sr-only" for="signup-password">价格</label>
                            <input id="signup-password" name="product_price" type="text"
                                   class="form-control signup-password" placeholder="请输入价格"
                                   required="required" value=${requestScope.product.productPrice}>
                        </div>
                        <div class="password mb-3">
                            <label class="sr-only" for="signup-phone">库存</label>
                            <input id="signup-phone" name="product_store" type="text"
                                   class="form-control signup-password" placeholder="请输入库存"
                                   required="required" value="${requestScope.product.productStore}">
                        </div>

                        <div class="password mb-3">
                            <select class="form-control" name="product_type">
                                <c:forEach items="${requestScope.allProductTypeList}" var="selecttype"
                                           varStatus="i">
                                    <c:if test="${requestScope.product.productType.equals(selecttype)}">
                                        <option value="${selecttype}" selected>
                                                ${selecttype}
                                        </option>
                                    </c:if>
                                    <c:if test="${!requestScope.product.productType.equals(selecttype)}">
                                        <option value="${selecttype}">
                                                ${selecttype}
                                        </option>
                                    </c:if>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="password mb-3">
                            <c:forEach items="${requestScope.materialsList}" var="material" varStatus="i">
                                <label class="checkbox-inline">
                                    <c:if test="${requestScope.product.productMaterials.contains(material.materialName)}">
                                        <input type="checkbox" id="inlineCheckbox" checked name="product_materials"
                                               value="${material.materialName}">
                                        ${material.materialName}
                                    </c:if>
                                    <c:if test="${!requestScope.product.productMaterials.contains(material.materialName)}">
                                        <input type="checkbox" id="inlineCheckbox" name="product_materials"
                                               value="${material.materialName}">
                                        ${material.materialName}
                                    </c:if>
                                </label>
                            </c:forEach>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn app-btn-primary btn-block theme-btn mx-auto">修改
                            </button>
                        </div>
                    </form><!--//auth-form-->
                </div><!--//auth-form-container-->
            </div><!--//auth-body-->
        </div>
    </div>
</div>
</body>
</html>
<script type="text/javascript">
    /* 鼠标特效 */
    var a_idx = 0;
    $("body").click(function (e) {
        var a = ["欢迎光临", "GnaixEuy", "Utah", "元芳，你怎么看？", "针不戳 ", "什么是快乐星球 ",  "祖安人", "达咩",  "小丑竟是我自己"];
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