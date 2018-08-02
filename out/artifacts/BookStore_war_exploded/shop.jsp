<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: EdwinPan
  Date: 2018/7/30
  Time: 8:52
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
    <title>Shop Bar Left</title>

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
    <section id="header" class="header">
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <ul class="flat-support">
                            <li>
                                <a href="#" title="">Support</a>
                            </li>
                            <li>
                                <a href="#" title="">Store Locator</a>
                            </li>
                            <li>
                                <a href="#" title="">Track Your Order</a>
                            </li>
                        </ul><!-- /.flat-support -->
                    </div><!-- /.col-md-4 -->
                    <div class="col-md-4">
                        <ul class="flat-infomation">
                            <li class="phone">
                                Call Us: <a href="#" title="">(888) 1234 56789</a>
                            </li>
                        </ul><!-- /.flat-infomation -->
                    </div><!-- /.col-md-4 -->
                    <div class="col-md-4">
                        <ul class="flat-unstyled">
                            <li class="account">
                                <a href="#" title="">My Account<i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                <ul class="unstyled">
                                    <li>
                                        <a href="login.jsp" title="">Login</a>
                                    </li>
                                    <li>
                                        <a href="orderlist.jsp" title="">Wishlist</a>
                                    </li>
                                    <li>
                                        <a href="shop_cart.jsp" title="">My Cart</a>
                                    </li>
                                    <li>
                                        <a href="#" title="">My Account</a>
                                    </li>
                                    <li>
                                        <a href="shop_checkout.jsp" title="">Checkout</a>
                                    </li>
                                </ul>
                            </li>

                        </ul><!-- /.flat-unstyled -->
                    </div><!-- /.col-md-4 -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.header-top -->
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
                    <div class="col-md-2 col-2">

                    </div><!-- /.col-md-3 col-2 -->
                    <div class="col-md-10 col-10">
                        <div class="nav-wrap">
                            <div id="mainnav" class="mainnav">
                                <ul class="menu">
                                    <li class="column-1">
                                        <a href="IndexServlet" title="">Home</a>

                                    </li><!-- /.column-1 -->
                                    <li class="column-1">
                                        <a href="shop.jsp" title="">Shop</a>

                                    </li><!-- /.column-1 -->
                                    <li class="column-1">
                                        <a href="#" title="">Features</a>
                                        <ul class="submenu">
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>Home
                                                    Theater Systems</a>
                                            </li>
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>Receivers
                                                    & Amplifiers</a>
                                            </li>
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>Speakers</a>
                                            </li>
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>CD
                                                    Players & Turntables</a>
                                            </li>
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>High-Resolution
                                                    Audio</a>
                                            </li>
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>4K
                                                    Ultra HD TVs</a>
                                            </li>
                                        </ul><!-- /.submenu -->
                                    </li><!-- /.column-1 -->
                                    <li class="has-mega-menu">
                                        <a href="#" title="">Electronic</a>
                                        <div class="submenu">
                                            <div class="row">
                                                <div class="col-lg-3 col-md-12">
                                                    <h3 class="cat-title">Accessories</h3>
                                                    <ul class="submenu-child">
                                                        <li>
                                                            <a href="#" title="">Electronics</a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="">Furniture</a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="">Accessories</a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="">Divided</a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="">Everyday Fashion</a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="">Modern Classic</a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="">Party</a>
                                                        </li>
                                                    </ul>
                                                    <div class="show">
                                                        <a href="#" title="">Shop All</a>
                                                    </div>
                                                </div><!-- /.col-lg-3 col-md-12 -->
                                                <div class="col-lg-3 col-md-12">
                                                    <h3 class="cat-title">Laptop And Computer</h3>
                                                    <ul class="submenu-child">
                                                        <li>
                                                            <a href="#" title="">Networking & Internet Devices</a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="">Laptops, Desktops & Monitors</a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="">Hard Drives & Memory Cards</a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="">Printers & Ink</a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="">Networking & Internet Devices</a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="">Computer Accessories</a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="">Software</a>
                                                        </li>
                                                    </ul>
                                                    <div class="show">
                                                        <a href="#" title="">Shop All</a>
                                                    </div>
                                                </div><!-- /.col-lg-3 col-md-12 -->
                                                <div class="col-lg-4 col-md-12">
                                                    <h3 class="cat-title">Audio & Video</h3>
                                                    <ul class="submenu-child">
                                                        <li>
                                                            <a href="#" title="">Headphones & Speakers</a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="">Home Entertainment Systems</a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="">MP3 & Media Players</a>
                                                        </li>
                                                    </ul>
                                                    <div class="show">
                                                        <a href="#" title="">Shop All</a>
                                                    </div>
                                                </div><!-- /.col-lg-4 col-md-12 -->
                                                <div class="col-lg-2 col-md-12">
                                                    <h3 class="cat-title">Home Audio</h3>
                                                    <ul class="submenu-child">
                                                        <li>
                                                            <a href="#" title="">Home Theater Systems</a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="">Receivers & Amplifiers</a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="">Speakers</a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="">CD Players & Turntables</a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="">High-Resolution Audio</a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="">4K Ultra HD TVs</a>
                                                        </li>
                                                    </ul>
                                                    <div class="show">
                                                        <a href="#" title="">Shop All</a>
                                                    </div>
                                                </div><!-- /.col-lg-2 col-md-12 -->
                                            </div><!-- /.row -->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="banner-box">
                                                        <div class="inner-box">
                                                            <a href="#" title="">
                                                                <img src="images/banner_boxes/submenu-01.png" alt="">
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="banner-box">
                                                        <div class="inner-box">
                                                            <a href="#" title="">
                                                                <img src="images/banner_boxes/submenu-02.png" alt="">
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div><!-- /.row -->
                                        </div><!-- /.submenu -->
                                    </li><!-- /.has-mega-menu -->
                                    <li class="column-1">
                                        <a href="#" title="">Pages</a>
                                        <ul class="submenu">
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>About</a>
                                            </li>
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>404
                                                    Page</a>
                                            </li>
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>Brands
                                                    Page</a>
                                            </li>
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>Categories
                                                    01</a>
                                            </li>
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>Categories
                                                    02</a>
                                            </li>
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>Element</a>
                                            </li>
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>FAQ</a>
                                            </li>
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>Order
                                                    Tracking</a>
                                            </li>
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>Terms
                                                    & Conditions</a>
                                            </li>
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>Single
                                                    Product 01</a>
                                            </li>
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>Single
                                                    Product 02</a>
                                            </li>
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>Single
                                                    Product 03</a>
                                            </li>
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>Single
                                                    Product 04</a>
                                            </li>
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>Single
                                                    Product 05</a>
                                            </li>
                                        </ul><!-- /.submenu -->
                                    </li><!-- /.column-1 -->
                                    <li class="column-1">
                                        <a href="#" title="">Blog</a>
                                        <ul class="submenu">
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>Blog
                                                    left sidebar</a>
                                            </li>
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>Blog
                                                    right sidebar</a>
                                            </li>
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>Blog
                                                    list</a>
                                            </li>
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>Blog
                                                    02 column</a>
                                            </li>
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>Blog
                                                    full width</a>
                                            </li>
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>Blog
                                                    single</a>
                                            </li>
                                        </ul><!-- /.submenu -->
                                    </li><!-- /.column-1 -->
                                    <li class="column-1">
                                        <a href="#" title="">Contact</a>
                                        <ul class="submenu">
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>Contact
                                                    01</a>
                                            </li>
                                            <li>
                                                <a href="#" title=""><i class="fa fa-angle-right" aria-hidden="true"></i>Contact
                                                    02</a>
                                            </li>
                                        </ul><!-- /.submenu -->
                                    </li><!-- /.column-1 -->
                                </ul><!-- /.menu -->
                            </div><!-- /.mainnav -->
                        </div><!-- /.nav-wrap -->
                        <div class="today-deal">
                            <a href="#" title="">TODAY DEALS</a>
                        </div><!-- /.today-deal -->
                        <div class="btn-menu">
                            <span></span>
                        </div><!-- //mobile menu button -->
                    </div><!-- /.col-md-9 -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.header-bottom -->
    </section>
    <main id="shop">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-4">
                    <div class="sidebar ">
                        <div class="widget widget-categories">
                            <div class="widget-title">
                                <h3>图书分类<span></span></h3>
                            </div>
                            <ul class="cat-list style1 widget-content">
                                <c:forEach items="${boookTypes}" var="boookType">
                                    <a href="BookTypeServlet?typeid=${boookType.id}"><li><span>${boookType.name}</span></li></a>
                                </c:forEach>
                            </ul><!-- /.cat-list -->
                        </div><!-- /.widget-categories -->
                    </div><!-- /.sidebar -->
                </div><!-- /.col-lg-3 col-md-4 -->
                <div class="col-lg-9 col-md-8">
                    <div class="main-shop">

                        <div class="wrap-imagebox">
                            <div class="sort-product">
                                <ul class="icons">
                                    <li>
                                        <img src="images/icons/list-1.png" alt="">
                                    </li>
                                    <li>
                                        <img src="images/icons/list-2.png" alt="">
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="tab-product">
                                <div class="row sort-box">
                                    <c:forEach items="${book_list}" var="book">
                                        <div class="col-lg-4 col-sm-6">
                                            <div class="product-box">
                                                <div class="imagebox">
                                                    <div class="box-image owl-carousel-1">
                                                        <a href="BookDetailServlet?book_id=${book.id}" title="">
                                                            <img src="images/book/${book.image_url}" alt="">
                                                        </a>
                                                        <a href="BookDetailServlet?book_id=${book.id}" title="">
                                                            <img src="images/book/${book.image_url}" alt="">
                                                        </a>
                                                        <a href="BookDetailServlet?book_id=${book.id}" title="">
                                                            <img src="images/book/${book.image_url}" alt="">
                                                        </a>
                                                    </div><!-- /.box-image -->
                                                    <div class="box-content">
                                                        <div class="cat-name">
                                                            <a href="#" title="">${book.name}</a>
                                                        </div>
                                                        <div class="product-name">
                                                            <a href="#" title="">New X5C-1 2.4Ghz Gyro<br/>RC Quadcopter
                                                                Drone</a>
                                                        </div>
                                                        <div class="price">
                                                            <span class="sale">${book.price}</span>
                                                            <span class="regular">${book.price}</span>
                                                        </div>
                                                    </div><!-- /.box-content -->
                                                    <div class="box-bottom">
                                                        <div class="btn-add-cart">
                                                            <a href="#" title="">
                                                                <img src="images/icons/add-cart.png" alt="">Add to Cart
                                                            </a>
                                                        </div>
                                                        <div class="compare-wishlist">
                                                            <a href="#" class="compare" title="">
                                                                <img src="images/icons/compare.png" alt="">Compare
                                                            </a>
                                                            <a href="#" class="wishlist" title="">
                                                                <img src="images/icons/wishlist.png" alt="">Wishlist
                                                            </a>
                                                        </div>
                                                    </div><!-- /.box-bottom -->
                                                </div><!-- /.imagebox -->
                                            </div>
                                        </div><!-- /.col-lg-4 col-sm-6 -->
                                    </c:forEach>
                                </div>
                                <div class="sort-box">
                                    <c:forEach items="${book_list}" var="book">
                                        <div class="product-box style3">
                                            <div class="imagebox style1 v3">
                                                <div class="box-image">
                                                    <a href="BookDetailServlet?book_id=${book.id}" title="">
                                                        <img src="images/book/${book.image_url}" alt="">
                                                    </a>
                                                </div><!-- /.box-image -->
                                                <div class="box-content">
                                                    <div class="cat-name">
                                                        <a href="#" title="">${book.name}</a>
                                                    </div>
                                                    <div class="product-name">
                                                        <a href="#" title="">Apple iPad Air 2 32GB 9.7"<br/>Tablet</a>
                                                    </div>
                                                    <div class="status">
                                                        Availablity: In stock
                                                    </div>
                                                    <div class="info">
                                                        <p>
                                                            The iPhone 5c replaces the iPhone 5 in the Apple stable,
                                                            inheriting its internals, like the A6 processor, 4" screen...
                                                        </p>
                                                    </div>
                                                </div><!-- /.box-content -->
                                                <div class="box-price">
                                                    <div class="price">
                                                        <span class="regular">$${book.price}</span>
                                                        <span class="sale">$${book.price}</span>
                                                    </div>
                                                    <div class="btn-add-cart">
                                                        <a href="#" title="">
                                                            <img src="images/icons/add-cart.png" alt="">Add to Cart
                                                        </a>
                                                    </div>
                                                    <div class="compare-wishlist">
                                                        <a href="#" class="compare" title="">
                                                            <img src="images/icons/compare.png" alt="">Compare
                                                        </a>
                                                        <a href="#" class="wishlist" title="">
                                                            <img src="images/icons/wishlist.png" alt="">Wishlist
                                                        </a>
                                                    </div>
                                                </div><!-- /.box-price -->
                                            </div><!-- /.imagebox -->
                                        </div><!-- /.product-box -->
                                    </c:forEach>
                                    <div style="height: 9px;"></div>
                                </div>
                            </div>
                        </div><!-- /.wrap-imagebox -->

                    </div><!-- /.main-shop -->
                </div><!-- /.col-lg-9 col-md-8 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </main><!-- /#shop -->


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
