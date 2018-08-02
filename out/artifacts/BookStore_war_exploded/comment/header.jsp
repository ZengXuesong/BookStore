<%--
  Created by IntelliJ IDEA.
  User: EdwinPan
  Date: 2018/7/30
  Time: 9:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<!-- /#header -->
