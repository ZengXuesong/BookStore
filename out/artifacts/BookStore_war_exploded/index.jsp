<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: EdwinPan
  Date: 2018/7/28
  Time: 9:29
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
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
    <title>Home</title>

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- Boostrap style -->
    <link rel="stylesheet" type="text/css" href="stylesheets/bootstrap.min.css">

    <!-- Theme style -->
    <link rel="stylesheet" type="text/css" href="stylesheets/style.css">

    <!-- Reponsive -->
    <link rel="stylesheet" type="text/css" href="stylesheets/responsive.css">

    <style>


    </style>
</head>
<body class="header_sticky">
<div class="boxed">
    <section id="header" class="header">

        <div class="header-middle">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div id="logo" class="logo">
                            <a href="index.jsp" title="">
                                <img src="images/logos/logo.png" alt="">
                            </a>
                        </div><!-- /#logo -->
                    </div><!-- /.col-md-3 -->
                    <div class="col-md-6">
                        <div class="top-search">
                            <form action="SearchServlet"  method="get" class="form-search" accept-charset="utf-8">
                                <div class="cat-wrap">
                                    <select name="category">
                                        <option value="0">全部分类</option>
                                        <c:forEach items="${booktypes}" var="booktype">
                                            <option value="${booktype.id}">${booktype.name}</option>
                                        </c:forEach>
                                    </select>

                                </div><!-- /.cat-wrap -->
                                <div class="box-search">
                                    <input type="text" name="search" placeholder="Search what you looking for ?">
                                    <span class="btn-search">
											<button type="submit" class="waves-effect"><img
                                                    src="images/icons/search.png" alt=""></button>
										</span>
                                </div><!-- /.box-search -->
                            </form><!-- /.form-search -->
                        </div><!-- /.top-search -->
                    </div><!-- /.col-md-6 -->
                    <div class="col-md-3">
                        <div class="box-cart">
                            <div class="inner-box">
                                <ul class="menu-compare-wishlist">

                                    <li class="wishlist">
                                        <a href="wishlist.html" title="">
                                            <img src="images/icons/wishlist.png" alt="">
                                        </a>
                                    </li>
                                </ul><!-- /.menu-compare-wishlist -->
                            </div><!-- /.inner-box -->
                            <div class="inner-box">
                                <a href="shop_cart.html" title="">
                                    <div class="icon-cart">
                                        <img src="images/icons/cart.png" alt="">
                                        <span>4</span>
                                    </div>
                                    <div class="price">
                                        $0.00
                                    </div>
                                </a>
                                <div class="dropdown-box">
                                    <ul>
                                        <li>
                                            <div class="img-product">
                                                <img src="images/product/other/img-cart-1.jpg" alt="">
                                            </div>
                                            <div class="info-product">
                                                <div class="name">
                                                    Samsung - Galaxy S6 4G LTE <br/>with 32GB Memory Cell Phone
                                                </div>
                                                <div class="price">
                                                    <span>1 x</span>
                                                    <span>$250.00</span>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                            <span class="delete">x</span>
                                        </li>
                                        <li>
                                            <div class="img-product">
                                                <img src="images/product/other/img-cart-2.jpg" alt="">
                                            </div>
                                            <div class="info-product">
                                                <div class="name">
                                                    Sennheiser - Over-the-Ear Headphone System - Black
                                                </div>
                                                <div class="price">
                                                    <span>1 x</span>
                                                    <span>$250.00</span>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                            <span class="delete">x</span>
                                        </li>
                                    </ul>
                                    <div class="total">
                                        <span>Subtotal:</span>
                                        <span class="price">$1,999.00</span>
                                    </div>
                                    <div class="btn-cart">
                                        <a href="shop_cart.html" class="view-cart" title="">View Cart</a>
                                        <a href="shop_checkout.html" class="check-out" title="">Checkout</a>
                                    </div>
                                </div>
                            </div><!-- /.inner-box -->
                        </div><!-- /.box-cart -->
                    </div><!-- /.col-md-3 -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.header-middle -->
        <div class="header-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-2">
                        <div id="mega-menu">
                            <div class="btn-mega"><span></span>分类菜单</div>
                            <ul class="menu">

                                <c:forEach items="${booktypes}" var="booktype">
                                    <li>
                                        <a href="BookTypeServlet?typeid=${booktype.id}" title="" class="dropdown">
                                                <span class="menu-img">
                                                    <img src="images/icons/menu/01.png" alt="">
                                                </span>
                                            <span class="menu-title">
                                                    ${booktype.name}
                                            </span>
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div><!-- /.col-md-3 col-2 -->
                    <div class="col-md-9 col-10">
                        <div class="nav-wrap">
                            <div id="mainnav" class="mainnav">
                                <ul class="menu">
                                    <li class="column-1">
                                        <a href="IndexServlet" title="">首页</a>

                                    </li><!-- /.column-1 -->
                                    <li class="column-1">
                                        <a href="CartServlet?type=find" title="">购物车</a>

                                    </li><!-- /.column-1 -->
                                    <li class="column-1">
                                        <a href="OrderServlet?type=find" title="">订单</a>

                                    </li><!-- /.column-1 -->
                                    <li class="has-mega-menu">
                                        <a href="#" title="">关于我们</a>

                                    </li><!-- /.has-mega-menu -->

                                </ul><!-- /.menu -->
                            </div><!-- /.mainnav -->
                        </div><!-- /.nav-wrap -->
                        <div class="today-deal">
                            <a href="#" title="">User</a>
                        </div><!-- /.today-deal -->
                        <div class="btn-menu">
                            <span></span>
                        </div><!-- //mobile menu button -->
                    </div><!-- /.col-md-9 -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.header-bottom -->
    </section>
    <!-- /#header -->

    <section class="flat-row flat-slider">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="slider owl-carousel">

                        <c:forEach items="${randombooklist}" var="sliderBook">
                        <div class="slider-item style2">
                            <div class="item-text">
                                <div class="header-item">
                                    <p>${sliderBook.type_name}</p>
                                    <h2 class="name">${sliderBook.name}</h2>
                                </div>
                                <div class="divider65"></div>
                                <div class="content-item">
                                    <div class="price">
                                        <span class="sale">￥${sliderBook.price}</span>
                                        <span class="btn-shop">
												<a href="BookDetailServlet?book_id=${sliderBook.id}" title="">查看详情 <img src="images/icons/right-2.png" alt=""></a>
											</span>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="regular">
                                        ￥${sliderBook.price}
                                    </div>
                                </div>
                            </div>
                            <div class="item-image">
                                <div class="sale-off">
                                    <span>sale</span>
                                </div>
                                <img src="images/book/${sliderBook.image_url}" alt="">
                            </div>
                            <div class="clearfix"></div>
                        </div><!-- /.slider -->
                        </c:forEach>
                    </div><!-- /.slider -->
                </div><!-- /.col-md-12 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </section><!-- /.flat-slider -->

    <section class="flat-imagebox">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-tab">
                        <ul class="tab-list">
                            <li class="active">最新上架</li>
                            <li>热销榜</li>
                            <li>热门推荐</li>
                        </ul>
                    </div><!-- /.product-tab -->
                </div><!-- /.col-md-12 -->
            </div><!-- /.row -->
            <div class="box-product">
                <div class="row">
                    <c:forEach items="${newestbooklist}" var="newestbook">
                        <div class="col-lg-3 col-sm-6">

                            <div class="product-box">
                                <div class="imagebox">
                                    <ul class="box-image owl-carousel-1">
                                        <li>
                                            <a href="BookDetailServlet?book_id=${newestbook.id}" title="">
                                                <img src="images/book/${newestbook.image_url}" alt="">
                                            </a>
                                        </li>
                                        <li>
                                            <a href="BookDetailServlet?book_id=${newestbook.id}" title="">
                                                <img src="images/book/${newestbook.image_url}" alt="">
                                            </a>
                                        </li>
                                        <li>
                                            <a href="BookDetailServlet?book_id=${newestbook.id}" title="">
                                                <img src="images/book/${newestbook.image_url}" alt="">
                                            </a>
                                        </li>
                                    </ul><!-- /.box-image -->
                                    <div class="box-content">
                                        <div class="cat-name">
                                            <a href="#" title="">${newestbook.type_name}</a>
                                        </div>
                                        <div class="product-name">
                                            <a href="#" title="">${newestbook.name}</a>
                                        </div>
                                        <div class="price">
                                            <span class="sale">${newestbook.price}</span>
                                            <span class="regular">${newestbook.price}</span>
                                        </div>
                                    </div><!-- /.box-content -->
                                    <div class="box-bottom">
                                        <div class="btn-add-cart">
                                            <a href="CartServlet?type=add&id=${newestbook.id}" title="">
                                                <img src="images/icons/add-cart.png" alt="">Add to Cart
                                            </a>
                                        </div><div class="btn-add-cart" >
                                            <a class="yylcolor" href="BookDetailServlet?book_id=${newestbook.id}"
                                               style="background-color: dodgerblue">
                                                <img src="images/icons/add-cart.png" alt="">查看详情
                                            </a>
                                        </div>

                                    </div><!-- /.box-bottom -->
                                </div><!-- /.imagebox -->
                            </div>
                        </div><!-- /.col-lg-3 col-sm-6 -->
                    </c:forEach>

                </div><!-- /.row -->
                <div class="row">
                    <c:forEach items="${salebooklist}" var="salebook">
                        <div class="col-lg-3 col-sm-6">
                            <div class="product-box">
                                <div class="imagebox">
                                    <span class="item-sale">SALE</span>
                                    <ul class="box-image owl-carousel-1">
                                        <li>
                                            <a href="BookDetailServlet?book_id=${salebook.id}" title="">
                                                <img src="images/book/${salebook.image_url}" alt="">
                                            </a>
                                        </li>
                                        <li>
                                            <a href="BookDetailServlet?book_id=${salebook.id}" title="">
                                                <img src="images/book/${salebook.image_url}" alt="">
                                            </a>
                                        </li>
                                        <li>
                                            <a href="BookDetailServlet?book_id=${salebook.id}" title="">
                                                <img src="images/book/${salebook.image_url}" alt="">
                                            </a>
                                        </li>
                                    </ul><!-- /.box-image -->
                                    <div class="box-content">
                                        <div class="cat-name">
                                            <a href="#" title="">${salebook.type_name}</a>
                                        </div>
                                        <div class="product-name">
                                            <a href="#" title="">${salebook.name}</a>
                                        </div>
                                        <div class="price">
                                            <span class="sale">${salebook.price}</span>
                                            <span class="regular">${salebook.price}</span>
                                        </div>
                                    </div><!-- /.box-content -->
                                    <div class="box-bottom">
                                        <div class="btn-add-cart">
                                            <a href="CartServlet?id=${salebook.id}" title="">
                                                <img src="images/icons/add-cart.png" alt="">Add to Cart
                                            </a>
                                        </div>
                                        <div class="btn-add-cart" >
                                            <a class="yylcolor" href="BookDetailServlet?book_id=${salebook.id}"
                                               style="background-color: dodgerblue">
                                                <img src="images/icons/add-cart.png" alt="">查看详情
                                            </a>
                                        </div>
                                    </div><!-- /.box-bottom -->
                                </div><!-- /.imagebox -->
                            </div>
                        </div><!-- /.col-lg-3 col-sm-6 -->
                    </c:forEach>

                </div><!-- /.row -->
                <div class="row">
                    <c:forEach items="${randombooklist}" var="randombook">
                        <div class="col-lg-3 col-sm-6">
                            <div class="product-box">
                                <div class="imagebox">
                                    <span class="item-sale">SALE</span>
                                    <ul class="box-image owl-carousel-1">
                                        <li>
                                            <a href="#" title="">
                                                <img src="images/book/${randombook.image_url}" alt="">
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" title="">
                                                <img src="images/book/${randombook.image_url}" alt="">
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" title="">
                                                <img src="images/book/${randombook.image_url}" alt="">
                                            </a>
                                        </li>
                                    </ul><!-- /.box-image -->
                                    <div class="box-content">
                                        <div class="cat-name">
                                            <a href="#" title="">${randombook.type_name}</a>
                                        </div>
                                        <div class="product-name">
                                            <a href="#" title="">${randombook.name}</a>
                                        </div>
                                        <div class="price">
                                            <span class="sale">￥${randombook.price}</span>
                                            <span class="regular">￥${randombook.price}</span>
                                        </div>
                                    </div><!-- /.box-content -->
                                    <div class="box-bottom">
                                        <div class="btn-add-cart">
                                            <a href="CartServlet?type=add&id=${randombook.id}" title="">
                                                <img src="images/icons/add-cart.png" alt="">Add to Cart
                                            </a>
                                        </div>
                                        <div class="btn-add-cart" >
                                            <a class="yylcolor" href="BookDetailServlet?book_id=${randombook.id}"
                                               style="background-color: dodgerblue">
                                                <img src="images/icons/add-cart.png" alt="">查看详情
                                            </a>
                                        </div>
                                    </div><!-- /.box-bottom -->
                                </div><!-- /.imagebox -->
                            </div>
                        </div><!-- /.col-lg-3 col-sm-6 -->
                    </c:forEach>
                </div><!-- /.row -->
            </div><!-- /.box-product -->
        </div><!-- /.container -->
    </section><!-- /.flat-imagebox -->


    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="widget-ft widget-about">
                        <div class="logo logo-ft">
                            <a href="index.html" title="">
                                <img src="images/logos/logo-ft.png" alt="">
                            </a>
                        </div><!-- /.logo-ft -->
                        <div class="widget-content">
                            <div class="icon">
                                <img src="images/icons/call.png" alt="">
                            </div>
                            <div class="info">
                                <p class="questions">Got Questions ? Call us 24/7!</p>
                                <p class="phone">Call Us: (888) 1234 56789</p>
                                <p class="address">
                                    PO Box CT16122 Collins Street West, Victoria 8007,<br />Australia.
                                </p>
                            </div>
                        </div><!-- /.widget-content -->
                        <ul class="social-list">
                            <li>
                                <a href="#" title="">
                                    <i class="fa fa-facebook" aria-hidden="true"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" title="">
                                    <i class="fa fa-twitter" aria-hidden="true"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" title="">
                                    <i class="fa fa-instagram" aria-hidden="true"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" title="">
                                    <i class="fa fa-pinterest" aria-hidden="true"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" title="">
                                    <i class="fa fa-dribbble" aria-hidden="true"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" title="">
                                    <i class="fa fa-google" aria-hidden="true"></i>
                                </a>
                            </li>
                        </ul><!-- /.social-list -->
                    </div><!-- /.widget-about -->
                </div><!-- /.col-lg-3 col-md-6 -->
                <div class="col-lg-3 col-md-6">
                    <div class="widget-ft widget-categories-ft">
                        <div class="widget-title">
                            <h3>Find By Categories</h3>
                        </div>
                        <ul class="cat-list-ft">
                            <li>
                                <a href="#" title="">Desktops</a>
                            </li>
                            <li>
                                <a href="#" title="">Laptops & Notebooks</a>
                            </li>
                            <li>
                                <a href="#" title="">Components</a>
                            </li>
                            <li>
                                <a href="#" title="">Tablets</a>
                            </li>
                            <li>
                                <a href="#" title="">Software</a>
                            </li>
                            <li>
                                <a href="#" title="">Phones & PDAs</a>
                            </li>
                            <li>
                                <a href="#" title="">Cameras</a>
                            </li>
                        </ul><!-- /.cat-list-ft -->
                    </div><!-- /.widget-categories-ft -->
                </div><!-- /.col-lg-3 col-md-6 -->
                <div class="col-lg-2 col-md-6">
                    <div class="widget-ft widget-menu">
                        <div class="widget-title">
                            <h3>Customer Care</h3>
                        </div>
                        <ul>
                            <li>
                                <a href="#" title="">
                                    Contact us
                                </a>
                            </li>
                            <li>
                                <a href="#" title="">
                                    Site Map
                                </a>
                            </li>
                            <li>
                                <a href="#" title="">
                                    My Account
                                </a>
                            </li>
                            <li>
                                <a href="#" title="">
                                    Wish List
                                </a>
                            </li>
                            <li>
                                <a href="#" title="">
                                    Delivery Information
                                </a>
                            </li>
                            <li>
                                <a href="#" title="">
                                    Privacy Policy
                                </a>
                            </li>
                            <li>
                                <a href="#" title="">
                                    Terms & Conditions
                                </a>
                            </li>
                        </ul>
                    </div><!-- /.widget-menu -->
                </div><!-- /.col-lg-2 col-md-6 -->
                <div class="col-lg-4 col-md-6">
                    <div class="widget-ft widget-newsletter">
                        <div class="widget-title">
                            <h3>Sign Up To New Letter</h3>
                        </div>
                        <p>Make sure that you never miss our interesting <br />
                            news by joining our newsletter program
                        </p>
                        <form action="#" class="subscribe-form" method="get" accept-charset="utf-8">
                            <div class="subscribe-content">
                                <input type="text" name="email" class="subscribe-email" placeholder="Your E-Mail">
                                <button type="submit"><img src="images/icons/right-2.png" alt=""></button>
                            </div>
                        </form><!-- /.subscribe-form -->
                        <ul class="pay-list">
                            <li>
                                <a href="#" title="">
                                    <img src="images/logos/ft-01.png" alt="">
                                </a>
                            </li>
                            <li>
                                <a href="#" title="">
                                    <img src="images/logos/ft-02.png" alt="">
                                </a>
                            </li>
                            <li>
                                <a href="#" title="">
                                    <img src="images/logos/ft-03.png" alt="">
                                </a>
                            </li>
                            <li>
                                <a href="#" title="">
                                    <img src="images/logos/ft-04.png" alt="">
                                </a>
                            </li>
                            <li>
                                <a href="#" title="">
                                    <img src="images/logos/ft-05.png" alt="">
                                </a>
                            </li>
                        </ul><!-- /.pay-list -->
                    </div><!-- /.widget-newsletter -->
                </div><!-- /.col-lg-4 col-md-6 -->
            </div><!-- /.row -->
            <div class="row">
                <div class="col-md-12">
                    <div class="widget widget-apps">
                        <div class="widget-title">
                            <h3>Mobile Apps</h3>
                        </div>
                        <ul class="app-list">
                            <li class="app-store">
                                <a href="#" title="">
                                    <div class="img">
                                        <img src="images/icons/app-store.png" alt="">
                                    </div>
                                    <div class="text">
                                        <h4>App Store</h4>
                                        <p>Available now on the</p>
                                    </div>
                                </a>
                            </li><!-- /.app-store -->
                            <li class="google-play">
                                <a href="#" title="">
                                    <div class="img">
                                        <img src="images/icons/google-play.png" alt="">
                                    </div>
                                    <div class="text">
                                        <h4>Google Play</h4>
                                        <p>Get in on</p>
                                    </div>
                                </a>
                            </li><!-- /.google-play -->
                        </ul><!-- /.app-list -->
                    </div><!-- /.widget-apps -->
                </div><!-- /.col-md-12 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </footer><!-- /footer -->

    <%@ include file="comment/bottom.jsp" %>
