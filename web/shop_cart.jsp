<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: EdwinPan
  Date: 2018/7/30
  Time: 8:56
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
    <title>Shop Cart</title>

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- Boostrap style -->
    <link rel="stylesheet" type="text/css" href="stylesheets/bootstrap.min.css">

    <!-- Theme style -->
    <link rel="stylesheet" type="text/css" href="stylesheets/style.css">

    <!-- Reponsive -->
    <link rel="stylesheet" type="text/css" href="stylesheets/responsive.css">
<script src="javascript/jquery.min.js"></script>
<script src="javascript/short_cart.js"></script>

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
                            <a href="#" title="">Shopping Cart</a>
                        </li>
                    </ul><!-- /.breacrumbs -->
                </div><!-- /.col-md-12 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </section><!-- /.flat-breadcrumb -->

    <section class="flat-shop-cart">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="flat-row-title style1">
                        <h3>Shopping Cart</h3>
                    </div>
                    <div class="table-cart">
                        <table>
                            <thead>
                            <tr>
                                <th>Product</th>
                                <th>Quantity</th>
                                <th>Total</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${cartlist}" var="cart" varStatus="loop">
                                <tr class="book-item">
                                    <td >
                                        <input type="checkbox" name="choose-cart" style="opacity: 1;float: left;" value="${booklist[loop.count-1].id}">
                                        <div class="img-product">
                                            <img src="images/book/${booklist[loop.count-1].image_url}" alt="">
                                        </div>
                                        <div class="name-product">
                                            <span class="book-name">
                                                    ${booklist[loop.count-1].name}
                                            </span>

                                                <br>
                                                    ￥
                                                <span class="book-price" style="color:red">
                                                    ${booklist[loop.count-1].price}
                                                </span>
                                        </div>
                                        <div class="clearfix"></div>
                                    </td>
                                    <td>
                                        <div class="quanlity">
                                            <span class="btn-down"></span>
                                            <input type="number" name="number" class="book-count" value="${cart.count}" min="1" max="100"
                                                   placeholder="Quanlity">
                                            <span class="btn-up"></span>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="book-total">
                                                ${cart.all_price}
                                        </div>
                                    </td>
                                    <td>
                                        <a href="CartServlet?type=delete&cart_id=${cart.id}" title="">
                                            <img src="images/icons/delete.png" alt="">
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                        <div class="form-coupon">
                            <form action="#" method="get" accept-charset="utf-8">
                                <div class="coupon-input">
                                    <input type="text" name="coupon code" placeholder="Coupon Code">
                                    <button type="submit">Apply Coupon</button>
                                </div>
                            </form>
                        </div><!-- /.form-coupon -->
                    </div><!-- /.table-cart -->
                </div><!-- /.col-lg-8 -->
                <div class="col-lg-4">
                    <div class="cart-totals">
                        <h3>Cart Totals</h3>
                        <form action="#" method="get" accept-charset="utf-8">
                                <table class="product">
                                    <thead>
                                    <tr>
                                        <th>Product</th>
                                        <th>Total</th>
                                    </tr>
                                    </thead>
                                    <tbody class="choose-tbody">

                                    </tbody>
                                </table><!-- /.product -->
                            <div style="text-align: right;margin-top:10px;font-size:20px;">
                                <span>Total:</span>
                                <span class="price-total">0</span>
                            </div>
                            <div class="btn-cart-totals">
                                <a href="javascript:;" class="checkout" title="">Proceed to Checkout</a>
                            </div><!-- /.btn-cart-totals -->
                        </form><!-- /form -->
                    </div><!-- /.cart-totals -->
                </div><!-- /.col-lg-4 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </section><!-- /.flat-shop-cart -->


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

