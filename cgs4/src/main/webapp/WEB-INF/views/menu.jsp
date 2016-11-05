<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String ctx = request.getContextPath();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<header class="header-wrapper">
		<div class="container">
			<!-- 헤더 로고-->
			<a href='index' class="logo"> <img style="max-width: 100px"
				alt='logo' src="<%=ctx%>/resources/images/logo.png">
			</a>

			<!-- 메인페이지 메뉴바-->
			<nav id="navigation-box"> <!-- Toggle for mobile menu mode -->
			<a href="#" id="navigation-toggle"> <span class="menu-icon">
					<span class="icon-toggle" role="button"
					aria-label="Toggle Navigation"> <span class="lines"></span>
				</span>
			</span>
			</a> <!-- 각 메뉴별 서브메뉴창-->
			<ul id="navigation">
				<li><span class="sub-nav-toggle plus"></span> <a href="	movie_list">영화</a>
					</li>
				<li><span class="sub-nav-toggle plus"></span> <a
					href="book1">예매</a>
					</li>
				<li><span class="sub-nav-toggle plus"></span> <a
					href="cinemas">영화관</a>
					</li>
				<li><span class="sub-nav-toggle plus"></span> <a
					href="contact">고객센터</a>
					</li>
			</ul>
			</nav>
			<!-- 메뉴바 끝 -->

			<!-- 부가적인 버튼(메뉴바 오른쪽으로 위치):
				로그인시 내 정보, 바로 예매 페이지로 가는 버튼-->
			<div class="control-panel">
				<div class="auth auth--home">
					<div class="auth__show">
						<span class="auth__image"> <img alt=""
							src="http://placehold.it/31x31">
						</span>
					</div>
					<a href="#" class="btn btn--sign btn--singin">${member_list.name} </a>
					<ul class="auth__function">
						<!-- 내정보 버튼 눌렀을 시 뜨는 서브창 -->
						<li><a href="#" class="auth__function-item">내가본영화</a></li>
						<li><a href="#" class="auth__function-item">예매 내역</a></li>
						<li><a href="#" class="auth__function-item">내가쓴리뷰</a></li>
						<li><a href="#" class="auth__function-item">환경설정</a></li>
					</ul>	
				</div>
				<!-- 예매하기 버튼 누르면 login 요청하는 창이 뜸 -->
				<a href="#"
					class="btn btn-md btn--warning btn--book btn-control--home login-window"><Strong>빠른예매
				</Strong>></a>  <%if(request.getAttribute("id")==null){%>
				 <a href="login" class="btn btn-md btn--warning btn--wider">로그인</a>
				<%}else{ %>
				<a href="logout" class="btn btn-md btn--warning btn--wider">로그아웃</a>
				<%} %>
			</div>

		</div>
		</header>

</body>
</html>