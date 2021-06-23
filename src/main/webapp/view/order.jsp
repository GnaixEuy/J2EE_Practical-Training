<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: GnaixEuy
  Date: 2021/6/17
  Time: 21:18
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title></title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="description" content="">
    <meta name="author" content="Xiaoying Riley at 3rd Wave Media">
    <link rel="shortcut icon" href="favicon.ico">

    <!-- FontAwesome JS-->
    <script defer src="${pageContext.request.contextPath}/view/assets/plugins/fontawesome/js/all.min.js"></script>

    <!-- App CSS -->
    <link id="theme-style" rel="stylesheet" href="${pageContext.request.contextPath}/view/assets/css/portal.css">

    <script src="${pageContext.request.contextPath}/view/assets/js/jquery-3.4.1.min.js"></script>

</head>

<body class="app">

<div class="app-content pt-3 p-md-3 p-lg-4 ">

    <%--    <div class="app-content pt-3 p-md-3 p-lg-4">--%>
    <%--        <div class="container-xl">--%>

    <div class="row g-3 mb-4 align-items-center justify-content-between">
        <div class="col-auto">
            <h1 class="app-page-title mb-0">Orders</h1>
        </div>
        <div class="col-auto">
            <div class="page-utilities">
                <div class="row g-2 justify-content-start justify-content-md-end align-items-center">
                    <div class="col-auto">
                        <form class="table-search-form row gx-1 align-items-center">
                            <div class="col-auto">
                                <input type="text" id="search-orders" name="searchorders"
                                       class="form-control search-orders" placeholder="Search">
                            </div>
                            <div class="col-auto">
                                <button type="submit" class="btn app-btn-secondary">Search</button>
                            </div>
                        </form>

                    </div><!--//col-->
                </div><!--//row-->
            </div><!--//table-utilities-->
        </div><!--//col-auto-->
    </div><!--//row-->


    <nav id="orders-table-tab" class="orders-table-tab app-nav-tabs nav shadow-sm flex-column flex-sm-row mb-4">
        <a class="flex-sm-fill text-sm-center nav-link active" id="orders-all-tab" data-toggle="tab"
           href="#orders-all" role="tab" aria-controls="orders-all" aria-selected="true">All</a>
        <a class="flex-sm-fill text-sm-center nav-link" id="orders-paid-tab" data-toggle="tab"
           href="#orders-paid" role="tab" aria-controls="orders-paid" aria-selected="false">Finish</a>
        <a class="flex-sm-fill text-sm-center nav-link" id="orders-pending-tab" data-toggle="tab"
           href="#orders-pending" role="tab" aria-controls="orders-pending" aria-selected="false">Pending</a>
        <a class="flex-sm-fill text-sm-center nav-link" id="orders-cancelled-tab" data-toggle="tab"
           href="#orders-cancelled" role="tab" aria-controls="orders-cancelled"
           aria-selected="false">Cancelled</a>
    </nav>


    <div class="tab-content" id="orders-table-tab-content">
        <div class="tab-pane fade show active" id="orders-all" role="tabpanel" aria-labelledby="orders-all-tab">
            <div class="app-card app-card-orders-table shadow-sm mb-5">
                <div class="app-card-body">
                    <div class="table-responsive">
                        <table class="table app-table-hover mb-0 text-left">
                            <thead>
                            <tr>
                                <th class="cell">Order</th>
                                <th class="cell">Product</th>
                                <th class="cell">ShopKeeper</th>
                                <th class="cell">Date</th>
                                <th class="cell">Price</th>
                                <th class="cell">Status</th>
                                <th class="cell" colspan="2" style="text-align: center">修改状态</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${requestScope.orderList}" var="order" varStatus="i">
                                <tr>
                                    <td class="cell">${order.id}</td>
                                    <td class="cell"><span class="truncate">${order.productName}</span>
                                    </td>
                                    <td class="cell">${sessionScope.adminUserName}</td>
                                    <td class="cell"><span>
                                            ${order.puchaseTime.month}月${order.puchaseTime.day}日
                                            </span>
                                        <span class="note">
                                                ${order.puchaseTime.year+1900}年
                                        </span>
                                    </td>
                                    <td class="cell">${order.puchasingPrice}</td>
                                    <c:if test="${'Pending'.equals(order.status)}">
                                        <td class="cell"><span class="badge bg-warning">Pending...</span></td>
                                        <td class="cell"><a class="btn-sm app-btn-secondary"
                                                            href="${pageContext.request.contextPath}/UpDealOrderServlet.do?orderId=${order.id}&changeStatus=Finish">完成订单</a>
                                        </td>
                                        <td class="cell"><a class="btn-sm app-btn-secondary"
                                                            href="${pageContext.request.contextPath}/UpDealOrderServlet.do?orderId=${order.id}&changeStatus=Cancelled">取消订单</a>
                                        </td>
                                    </c:if>
                                    <c:if test="${'Finish'.equals(order.status)}">
                                        <td class="cell"><span class="badge bg-success">Finish</span></td>
                                        <td class="cell"></td>
                                        <td class="cell"></td>
                                    </c:if>
                                    <c:if test="${'Cancelled'.equals(order.status)}">
                                        <td class="cell"><span class="badge bg-danger">Cancelled</span></td>
                                        <td class="cell"></td>
                                        <td class="cell"></td>
                                    </c:if>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div><!--//table-responsive-->

                </div><!--//app-card-body-->
            </div><!--//app-card-->
            <nav class="app-pagination">
                <ul class="pagination justify-content-center">
                    <li class="page-item disabled">
                        <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                    </li>
                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#">Next</a>
                    </li>
                </ul>
            </nav><!--//app-pagination-->

        </div><!--//tab-pane-->

        <div class="tab-pane fade" id="orders-paid" role="tabpanel" aria-labelledby="orders-paid-tab">
            <div class="app-card app-card-orders-table mb-5">
                <div class="app-card-body">
                    <div class="table-responsive">

                        <table class="table mb-0 text-left">
                            <thead>
                            <tr>
                                <th class="cell">Order</th>
                                <th class="cell">Product</th>
                                <th class="cell">ShopKeeper</th>
                                <th class="cell">Date</th>
                                <th class="cell">Price</th>
                                <th class="cell">Status</th>
                                <th class="cell"></th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${requestScope.orderList}" var="order" varStatus="i">
                                <c:if test="${'Finish'.equals(order.status)}">
                                    <tr>
                                        <td class="cell">${order.id}</td>
                                        <td class="cell"><span class="truncate">${order.productName}</span>
                                        </td>
                                        <td class="cell">${sessionScope.adminUserName}</td>
                                        <td class="cell"><span>
                                            ${order.puchaseTime.month}月${order.puchaseTime.day}日
                                            </span>
                                            <span class="note">
                                                ${order.puchaseTime.year+1900}年
                                        </span>
                                        </td>
                                        <td class="cell">${order.puchasingPrice}</td>

                                        <td class="cell"><span class="badge bg-success">Finish</span></td>
                                    </tr>
                                </c:if>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div><!--//table-responsive-->
                </div><!--//app-card-body-->
            </div><!--//app-card-->
        </div><!--//tab-pane-->

        <div class="tab-pane fade" id="orders-pending" role="tabpanel" aria-labelledby="orders-pending-tab">
            <div class="app-card app-card-orders-table mb-5">
                <div class="app-card-body">
                    <div class="table-responsive">
                        <table class="table mb-0 text-left">
                            <thead>
                            <tr>
                                <th class="cell">Order</th>
                                <th class="cell">Product</th>
                                <th class="cell">ShopKeeper</th>
                                <th class="cell">Date</th>
                                <th class="cell">Price</th>
                                <th class="cell">Status</th>
                                <th class="cell" colspan="2" style="text-align: center">修改状态</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${requestScope.orderList}" var="order" varStatus="i">
                                <c:if test="${'Pending'.equals(order.status)}">
                                    <tr>
                                        <td class="cell">${order.id}</td>
                                        <td class="cell"><span class="truncate">${order.productName}</span>
                                        </td>
                                        <td class="cell">${sessionScope.adminUserName}</td>
                                        <td class="cell"><span>
                                            ${order.puchaseTime.month}月${order.puchaseTime.day}日
                                            </span>
                                            <span class="note">
                                                ${order.puchaseTime.year+1900}年
                                        </span>
                                        </td>
                                        <td class="cell">${order.puchasingPrice}</td>
                                        <td class="cell"><span class="badge bg-warning">Pending...</span></td>
                                        <td class="cell"><a class="btn-sm app-btn-secondary"
                                                            href="${pageContext.request.contextPath}/UpDealOrderServlet.do?orderId=${order.id}&changeStatus=Finish">完成订单</a>
                                        </td>
                                        <td class="cell"><a class="btn-sm app-btn-secondary"
                                                            href="${pageContext.request.contextPath}/UpDealOrderServlet.do?orderId=${order.id}&changeStatus=Cancelled">取消订单</a>
                                        </td>
                                    </tr>
                                </c:if>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div><!--//table-responsive-->
                </div><!--//app-card-body-->
            </div><!--//app-card-->
        </div><!--//tab-pane-->
        <div class="tab-pane fade" id="orders-cancelled" role="tabpanel" aria-labelledby="orders-cancelled-tab">
            <div class="app-card app-card-orders-table mb-5">
                <div class="app-card-body">
                    <div class="table-responsive">
                        <table class="table mb-0 text-left">
                            <thead>
                            <tr>
                                <th class="cell">Order</th>
                                <th class="cell">Product</th>
                                <th class="cell">ShopKeeper</th>
                                <th class="cell">Date</th>
                                <th class="cell">Price</th>
                                <th class="cell">Status</th>
                                <th class="cell"></th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${requestScope.orderList}" var="order" varStatus="i">
                                <c:if test="${'Cancelled'.equals(order.status)}">
                                    <tr>
                                        <td class="cell">${order.id}</td>
                                        <td class="cell"><span class="truncate">${order.productName}</span>
                                        </td>
                                        <td class="cell">${sessionScope.adminUserName}</td>
                                        <td class="cell"><span>
                                            ${order.puchaseTime.month}月${order.puchaseTime.day}日
                                            </span>
                                            <span class="note">
                                                ${order.puchaseTime.year+1900}年
                                            </span>
                                        </td>
                                        <td class="cell">${order.puchasingPrice}</td>
                                        <td class="cell"><span class="badge bg-danger">Cancelled</span></td>
                                    </tr>
                                </c:if>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div><!--//table-responsive-->
                </div><!--//app-card-body-->
            </div><!--//app-card-->
        </div><!--//tab-pane-->
    </div><!--//tab-content-->


</div><!--//container-fluid-->
<%--    </div><!--//app-content-->--%>

<%--    <footer class="app-footer">--%>
<%--        <div class="container text-center py-3">--%>
<%--            <!--/* This template is free as long as you keep the footer attribution link. If you'd like to use the template without the attribution link, you can buy the commercial license via our website: themes.3rdwavemedia.com Thank you for your support. :) */-->--%>
<%--            <small class="copyright">Copyright &copy; 2021.Company name All rights reserved.<a target="_blank"--%>
<%--                                                                                               href="https://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></small>--%>

<%--        </div>--%>
<%--    </footer><!--//app-footer-->--%>

<%--</div><!--//app-wrapper-->--%>


<!-- Javascript -->
<script src="${pageContext.request.contextPath}/view/assets/plugins/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/view/assets/plugins/bootstrap/js/bootstrap.min.js"></script>


<!-- Page Specific JS -->
<script src="${pageContext.request.contextPath}/view/assets/js/app.js"></script>

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

