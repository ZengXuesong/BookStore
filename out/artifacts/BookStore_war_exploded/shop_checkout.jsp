<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: EdwinPan
  Date: 2018/7/30
  Time: 8:59
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
    <title>Shop Checkout</title>

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
                            <a href="#" title="">Shop Checkout</a>
                        </li>
                    </ul><!-- /.breacrumbs -->
                </div><!-- /.col-md-12 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </section><!-- /.flat-breadcrumb -->

    <section class="flat-checkout">
        <form class="container" action="OrderServlet?type=${label}" method="post" accept-charset="utf-8">
            <input type="hidden" name="book_ids" value="<c:if test='${label == "no"}'>${book.id},</c:if><c:if test='${label == "yes"}'><c:forEach items="${booklist}" var="list">${list.id},</c:forEach></c:if>"><div class="row">
                <div class="col-md-7">
                    <div class="box-checkout">
                        <%----%>
                        <%--<form action="" method="post" class="checkout" accept-charset="utf-8">--%>
                            <div class="shipping-address-fields">
                                <div class="fields-title">
                                    <h3>Shipping Address</h3>
                                    <span></span>
                                    <div class="clearfix"></div>
                                </div><!-- /.fields-title -->
                                <div class="fields-content">
                                    <div class="checkbox">
                                        <input type="checkbox" id="create-account-2" name="create-account-2" checked>
                                        <label for="create-account-2">Ship to a different address ?</label>
                                    </div>
                                    <div class="field-row">
                                        <p class="field-one-half">
                                            <label for="first-name-2">收货人姓名 *</label>
                                            <input type="text" id="first-name-2" name="username" placeholder="Ali">
                                        </p>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="field-row">
                                        <label for="address-3">收货人地址 *</label>
                                        <input type="text" id="address-3" name="address" placeholder="详细地址">
                                    </div>
                                    <div class="field-row">
                                        <label for="town-city-2">联系人电话 *</label>
                                        <input type="text" id="town-city-2" name="contact-phone" placeholder="phone">
                                    </div>

                                    <div class="field-row">
                                        <label for="notes">Order Notes</label>
                                        <textarea id="notes" name="remark"
                                                  placeholder="Notes about your order, e.g. special notes for delivery."></textarea>
                                    </div>
                                </div><!-- /.fields-content -->
                            </div><!-- /.shipping-address-fields -->
                        <%--</form><!-- /.checkout -->--%>
                    </div><!-- /.box-checkout -->
                </div><!-- /.col-md-7 -->
                <div class="col-md-5">
                    <div class="cart-totals style2">
                        <h3>Your Order</h3>
                        <%--<form action="#" method="post" accept-charset="utf-8">--%>
                            <table class="product">
                                <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>Total</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:if test='${label == "no"}'>
                                    <tr>
                                        <td>${book.name}   ${book.price}</td>
                                        <td>${book.price}</td>
                                    </tr>
                                </c:if>
                                <c:if test='${label == "yes"}'>
                                    <c:forEach items="${cartlist}" var="cart" varStatus="loop">
                                        <tr>
                                            <td>${booklist[loop.count-1].name}   ${booklist[loop.count-1].price}/${cart.count}</td>
                                            <td>${cart.all_price}</td>
                                        </tr>
                                    </c:forEach>
                                </c:if>
                                </tbody>
                            </table><!-- /.product -->
                            <table>
                                <tbody>
                                <tr>
                                    <td>Total</td>
                                    <td class="subtotal">￥${totalprice}</td>
                                </tr>
                                <tr>
                                    <td>Shipping</td>
                                    <td class="btn-radio">
                                        <div class="radio-info">
                                            <input type="radio" checked id="flat-rate" name="radio-flat-rate">
                                            <label for="flat-rate">Flat Rate: <span>$3.00</span></label>
                                        </div>
                                        <div class="radio-info">
                                            <input type="radio" id="free-shipping" name="radio-flat-rate">
                                            <label for="free-shipping">Free Shipping</label>
                                        </div>
                                        <div class="btn-shipping">
                                            <a href="#" title="">Calculate Shipping</a>
                                        </div>
                                    </td><!-- /.btn-radio -->
                                </tr>
                                <tr>
                                    <td>Total</td>
                                    <td class="price-total">￥${totalprice}</td>
                                </tr>
                                </tbody>
                            </table>
                            <div class="btn-radio style2">
                                <div class="radio-info">
                                    <input type="radio" id="flat-payment" checked name="radio-cash-2">
                                    <label for="flat-payment">Check Payments</label>
                                    <p>Please send a check to Store Name, Store Street, Store <br/>Town, Store State /
                                        County, Store Postcode.</p>
                                </div>
                                <div class="radio-info">
                                    <input type="radio" id="bank-transfer" name="radio-cash-2">
                                    <label for="bank-transfer">Direct Bank Transfer</label>
                                </div>
                                <div class="radio-info">
                                    <input type="radio" id="cash-delivery" name="radio-cash-2">
                                    <label for="cash-delivery">Cash on Delivery</label>
                                </div>
                                <div class="radio-info">
                                    <input type="radio" id="paypal" name="radio-cash-2">
                                    <label for="paypal">Paypal</label>
                                </div>
                            </div><!-- /.btn-radio style2 -->
                            <div class="checkbox">
                                <input type="checkbox" id="checked-order" name="checked-order" checked>
                                <label for="checked-order">I’ve read and accept the terms & conditions *</label>
                            </div><!-- /.checkbox -->
                            <div class="btn-order">
                                <button type="submit" onclick="" title="">Place Order</button>
                            </div><!-- /.btn-order -->
                        <%--</form>--%>
                    </div><!-- /.cart-totals style2 -->
                </div><!-- /.col-md-5 -->
            </div><!-- /.row -->
        </form><!-- /.container -->
    </section><!-- /.flat-checkout -->


    <%@include file="comment/bottom.jsp" %>

</div><!-- /.boxed -->
<script type="text/javascript">


</script>
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

