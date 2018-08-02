<%--
  Created by IntelliJ IDEA.
  User: EdwinPan
  Date: 2018/7/30
  Time: 8:33
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
    <title>My Account</title>

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

    <%--当前位置路径面包屑--%>
    <section class="flat-breadcrumb">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <ul class="breadcrumbs">
                        <li class="trail-item">
                            <a href="IndexServlet" title="">Home</a>
                            <span><img src="images/icons/arrow-right.png" alt=""></span>
                        </li>
                        <li class="trail-end">
                            <a href="#" title="">Register</a>
                        </li>
                    </ul><!-- /.breacrumbs -->
                </div><!-- /.col-md-12 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </section><!-- /.flat-breadcrumb -->

    <section class="flat-account background">
        <div class="container">
            <div class="row">

                <div class="col-md-6" style="margin: 0 auto; ">
                    <div class="form-register" style="height: auto;">
                        <div class="title">
                            <h3>Register</h3>
                        </div>
                        <form action="LoginServlet?type=regist" method="get" id="form-register" accept-charset="utf-8">
                            <div class="form-box">
                                <label for="name-register">Username * </label>
                                <input type="text" id="name-register" name="name-register" placeholder="用户名">
                            </div><!-- /.form-box -->
                            <div class="form-box">
                                <label for="password-register">Password</label>
                                <input type="password" id="password-register" name="password-register" placeholder="密码">
                            </div><!-- /.form-box -->
                            <div class="form-box">
                                <label for="password-register">Confirm_Password</label>
                                <input type="password" id="confirm-password-register" name="confirm-password-register"
                                       placeholder="确认密码">
                            </div><!-- /.form-box -->
                            <div class="form-box">
                                <label for="name-register">Phone </label>
                                <input type="text" id="phone-register" name="phone-register" placeholder="手机号">
                            </div><!-- /.form-box -->
                            <div class="form-box">
                                <label for="name-register">Email address * </label>
                                <input type="text" id="email-register" name="email-register" placeholder="邮箱">
                            </div><!-- /.form-box -->

                            <div class="form-box">
                                <label for="name-register">性别</label>
                                <div>
                                    <label>
                                        <input type="radio" name="sex" checked value="0">
                                        男
                                    </label>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <label>
                                        <input type="radio" name="sex" value="1">
                                        女
                                    </label>
                                </div>
                            </div><!-- /.form-box -->

                            <div class="form-box">
                                <button type="submit" class="register">Register</button>
                                <a href="login.jsp" title="登录">已有账号？去登录</a>
                            </div><!-- /.form-box -->
                        </form><!-- /#form-register -->
                    </div><!-- /.form-register -->
                </div><!-- /.col-md-6 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </section><!-- /.flat-account -->


    <%@ include file="comment/bottom.jsp" %>

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


