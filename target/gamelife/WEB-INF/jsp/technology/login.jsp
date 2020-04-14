<%--
  Created by IntelliJ IDEA.
  User: wuweijie
  Date: 2020-04-13
  Time: 16:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>Login Page - Technology</title>

    <meta name="description" content="User login page" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="/technology/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/technology/font-awesome/4.5.0/css/font-awesome.min.css" />

    <!-- text fonts -->
    <link rel="stylesheet" href="/technology/css/fonts.googleapis.com.css" />

    <!-- ace styles -->
    <link rel="stylesheet" href="/technology/css/ace.min.css" />

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="/technology/css/ace-part2.min.css" />
    <![endif]-->
    <link rel="stylesheet" href="/technology/css/ace-rtl.min.css" />

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="/technology/css/ace-ie.min.css" />
    <![endif]-->

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
    <script src="/technology/js/html5shiv.min.js"></script>
    <script src="/technology/js/respond.min.js"></script>
    <![endif]-->
</head>


<body class="login-layout">
<div class="main-container">
    <div class="main-content">
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1">
                <div class="login-container">
                    <div class="center">
                        <h1>
                            <i class="ace-icon fa fa-leaf green"></i>
                            <span class="red">GameLife</span>
                            <span class="white" id="id-text2">Technology</span>
                        </h1>
                        <!--								<h4 class="blue" id="id-company-text">&copy; Wwj</h4>-->
                    </div>

                    <div class="space-6"></div>

                    <div class="position-relative">
                        <div id="login-box" class="login-box visible widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <h4 class="header blue lighter bigger">
                                        <i class="ace-icon fa fa-coffee green"></i>
                                        Please Enter Your Information
                                    </h4>

                                    <div class="space-6"></div>

                                    <fieldset>
                                        <label class="block clearfix" id="user_name_label">
														<span class="block input-icon input-icon-right">
															<input id="user_name" type="text"
                                                                   class="form-control"
                                                                   placeholder="Username"/>
															<i class="ace-icon fa fa-user"></i>
														</span>
                                        </label>
                                        <label class="clearfix red small"
                                               id="user_name_info">&nbsp;</label>

                                        <label class="block clearfix" id="password_label">
														<span class="block input-icon input-icon-right">
															<input id="password" type="password"
                                                                   class="form-control"
                                                                   placeholder="Password"/>
															<i class="ace-icon fa fa-lock"></i>
														</span>
                                        </label>
                                        <label class="clearfix red small"
                                               id="password_info">&nbsp;</label>

                                        <div class="space"></div>

                                        <div class="clearfix">
                                            <!--													<label class="inline">-->
                                            <!--														<input type="checkbox" class="ace"/>-->
                                            <!--														<span class="lbl"> Remember Me</span>-->
                                            <!--													</label>-->

                                            <button type="button"
                                                    class="width-35 pull-right btn btn-sm btn-primary"
                                                    onclick="login()">
                                                <i class="ace-icon fa fa-key"></i>
                                                <span class="bigger-110">Login</span>
                                            </button>
                                        </div>

                                        <div class="space-4"></div>
                                    </fieldset>

                                    <!--											<div class="social-or-login center">-->
                                    <!--												<span class="bigger-110">Or Login Using</span>-->
                                    <!--											</div>-->

                                    <!--											<div class="space-6"></div>-->

                                    <!--											<div class="social-login center">-->
                                    <!--												<a class="btn btn-primary">-->
                                    <!--													<i class="ace-icon fa fa-facebook"></i>-->
                                    <!--												</a>-->

                                    <!--												<a class="btn btn-info">-->
                                    <!--													<i class="ace-icon fa fa-twitter"></i>-->
                                    <!--												</a>-->

                                    <!--												<a class="btn btn-danger">-->
                                    <!--													<i class="ace-icon fa fa-google-plus"></i>-->
                                    <!--												</a>-->
                                    <!--											</div>-->
                                </div><!-- /.widget-main -->

                                <div class="toolbar clearfix">
                                    <div>
                                        <a href="#" data-target="#forgot-box" class="forgot-password-link">
                                            <!--													<i class="ace-icon fa fa-arrow-left"></i>-->
                                            <!--													I forgot my password-->
                                        </a>
                                    </div>

                                    <div>
                                        <a id="to_register" href="#" data-target="#signup-box" class="user-signup-link">
                                            I want to register
                                            <i class="ace-icon fa fa-arrow-right"></i>
                                        </a>
                                    </div>
                                </div>
                            </div><!-- /.widget-body -->
                        </div><!-- /.login-box -->

                        <div id="forgot-box" class="forgot-box widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <h4 class="header red lighter bigger">
                                        <i class="ace-icon fa fa-key"></i>
                                        Retrieve Password
                                    </h4>

                                    <div class="space-6"></div>
                                    <p>
                                        Enter your email and to receive instructions
                                    </p>

                                    <form>
                                        <fieldset>
                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="email" class="form-control" placeholder="Email" />
															<i class="ace-icon fa fa-envelope"></i>
														</span>
                                            </label>

                                            <div class="clearfix">
                                                <button type="button" class="width-35 pull-right btn btn-sm btn-danger">
                                                    <i class="ace-icon fa fa-lightbulb-o"></i>
                                                    <span class="bigger-110">Send Me!</span>
                                                </button>
                                            </div>
                                        </fieldset>
                                    </form>
                                </div><!-- /.widget-main -->

                                <div class="toolbar center">
                                    <a href="#" data-target="#login-box" class="back-to-login-link">
                                        Back to login
                                        <i class="ace-icon fa fa-arrow-right"></i>
                                    </a>
                                </div>
                            </div><!-- /.widget-body -->
                        </div><!-- /.forgot-box -->

                        <div id="signup-box" class="signup-box widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <h4 class="header green lighter bigger">
                                        <i class="ace-icon fa fa-users blue"></i>
                                        New User Registration
                                    </h4>

                                    <div class="space-6"></div>
                                    <p> Enter your details to begin: </p>

                                    <fieldset>
                                        <label id="r_user_name_label" class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input id="r_user_name" type="text" class="form-control"
                                                                   placeholder="Username"/>
															<i class="ace-icon fa fa-user"></i>
														</span>
                                        </label>

                                        <label class="clearfix red small"
                                               id="r_user_name_info">&nbsp;</label>

                                        <label id="r_password_label" class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input id="r_password" type="password"
                                                                   class="form-control"
                                                                   placeholder="Password"/>
															<i class="ace-icon fa fa-lock"></i>
														</span>
                                        </label>

                                        <label class="clearfix red small"
                                               id="r_password_info">&nbsp;</label>

                                        <label id="r_repeat_password_label" class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input id="r_repeat_password" type="password"
                                                                   class="form-control"
                                                                   placeholder="Repeat password"/>
															<i class="ace-icon fa fa-retweet"></i>
														</span>
                                        </label>

                                        <label class="clearfix red small"
                                               id="r_repeat_password_info">&nbsp;</label>

                                        <!--													<label class="block">-->
                                        <!--														<input type="checkbox" class="ace" />-->
                                        <!--														<span class="lbl">-->
                                        <!--															I accept the-->
                                        <!--															<a href="#">User Agreement</a>-->
                                        <!--														</span>-->
                                        <!--													</label>-->

                                        <div class="space-8"></div>

                                        <div class="clearfix">
                                            <button type="reset" onclick="reset()"
                                                    class="width-30 pull-left btn btn-sm">
                                                <i class="ace-icon fa fa-refresh"></i>
                                                <span class="bigger-110">Reset</span>
                                            </button>

                                            <button type="button" onclick="register()"
                                                    class="width-65 pull-right btn btn-sm btn-success">
                                                <span class="bigger-110">Register</span>

                                                <i class="ace-icon fa fa-arrow-right icon-on-right"></i>
                                            </button>
                                        </div>
                                    </fieldset>
                                </div>

                                <div class="toolbar center">
                                    <a id="to_login" href="#" data-target="#login-box" class="back-to-login-link">
                                        <i class="ace-icon fa fa-arrow-left"></i>
                                        Back to login
                                    </a>
                                </div>
                            </div><!-- /.widget-body -->
                        </div><!-- /.signup-box -->
                    </div><!-- /.position-relative -->
                </div>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.main-content -->
