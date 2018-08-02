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
    <title>Single Product</title>

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
                            <a href="#" title="">Detail</a>
                        </li>
                    </ul><!-- /.breacrumbs -->
                </div><!-- /.col-md-12 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </section><!-- /.flat-breadcrumb -->

    <section class="flat-product-detail">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="flexslider">
                        <ul class="slides">
                            <li data-thumb="images/book/${book.image_url}">
                                <img src="images/book/${book.image_url}" alt="image slider"/>
                                <span>NEW</span>
                            </li>
                            <li data-thumb="images/book/${book.image_url}">
                                <img src="images/book/${book.image_url}" alt="image slider"/>
                            </li>
                            <li data-thumb="images/book/${book.image_url}">
                                <img src="images/book/${book.image_url}" alt="image slider"/>
                                <span>NEW</span>
                            </li>

                        </ul><!-- /.slides -->
                    </div><!-- /.flexslider -->
                </div><!-- /.col-md-6 -->
                <div class="col-md-6">
                    <div class="product-detail">
                        <div class="header-detail">
                            <h4 class="name">${book.name}</h4>
                            <div class="category">
                                Smart Watches
                            </div>
                            <div class="reviewed">
                                <div class="review">
                                    <div class="queue">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                    </div>
                                    <div class="text">
                                        <span>3 Reviews</span>
                                        <span class="add-review">Add Your Review</span>
                                    </div>
                                </div><!-- /.review -->
                                <div class="status-product">
                                    Availablity <span>In stock</span>
                                </div>
                            </div><!-- /.reviewed -->
                        </div><!-- /.header-detail -->
                        <div class="content-detail">
                            <div class="price">
                                <div class="regular">
                                    ￥${book.price}
                                </div>
                                <div class="sale">
                                    ￥${book.price}
                                </div>
                            </div>
                            <div class="info-text">
                                ￥${book.descript}
                            </div>
                            <div class="product-id">
                                SKU: <span class="id">FW511948218</span>
                            </div>
                        </div><!-- /.content-detail -->
                        <div class="footer-detail">

                            <div class="box-cart style2">

                                <div class="btn-add-cart">
                                    <a href="CartServlet?type=add&id=${book.id}" title=""><img src="images/icons/add-cart.png" alt="">Add to Cart</a>
                                </div>
                                <div class="btn-add-cart">
                                    <a id="yylcolor" href="CheckoutServlet?type=add&ids=${book.id}" title=""><img src="images/icons/add-cart.png" alt="">Buy it now</a>
                                </div>
                            </div><!-- /.box-cart -->
                            <div class="social-single">
                                <span>SHARE</span>
                                <ul class="social-list style2">
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
                            </div><!-- /.social-single -->
                        </div><!-- /.footer-detail -->
                    </div><!-- /.product-detail -->
                </div><!-- /.col-md-6 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </section><!-- /.flat-product-detail -->

    <section class="flat-product-content">
        <ul class="product-detail-bar">
            <li class="active">Description</li>
            <li>Tecnical Specs</li>
            <li>Reviews</li>
        </ul><!-- /.product-detail-bar -->
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="description-text">
                        <div class="box-text">
                            <h4>Nuqqam Et Massa</h4>
                            <p>Sed sodales sed orci molestie tristique. Nunc dictum, erat id molestie vestibulum, ex leo
                                vestibulum justo, luctus tempor erat sem quis diam. Lorem ipsum dolor sit amet.</p>
                        </div>
                        <div class="box-text wireless">
                            <h4>Wireless</h4>
                            <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a
                                piece <br/>of classical Latin literature from 45 BC, making it over 2000 years old.</p>
                        </div>
                        <div class="box-text design">
                            <h4>Fresh Design</h4>
                            <p>It is a long established fact that a reader will be distracted by the readable content of
                                <br/>a page when looking at its layout. The point of using Lorem Ipsum is that it has a
                                <br/>more-or-less normal distribution of letters, as opposed to using</p>
                        </div>
                        <div class="box-text sound">
                            <h4>Fabolous Sound</h4>
                            <p>There are many variations of passages of Lorem Ipsum available, but the <br/>majority
                                have suffered alteration in some form, by injected humour, or <br/>randomised words
                                which don't look even slightly believable.</p>
                        </div>
                    </div><!-- /.description-text -->
                </div><!-- /.col-md-6 -->
                <div class="col-md-6">
                    <div class="description-image">
                        <div class="box-image">
                            <img src="images/product/single/01.png" alt="">
                        </div>
                        <div class="box-text">
                            <h4>Nuqqam Et Massa</h4>
                            <p>Sed sodales sed orci molestie tristique. Nunc dictum, erat id molestie vestibulum, ex leo
                                vestibulum justo, luctus tempor erat sem quis diam. Lorem ipsum dolor sit amet.</p>
                        </div>
                    </div><!-- /.description-image -->
                </div><!-- /.col-md-6 -->
                <div class="col-md-12">
                    <div class="different-color">
                        <div class="title">
                            Different Colors
                        </div>
                        <p>
                            Sed sodales sed orci<br/>molestie
                        </p>
                    </div><!-- /.different-color -->
                </div><!-- /.col-md-12 -->
                <div class="col-md-6">
                    <div class="box-left">
                        <div class="img-line">
                            <img src="images/product/single/line-1.png" alt="">
                        </div>
                        <div class="img-product">
                            <img src="images/product/single/06.png" alt="">
                        </div>
                    </div><!-- /.box-left -->
                </div><!-- /.col-md-6 -->
                <div class="col-md-6">
                    <div class="box-right">
                        <div class="img-line">
                            <img src="images/product/single/line-2.png" alt="">
                            <img src="images/product/single/04.png" alt="">
                        </div>
                        <div class="img-product">

                        </div>
                        <div class="box-text">
                            <h4>Nuqqam Et Massa</h4>
                            <p>Sed sodales sed orci molestie tristique. Nunc dictum, erat id molestie vestibulum, ex leo
                                vestibulum justo, luctus tempor erat sem quis diam. Lorem ipsum dolor sit amet.</p>
                        </div>
                    </div><!-- /.box-right -->
                </div><!-- /.col-md-6 -->
            </div><!-- /.row -->
            <div class="row">
                <div class="col-md-12">
                    <div class="tecnical-specs">
                        <h4 class="name">
                            Warch 42 mm Smart Watches
                        </h4>
                        <table>
                            <tbody>
                            <tr>
                                <td>Height</td>
                                <td>38.6mm</td>
                            </tr>
                            <tr>
                                <td>Meterial</td>
                                <td>Stainless Stee</td>
                            </tr>
                            <tr>
                                <td>Case</td>
                                <td>40g</td>
                            </tr>
                            <tr>
                                <td>Color</td>
                                <td>blue, gray, green, light blue, lime, purple, red, yellow</td>
                            </tr>
                            <tr>
                                <td>Depth</td>
                                <td>10.5mm</td>
                            </tr>
                            <tr>
                                <td>Width</td>
                                <td>33.3mm</td>
                            </tr>
                            <tr>
                                <td>Size</td>
                                <td>Large, Medium, Small</td>
                            </tr>
                            </tbody>
                        </table><!-- /.table -->
                    </div><!-- /.tecnical-specs -->
                </div><!-- /.col-md-12 -->
            </div><!-- /.row -->
            <div class="row">
                <div class="col-md-6">
                    <div class="rating">
                        <div class="title">
                            Based on 3 reviews
                        </div>
                        <div class="score">
                            <div class="average-score">
                                <p class="numb">4.3</p>
                                <p class="text">Average score</p>
                            </div>
                            <div class="queue">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                            </div>
                        </div><!-- /.score -->
                        <ul class="queue-box">
                            <li class="five-star">
									<span>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
									</span>
                                <span class="numb-star">3</span>
                            </li><!-- /.five-star -->
                            <li class="four-star">
									<span>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
									</span>
                                <span class="numb-star">4</span>
                            </li><!-- /.four-star -->
                            <li class="three-star">
									<span>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
									</span>
                                <span class="numb-star">3</span>
                            </li><!-- /.three-star -->
                            <li class="two-star">
									<span>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
									</span>
                                <span class="numb-star">2</span>
                            </li><!-- /.two-star -->
                            <li class="one-star">
									<span>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
									</span>
                                <span class="numb-star">0</span>
                            </li><!-- /.one-star -->
                        </ul><!-- /.queue-box -->
                    </div><!-- /.rating -->
                </div><!-- /.col-md-6 -->
                <div class="col-md-6">
                    <div class="form-review">
                        <div class="title">
                            Add a review
                        </div>
                        <div class="your-rating queue">
                            <span>Your Rating</span>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                        </div>
                        <form action="#" method="get" accept-charset="utf-8">
                            <div class="review-form-name">
                                <input type="text" name="name-author" value="" placeholder="Name">
                            </div>
                            <div class="review-form-email">
                                <input type="text" name="email-author" value="" placeholder="Email">
                            </div>
                            <div class="review-form-comment">
                                <textarea name="review-text" placeholder="Your Name"></textarea>
                            </div>
                            <div class="btn-submit">
                                <button type="submit">Add Review</button>
                            </div>
                        </form>
                    </div><!-- /.form-review -->
                </div><!-- /.col-md-6 -->
                <div class="col-md-12">
                    <ul class="review-list">
                        <li>
                            <div class="review-metadata">
                                <div class="name">
                                    Ali Tufan : <span>April 3, 2016</span>
                                </div>
                                <div class="queue">
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                </div>
                            </div><!-- /.review-metadata -->
                            <div class="review-content">
                                <p>
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem
                                    Ipsum has been the industry's standard dummy text ever since the 1500s, when an
                                    unknown printer took a galley of type and scrambled it to make a type specimen book.
                                    It has survived not only five centuries, but also the leap into electronic
                                    typesetting, remaining essentially unchanged.
                                </p>
                            </div><!-- /.review-content -->
                        </li>
                        <li>
                            <div class="review-metadata">
                                <div class="name">
                                    Peter Tufan : <span>April 3, 2016</span>
                                </div>
                                <div class="queue">
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                </div>
                            </div><!-- /.review-metadata -->
                            <div class="review-content">
                                <p>
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem
                                    Ipsum has been the industry's standard dummy text ever since the 1500s, when an
                                    unknown printer took a galley of type and scrambled it to make a type specimen book.
                                    It has survived not only five centuries, but also the leap into electronic
                                    typesetting, remaining essentially unchanged.
                                </p>
                            </div><!-- /.review-content -->
                        </li>
                        <li>
                            <div class="review-metadata">
                                <div class="name">
                                    Jon Tufan : <span>April 3, 2016</span>
                                </div>
                                <div class="queue">
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                </div>
                            </div><!-- /.review-metadata -->
                            <div class="review-content">
                                <p>
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem
                                    Ipsum has been the industry's standard dummy text ever since the 1500s, when an
                                    unknown printer took a galley of type and scrambled it to make a type specimen book.
                                    It has survived not only five centuries, but also the leap into electronic
                                    typesetting, remaining essentially unchanged.
                                </p>
                            </div><!-- /.review-content -->
                        </li>
                    </ul><!-- /.review-list -->
                </div><!-- /.col-md-12 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </section><!-- /.flat-product-content -->


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
