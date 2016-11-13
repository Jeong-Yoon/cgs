<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String ctx = request.getContextPath();
%>
<html>
<head>
<style>
#navigation {
	background-color: rgba(0, 0, 3, 0.7);
}

.auth__function{
	display:none;
    background-color: #4c4145;
    width: 220px;
    padding: 15px 29px 15px;
    transform-origin: left top;
    position: absolute;
/*     top: 97px; */
    top: 80px;
    left: 0;
    z-index: 2;
    transition: all 0.6s ease;
}
.auth__function-item{
color: #fff;
    font-size: 13px;
    font-weight: 600;
/*     padding: 38px 25px; */
    text-transform: uppercase;
}  
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CGS menubar</title>

<!-- icon -->
<link rel="shortcut icon" type="image/x-icon"
	href="<%=ctx%>/resources/css/img/favicon.png" />


<!-- Mobile menu -->
<link href="<%=ctx%>/resources/css/gozha-nav.css" rel="stylesheet" />
<!-- Bootstrap -->
<link rel="stylesheet" href="<%=ctx%>/resources/css/bootstrap.min.css">

<!-- Animate -->
<link rel="stylesheet" href="<%=ctx%>/resources/css/animate.css">
<!-- Main Stylesheet -->
<link rel="stylesheet" href="<%=ctx%>/resources/css/main.css">
<!-- Main Responsive -->
<link rel="stylesheet" href="<%=ctx%>/resources/css/responsive.css">
<!-- Mobile menu -->
<link href="<%=ctx%>/resources/css/gozha-nav.css" rel="stylesheet" >


</head>
<body>
	<div style="height: 100px"></div>
	<header id="navigation" class="navbar-fixed-top">
	<div class="container ">
		<!--
        Fixed Navigation
        ==================================== -->
		<div class="navbar-header">
			<!-- responsive nav button -->
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<!-- /responsive nav button -->

			<!-- logo -->
			<h1 class="navbar-brand">
				<a href="<%=ctx%>/index"> <img
					src="<%=ctx%>/resources/images/logo-header.png" alt="LogoCGS"
					style="height: 75%; width: 75%">
				</a>
			</h1>
			<!-- /logo -->

		<!-- main nav -->
		<nav class="collapse navigation navbar-collapse navbar-right" role="navigation" >
		<ul id="nav" class="nav navbar-nav spoqahansans">
			<li class="normal w300"><a href="<%=ctx%>/index">Home</a></li>
			<li class="normal w300"><a href="<%=ctx%>/movie_list?page=0">Movie</a></li>
			<li class="normal w300"><a href="<%=ctx%>/book1">Ticket</a></li>
			<li class="normal w300"><a href="<%=ctx%>/cinemas">Cinema</a></li>
			<li class="normal w300"><a href="<%=ctx%>/contact">Contact</a></li>
			<%
				if ((String) session.getAttribute("id") == null) {
			%>
			<li><a href="<%=ctx%>/login">Login</a></li>
			<%
				} else {
					String name = (String) session.getAttribute("name");
			%>
			<li><a href="#" class="auth__show spoqahansans normal w300">My Page</a>
				<ul class="auth__function spoqahansans">
					<li class="auth__function-item normal w300">안녕하세요 <strong><%=name%></strong>님!</li>
					<br>
					<li class="normal w250" style="padding: 3px;"><a href="<%=ctx%>/modify" class="auth__function-item">내 정보 확인</a></li>
					<li class="normal w250" style="padding: 3px"><a href="<%=ctx%>/reserve_list/?mId=<%=(String) session.getAttribute("id") %>" class="auth__function-item">예매 내역 확인</a></li>
				</ul></li>
			<li class="normal w300"><a href="<%=ctx%>/logout">Logout</a></li>
			<%
				}
			%>
		</ul>
		</nav>
	</div>
	</header>

	<!-- main jQuery -->
	<script src="<%=ctx%>/resources/js/external/jquery-1.11.1.min.js"></script>
	<!-- Bootstrap -->
	<script src="<%=ctx%>/resources/js/min/bootstrap.min.js"></script>
	<!-- jquery.nav -->
	<script src="<%=ctx%>/resources/js/jquery.nav.js"></script>
	
	<script>
		jQuery(window).scroll(function() {
			if (jQuery(window).scrollTop() > 50) {
				jQuery("#navigation").css("background-color", "rgba(0, 0, 3, 0.7)");
				jQuery("#navigation").addClass("animated-nav");
				jQuery('.auth__function').css("top", "66px");
			} else {
				jQuery("#navigation").css("background-color", "rgba(0, 0, 3, 0.7)");
				jQuery("#navigation").removeClass("animated-nav");
				jQuery('.auth__function').css("top", "80px");
			}
		});
		$('.auth__show').click(function(e) {
			e.preventDefault();
			$('.auth__function').toggleClass('open-function')
		});

	</script>

</body>
</html>