</div><!-- /.main-container -->

<!-- basic scripts -->

<!--[if !IE]> -->
<script src="/technology/js/jquery-2.1.4.min.js"></script>

<!-- <![endif]-->

<!--[if IE]>
<script src="/technology/js/jquery-1.11.3.min.js"></script>
<![endif]-->
<script type="text/javascript">
			// if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
			if('ontouchstart' in document.documentElement) document.write("<script src=\"/technology/js/jquery.mobile.custom.min.js\">"+"<"+"/script>");
		</script>

<!-- inline scripts related to this page -->
<script type="text/javascript">
			var login_page = true;

			jQuery(function($) {
			 $(document).on('click', '.toolbar a[data-target]', function(e) {
				e.preventDefault();
				var target = $(this).data('target');
				$('.widget-box.visible').removeClass('visible');//hide others
				$(target).addClass('visible');//show target
			 });
			});

			$(document).ready(function () {
				$('body').attr('class', 'login-layout light-login');
				$('#id-text2').attr('class', 'grey');
				$('#id-company-text').attr('class', 'blue');
			});

			function user_name_check() {
				if($("#user_name").val().trim().length===0){
					var user_name_info = $("#user_name_info");
					user_name_info.text("请输入用户名");
					return false
				}
				return true
			}

			function password_check() {
				if($("#password").val().trim().length===0){
					var password_info = $("#password_info");
					password_info.text("请输入密码");
					return false
				}
				return true
			}

			function r_user_name_check() {
				if($("#r_user_name").val().trim().length===0){
					var user_name_info = $("#r_user_name_info");
					user_name_info.text("请输入用户名");
					return false
				}
				return true
			}

			function r_password_check() {
				if($("#r_password").val().trim().length===0){
					var r_password_info = $("#r_password_info");
					r_password_info.text("请输入密码");
					return false
				}
				return true
			}

			function r_repeat_password_check() {
				if($("#r_repeat_password").val().trim().length===0){
					var r_repeat_password_info = $("#r_repeat_password_info");
					r_repeat_password_info.text("请输入密码");
					return false
				}
				else if ($("#r_password").val().trim().length > 0){
					if ($("#r_password").val().trim() === $("#r_repeat_password").val().trim()) {
						return true
					} else {
						var r_repeat_password_info = $("#r_repeat_password_info");
						r_repeat_password_info.text("请输入相同的密码");
						return false
					}
				}
				return true
			}

			$("#user_name_label").on('click', function () {
				$("#user_name_info").html("&nbsp;");
			});

			$("#password_label").on('click', function () {
				$("#password_info").html("&nbsp;");
			});

			$("#r_repeat_password_label").on('click', function () {
				$("#r_repeat_password_info").html("&nbsp;");
			});

			$("#r_password_label").on('click', function () {
				$("#r_password_info").html("&nbsp;");
			});

			$("#r_user_name_label").on('click', function () {
				$("#r_user_name_info").html("&nbsp;");
			});

			function login() {
				var r = user_name_check() & password_check();
				if (r === 1) {
					$.ajax({
						url:"/technology/login",
						type:"post",
						data:$.param({
							"user_name": $("#user_name").val().trim(),
							"password": $("#password").val().trim(),
						}),
						dataType: "text",
						success: function (data) {
							var r = JSON.parse(data);
							if (r.result === "success") {
								window.location.href=r.tag;
							}else {
								$("#password_info").text("用户名或密码不正确");
							}
						}
					})
				}
			}

			function register() {
				var r = r_user_name_check() & r_password_check() & r_repeat_password_check();
				if (r === 1) {
					$.ajax({
						url:"/technology/register",
						type:"post",
						data:$.param({
							"user_name": $("#r_user_name").val().trim(),
							"password": $("#r_password").val().trim(),
						}),
						dataType: "text",
						success: function (data) {
							var r = JSON.parse(data);
							if (r.result === "success") {
								window.location.href=r.tag;
							}else {
								$("#r_repeat_password_info").text("注册失败请联系管理员");
							}
						}
					})
				}
			}

			function getCookie(name) {
				var r = document.cookie.match("\\b" + name + "=([^;]*)\\b");
				return r ? r[1] : undefined;
			}

			$(document).keypress(function (e) {
				var eCode = e.keyCode ? e.keyCode : e.which ? e.which : e.charCode;
				if (eCode === 13) {
					if (login_page) {
						login();
					}else {
						register();
					}
				}
			});

			$("#to_login").on("click", function () {
				login_page = true;
			});

			$("#to_register").on("click", function () {
				login_page = false;
			});

			function reset() {
				$("#r_repeat_password_info").html("&nbsp;");
				$("#r_password_info").html("&nbsp;");
				$("#r_user_name_info").html("&nbsp;");

				$("#r_repeat_password").val("");
				$("#r_password").val("");
				$("#r_user_name").val("");
			}
		</script>
</body>
</html>
