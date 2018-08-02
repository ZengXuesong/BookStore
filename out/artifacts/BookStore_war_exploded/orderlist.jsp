<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: EdwinPan
  Date: 2018/7/30
  Time: 9:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"><!--<![endif]-->
<head>
    <!-- Basic Page Needs -->
    <meta charset="UTF-8">
    <!--[if IE]>
    <meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
    <title>Wishlist</title>

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- Boostrap style -->
    <link rel="stylesheet" type="text/css" href="stylesheets/bootstrap.min.css">

    <!-- Theme style -->
    <link rel="stylesheet" type="text/css" href="stylesheets/style.css">

    <!-- Reponsive -->
    <link rel="stylesheet" type="text/css" href="stylesheets/responsive.css">


</head>
<body class="header_sticky">
<div class="boxed">

    <div class="overlay"></div>


    <%@include file="comment/header.jsp" %>

    <%--当前位置路径面包屑--%>
    <section class="flat-breadcrumb">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <ul class="breadcrumbs">
                        <li class="trail-item">
                            <a href="index.jsp" title="">Home</a>
                            <span><img src="images/icons/arrow-right.png" alt=""></span>
                        </li>
                        <li class="trail-end">
                            <a href="#" title="">My Wishlist</a>
                        </li>
                    </ul><!-- /.breacrumbs -->
                </div><!-- /.col-md-12 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </section><!-- /.flat-breadcrumb -->

    <section class="flat-wishlist">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="wishlist">
                        <div class="title">
                            <h3>我的订单</h3>
                        </div>
                        <div class="wishlist-content">
                            <table class="table-wishlist">
                                <thead>
                                <tr>
                                    <th>Book Name</th>
                                    <th>Count</th>
                                    <th>Price</th>
                                    <th>States</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${orderlist}"  var="order" varStatus="loop">
                                <tr>
                                    <td>
                                        <div class="delete">
                                            <a href="OrderServlet?type=delete&book_ids=${order.id}" title=""><img src="images/icons/delete.png" alt=""></a>
                                        </div>
                                        <div class="product">
                                            <div class="image">
                                                <img src="images/book/${booklistorder[loop.count-1].image_url}" alt="">
                                            </div>
                                            <div class="name">${booklistorder[loop.count-1].name}<br/>${booklistorder[loop.count-1].price}</div>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="name">
                                           ${order.count} 本
                                        </div>
                                    </td>
                                    <td>
                                        <div class="price">￥${order.all_price}</div>
                                    </td>
                                    <td>
                                        <div class="status-product">
                                            <span>
                                                <c:if test="${order.state == 1}">
                                                    购买成功
                                                </c:if>
                                                 <c:if test="${order.state == 0}">
                                                    未付款
                                                </c:if>
                                            </span>
                                        </div>
                                    </td>

                                </tr>
                                </c:forEach>
                                </tbody>
                            </table><!-- /.table-wishlist -->
                        </div><!-- /.wishlist-content -->
                    </div><!-- /.wishlist -->
                </div><!-- /.col-md-12 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </section><!-- /.flat-wishlish -->


    <%@include file="comment/bottom.jsp" %>

</div><!-- /.boxed -->

<!-- Javascript -->
<script type="text/javascript" src="javascript/jquery.min.js"></script>
<script type="text/javascript" src="javascript/tether.min.js"></script>
<script type="text/javascript" src="javascript/bootstrap.min.js"></script>
<script type="text/javascript" src="javascript/waypoints.min.js"></script>
<script type="text/javascript" src="javascript/jquery.circlechart.js"></script>
<script type="text/javascript" src="javascript/easing.js"></script>
<script type="text/javascript" src="javascript/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="javascript/owl.carousel.js"></script>
<script type="text/javascript" src="javascript/smoothscroll.js"></script>
<script type="text/javascript" src="javascript/jquery-ui.js"></script>
<script type="text/javascript" src="javascript/jquery.mCustomScrollbar.js"></script>
<script type="text/javascript"
        src="http://ditu.google.cn/maps/api/js?key=AIzaSyBtRmXKclfDp20TvfQnpgXSDPjut14x5wk&region=GB"></script>
<script type="text/javascript" src="javascript/gmap3.min.js"></script>
<script type="text/javascript" src="javascript/waves.min.js"></script>

<script type="text/javascript" src="javascript/jquery.countdown.js"></script>

<script type="text/javascript" src="javascript/main.js"></script>


</body>
</html>