</div><!-- /.boxed -->

<!-- Javascript -->
<script type="text/javascript" src="javascript/jquery.min.js"></script>
<script type="text/javascript" src="javascript/tether.min.js"></script>
<script type="text/javascript" src="javascript/bootstrap.min.js"></script>
<script type="text/javascript" src="javascript/waypoints.min.js"></script>
<!-- <script type="text/javascript" src="javascript/jquery.circlechart.js"></script> -->
<script type="text/javascript" src="javascript/easing.js"></script>
<script type="text/javascript" src="javascript/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="javascript/owl.carousel.js"></script>
<script type="text/javascript" src="javascript/smoothscroll.js"></script>
<!-- <script type="text/javascript" src="javascript/jquery-ui.js"></script> -->
<script type="text/javascript" src="javascript/jquery.mCustomScrollbar.js"></script>
<script type="text/javascript" src="http://ditu.google.cn/maps/api/js?key=AIzaSyBtRmXKclfDp20TvfQnpgXSDPjut14x5wk&region=GB"></script>
<script type="text/javascript" src="javascript/gmap3.min.js"></script>
<script type="text/javascript" src="javascript/waves.min.js"></script>
<script type="text/javascript" src="javascript/jquery.countdown.js"></script>

<script type="text/javascript" src="javascript/main.js"></script>

</body>
</html>

