<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String ctx = request.getContextPath();
%>
<style>
#navigation {
	background-color: rgb(60, 100, 153);
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
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=ctx%>/resources/css/main.css">
<!-- Bootstrap -->
<link rel="stylesheet" href="<%=ctx%>/resources/css/bootstrap.min.css">
<link href="<%=ctx%>/resources/css/style.css?v=1" rel="stylesheet" />

</head>
<body>
	<div style="height: 100px"></div>
	<header id="navigation" class="navbar-fixed-top">
	<div class="container">
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
			<a href='index' class="logo img"> <img
				src="<%=ctx%>/resources/images/logo.png" alt="LogoCGS">
			</a>
			<!-- /logo -->
		</div>

		<!-- main nav -->
		<nav class="collapse navigation navbar-collapse navbar-right" role="navigation">
		<ul id="nav" class="nav navbar-nav">
			<li><a href="index">Home</a></li>
			<li><a href="movie_list?page=0">Movie</a></li>
			<li><a href="book1">Ticket</a></li>
			<li><a href="cinemas">Cinema</a></li>
			<li><a href="contact">Contact</a></li>
			<%
				if ((String) session.getAttribute("id") == null) {
			%>
			<li><a href="login">Login</a></li>
			<%
				} else {
					String name = (String) session.getAttribute("name");
			%>
			<li><a href="#" class="auth__show">My Page</a>
				<ul class="auth__function">
					<li class="auth__function-item">안녕하세요 <strong><%=name%></strong>님!</li>
					<br>
					<li><a href="modify" class="auth__function-item">내 정보 확인</a></li>
					<li><a href="#" class="auth__function-item">예매 내역 확인</a></li>
				</ul></li>
			<li><a href="logout">Logout</a></li>
			<%
				}
			%>
			<!-- 			<li><span class="sub-nav-toggle plus"></span> -->
		</ul>
		</nav>
		<!-- /main nav -->
	</div>
	</header>

	<!-- <header class="header-wrapper"> -->


	<!-- 		<div class="container"> -->
	<!-- 헤더 로고 -->
	<!-- 			<a href='index' class="logo"> <img style="max-width: 100px" -->
	<%-- 				alt='logo' src="<%=ctx%>/resources/images/logo.png"> --%>
	<!-- 			</a> -->

	<!-- 메인페이지 메뉴바 -->
	<!-- 			<nav id="navigation-box"> Toggle for mobile menu mode -->
	<!-- 			<a href="#" id="navigation-toggle"> <span class="menu-icon"> -->
	<!-- 					<span class="icon-toggle" role="button" -->
	<!-- 					aria-label="Toggle Navigation"> <span class="lines"></span> -->
	<!-- 				</span> -->
	<!-- 			</span> -->
	<!-- 			</a> 각 메뉴별 서브메뉴창 -->
	<!-- 			<ul id="navigation"> -->
	<!-- 				<li><span class="sub-nav-toggle plus"></span> <a href="	movie_list?page=0">영화</a> -->
	<!-- 					</li> -->
	<!-- 				<li><span class="sub-nav-toggle plus"></span> <a -->
	<!-- 					href="book1">예매</a> -->
	<!-- 					</li> -->
	<!-- 				<li><span class="sub-nav-toggle plus"></span> <a -->
	<!-- 					href="cinemas">영화관</a> -->
	<!-- 					</li> -->
	<!-- 				<li><span class="sub-nav-toggle plus"></span> <a -->
	<!-- 					href="contact">고객센터</a> -->
	<!-- 					</li> -->

	<%-- 				<%if((String) session.getAttribute("id")!=null){%> --%>
	<!-- 				 <li><span class="sub-nav-toggle plus"></span> <a -->
	<!-- 					href="reserve_list">예매목록</a> -->
	<!-- 					</li> -->
	<%-- 				<%} %> --%>
	<!-- 			</ul> -->
	<!-- 			</nav> -->
	<!-- 메뉴바 끝 -->

	<!-- 			<!-- 부가적인 버튼(메뉴바 오른쪽으로 위치): -->
	<!-- 				로그인시 내 정보, 바로 예매 페이지로 가는 버튼 -->
	<!-- 			<div class="control-panel"> -->
	<%-- 			<%if((String) session.getAttribute("id")!=null){%> --%>
	<!-- 				<div class="auth auth--home"> -->
	<!-- 					<div class="auth__show"> -->
	<!-- 						<span class="auth__image"> <img alt="" -->
	<!-- 							src="http://placehold.it/31x31"> -->
	<!-- 						</span> -->
	<!-- 					</div> -->
	<%-- 					<a href="contact" class="btn btn--sign btn--singin"><%=(String)session.getAttribute("name") %> </a> --%>
	<!-- 					<ul class="auth__function open-function"> -->
	<!-- 						내정보 버튼 눌렀을 시 뜨는 서브창 -->
	<!-- 						<li><a href="modify" class="auth__function-item">내 정보 확인</a></li> -->
	<!-- 						<li><a href="#" class="auth__function-item">예매 내역</a></li> -->
	<!-- 						<li><a href="#" class="auth__function-item">내가쓴리뷰</a></li> -->
	<!-- 						<li><a href="#" class="auth__function-item">환경설정</a></li> -->
	<!-- 					</ul>	 -->
	<!-- 				</div> -->
	<%-- 				<%}else{ %> --%>
	<%-- 				<%} %> --%>
	<!-- 				예매하기 버튼 누르면 login 요청하는 창이 뜸 -->
	<!-- 				<a href="#" -->
	<!-- 					class="btn btn-md btn--warning btn--book btn-control--home login-window"><Strong>빠른예매 -->
	<!-- 				</Strong>></a>  -->
	<%-- 				 <%if((String) session.getAttribute("id")==null){%> --%>
	<!-- 				 <a href="login" class="btn btn-md btn--warning btn--wider">로그인</a> -->
	<%-- 				<%}else{ %> --%>
	<!-- 				<a href="logout" class="btn btn-md btn--warning btn--wider">로그아웃</a> -->
	<%-- 				<%} %> --%>
	<!-- 			</div> -->

	<!-- 		</div> -->
	<!-- 		</header> -->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
	<script>
		jQuery(window).scroll(function() {
			if (jQuery(window).scrollTop() > 50) {
				jQuery("#navigation").css("background-color", "#3C6499");
				jQuery("#navigation").addClass("animated-nav");
				jQuery('.auth__function').css("top", "66px");
			} else {
				jQuery("#navigation").css("background-color", "#3C6499");
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