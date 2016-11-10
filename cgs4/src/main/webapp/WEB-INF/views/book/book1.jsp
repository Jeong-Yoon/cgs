<%@page import="org.springframework.ui.Model"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="kr.co.cgs4.dao.BookDAO"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String ctx = request.getContextPath();
%>
<%
	SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.KOREA);
	Date date = new Date();
	String mTime = mSimpleDateFormat.format(date);
%>
<html>
<head>
<!-- Basic Page Needs -->
<meta charset="utf-8">
<title>AMovie - Booking step 1</title>
<meta name="description" content="A Template by Gozha.net">
<meta name="keywords" content="HTML, CSS, JavaScript">
<meta name="author" content="Gozha.net">

<!-- Mobile Specific Metas-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta content="telephone=no" name="format-detection">

<!-- Fonts -->
<!-- Font awesome - icon font -->
<link
	href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet">
<!-- Roboto -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700'
	rel='stylesheet' type='text/css'>

<!-- Stylesheets -->
<!-- jQuery UI -->
<link
	href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css"
	rel="stylesheet">

<!-- Mobile menu -->
<link href="<%=ctx%>/resources/css/gozha-nav.css" rel="stylesheet" />
<!-- Select -->
<link href="<%=ctx%>/resources/css/external/jquery.selectbox.css"
	rel="stylesheet" />
<!-- Swiper slider -->
<link href="<%=ctx%>/resources/css/external/idangerous.swiper.css"
	rel="stylesheet" />


<!-- Custom -->
<link href="<%=ctx%>/resources/css/style.css?v=1" rel="stylesheet" />
<!-- Modernizr -->
<script src="<%=ctx%>/resources/js/external/modernizr.custom.js"></script>
<!-- Modernizer Script for old Browsers -->
<%-- <script src="<%=ctx%>/js/external/modernizr-2.6.2.min.js"></script> --%>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]> 
    	<script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script> 
		<script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.js"></script>		
    <![endif]-->
<script>
	function movieChk(name) {
		document.getElementById("choosed_film").innerHTML = name;
		document.getElementById("film_name").setAttribute("value", name);
// 		bookChk();
	}
	function dateChk() {
		var date = document.getElementById("datepicker").getAttribute("value");
		if (hasDate(date) != 1) {
			document.getElementById("screening_date").setAttribute("value",
					name)
// 			bookChk();
		} else {
			alert("해당 날짜에는 상영 계획이 없습니다.");
		}
	}
	function hasDate(date) {
		if (date == "11/01/2016") {
			return 1;
		} else {
			return 0;
		}
	}
// 	function submit() {
// 		document.getElementById("film-and-time").submit();
// 	}
</script>


</head>

<body>
		<%
		String fname = request.getParameter("film_name");
		String sname = request.getParameter("site_name");
		String sdate = request.getParameter("screening_date");
		String scroll = request.getParameter("scrolls");
		%>
	<div class="wrapper">
		<!-- 메뉴바-->
		 <jsp:include page="../menu.jsp" flush="false"/>
        
<!-- 		<header id="navigation" class="navbar-fixed-top"> -->
<!--             <div class="container"> -->
<!--                 <div class="navbar-header"> -->
<!--                     <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> -->
<!--                         <span class="sr-only">Toggle navigation</span> -->
<!--                         <span class="icon-bar"></span> -->
<!--                         <span class="icon-bar"></span> -->
<!--                         <span class="icon-bar"></span> -->
<!--                     </button> -->
<!--                         <a href='#home' class="logo"> -->
<%--                             <img src="<%=ctx%>/resources/images/logo.png" alt="LogoCGS"> --%>
<!--                         </a> -->
<!--                     </div> -->

<!--                     <nav class="collapse navigation navbar-collapse navbar-right" role="navigation"> -->
<!--                         <ul id="nav" class="nav navbar-nav"> -->
<!--                             <li class="current"><a href="#first-main">Home</a></li> -->
<!--                             <li><a href="movie_list">Movie</a></li> -->
<!--                             <li><a href="book1">Ticket</a></li> -->
<!--                             <li><a href="cinemas">Cinema</a></li> -->
<!--                             <li><a href="contact">Contact</a></li> -->
<%-- 						 <%if((String) session.getAttribute("id")==null){%> --%>
<!-- 						 <li><a href="login">Login</a></li> -->
<%-- 						<%}else{ %> --%>
<!-- 						<li><a href="logout">Logout</a></li> -->
<%-- 						<%} %> --%>
<!--                             <li><span class="sub-nav-toggle plus"></span> -->
<!--                         </ul> -->
<!--                     </nav> -->
<!--                 </div> -->
<!--         </header> -->
		<!-- Main content -->

		<section class="container">
		<div class="order-container">
			<div class="order">
				<img class="order__images" alt=''
					src="<%=ctx%>/resources/images/tickets.png">
				<p class="order__title">
					Book a ticket <br> <span class="order__descript">and
						have fun movie time</span>
				</p>
			</div>
		</div>

		<h2 class="page-heading heading--outcontainer">영화를 선택해주세요.</h2>
		</section>
		<div class="choose-film">
			<div class="col-sm-12">
				<div class="rates-wrapper rates--full film_select">
<!-- 				순서 테이블 -->
<!-- 					<div class="tags-area"> -->
<!-- 						<div class="tags tags--unmarked"> -->
<!-- 							<span class="tags__label">sort by</span> -->
<!-- 							<ul> -->
<!-- 								<li class="item-wrap"><a href="#" -->
<!-- 									class="tags__item item-active" data-filter='all'>예매율 순</a></li> -->
<!-- 								<li class="item-wrap"><a href="#" class="tags__item" -->
<!-- 									data-filter='release'>평점 순</a></li> -->
<!-- 							</ul> -->
<!-- 						</div> -->
<!-- 					</div> -->

					<div class="film_table">
					<table>
						<c:forEach var="dto" items="${flist}">
							<tr class="rates rates--top">
								<td class="film_title"><button value="${dto.film_name}"
										onclick="movieChk('${dto.film_name}')" class="film_button checkk" >
										<img src="<%=ctx%>/resources/images/icons/age_${dto.film_grade}.png"
											class="film_age">
										<strong>${dto.film_name}</strong>
									</button></td>
							</tr>
						</c:forEach>
					</table>
					</div>
				</div>

			</div>
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<div class="film-images"></div>
					</div>
				</div>
			</div>

		</div>

		<section class="container">
		<div class="col-sm-12">
			<div class="choose-indector choose-indector--film">
				<strong>선택하신 영화: </strong><a id="choosed_film" class="choosed_film"><%if(fname!=null){out.print(fname);} %></a>
			</div>

			<h2 class="page-heading">영화관 &amp; 날짜 선택</h2>

			<div class="choose-container choose-container--short">
				<form id='select' class="select" method='get'>
					<span class="cinemapicker checkk"><i class="fa fa-rocket"></i>영화관
						선택</span> <select name="select_item" id="select-sort"
						class="select__sort checkk" tabindex="0" onmouseup="cityChk()">
						<option value="001" selected='selected'>강변점</option>
						<option value="002">인천점</option>
						<option value="003">야탑점</option>
						<option value="004">강남점</option>
						<option value="005">구로점</option>
					</select>
				</form>

				<div class="datepicker">
					<span class="datepicker__marker"><i class="fa fa-calendar"></i>날짜
						선택</span><br /> 
						<%if(sdate!=null){ %>
						<input type="text" id="datepicker" value="<%=sdate%>"
						class="datepicker__input checkk" onmouseup="dateChk()">
						<%}else{ %>
						<input type="text" id="datepicker" value="<%=mTime%>"
						 class="datepicker__input checkk" onmouseup="dateChk()">
						<%} %>
						
				</div>
			</div>

			<h2 class="page-heading">시간 선택</h2>

			<div class="time-select time-select--wide">
			<form class="bookdata" action="book1">
				<input type='hidden' name="scrolls" class="scrolls" value="<%=scroll %>">
				<input type='hidden' name="film_name" class="choosen-movie" id="film_name" value="<%=fname%>">
				<input type='hidden' name="site_name" class="choosen-city" id="site_name" value="<%=sname%>"> 
				<input type='hidden' name="screening_date" class="choosen-date" id="screening_date" value="<%=sdate%>">
					</form>
					
				<c:choose>
				<c:when test="${!empty scNum}">
				<c:forEach var="j" items="${scNum}">
				<div class="time-select__group">
					<div class="col-sm-2">
						<p class="time-select__place" style="padding:0px">${j.screen_num}관</p>
					</div>
					<ul class="col-sm-8 items-wrap">
						<c:forEach var="i" items="${blist}">
							<c:if test="${i.screen_num == j.screen_num}">
								<li class=time-select__set>
									<input type='hidden' name="screening_ID" value="${i.screening_ID }"> 
									<div class="time-select__item" data-time='${i.start_time }'>${i.start_time }</div>
									<c:forEach var="k" items="${scnt}">
										<c:if test="${k.screening_ID eq i.screening_ID}">
											<div class="time-select__seat">${k.sale_cnt }/${i.seating_cnt}석</div>
										</c:if>
									</c:forEach>
								</li>
							</c:if>
						</c:forEach>
					</ul>
				</div>
				</c:forEach>
				</c:when>
				<c:otherwise>
				<div class="time-select__group">
					<div class="col-sm-2">
						<p class="time-select__place"></p>
					</div>
					<ul class="col-sm-8 items-wrap">
					<li>영화 정보를 선택해주세요</li>
					</ul>
				</div>
				</c:otherwise>
				</c:choose>
				

			</div>

			<div class="choose-indector choose-indector--time">
				<strong>선택하신 좌석 </strong><span class="choosen-area" id="film_time"></span>
			</div>
		</section>
		<!-- 		</form> -->
		<div class="clearfix"></div>


		<form id='film-and-time' class="booking-form" method='get'
			action='book2'>
			<input type='hidden' name="screening_ID" class="screening_id">
			<input type='hidden' name="film_name" class="choosen-movie" value="<%=fname%>">
			<input type='hidden' name="site_name" class="choosen-city" value="<%=sname%>">
			<input type='hidden' name="screening_date" class="choosen-date" value="<%=sdate%>">
			<input type='hidden' name="screen_num" class="choosen-cinema" id="screen_num">
			<input type='hidden' name="start_time" class="choosen-time" id="start_time">

			<div class="booking-pagination">
				<a href="#" class="booking-pagination__prev hide--arrow"> <span
					class="arrow__text arrow--prev"></span> <span class="arrow__info"></span>
				</a> <a href="#" class="booking-pagination__next" onclick="submit()">
					<span class="arrow__text arrow--next">다음 페이지로</span> <span
					class="arrow__info">좌석 고르기</span>
				</a>
			</div>

		</form>

		<div class="clearfix"></div>

		<footer class="footer-wrapper"> <section class="container">
		<div class="col-xs-4 col-md-2 footer-nav">
			<ul class="nav-link">
				<li><a href="#" class="nav-link__item">Cities</a></li>
				<li><a href="movie-list-left.html" class="nav-link__item">Movies</a></li>
				<li><a href="trailer.html" class="nav-link__item">Trailers</a></li>
				<li><a href="rates-left.html" class="nav-link__item">Rates</a></li>
			</ul>
		</div>
		<div class="col-xs-4 col-md-2 footer-nav">
			<ul class="nav-link">
				<li><a href="coming-soon.html" class="nav-link__item">Coming
						soon</a></li>
				<li><a href="cinema-list.html" class="nav-link__item">Cinemas</a></li>
				<li><a href="offers.html" class="nav-link__item">Best
						offers</a></li>
				<li><a href="news-left.html" class="nav-link__item">News</a></li>
			</ul>
		</div>
		<div class="col-xs-4 col-md-2 footer-nav">
			<ul class="nav-link">
				<li><a href="#" class="nav-link__item">Terms of use</a></li>
				<li><a href="gallery-four.html" class="nav-link__item">Gallery</a></li>
				<li><a href="contact.html" class="nav-link__item">Contacts</a></li>
				<li><a href="page-elements.html" class="nav-link__item">Shortcodes</a></li>
			</ul>
		</div>
		<div class="col-xs-12 col-md-6">
			<div class="footer-info">
				<p class="heading-special--small">
					A.Movie<br> <span class="title-edition">in the social
						media</span>
				</p>

				<div class="social">
					<a href='#' class="social__variant fa fa-facebook"></a> <a href='#'
						class="social__variant fa fa-twitter"></a> <a href='#'
						class="social__variant fa fa-vk"></a> <a href='#'
						class="social__variant fa fa-instagram"></a> <a href='#'
						class="social__variant fa fa-tumblr"></a> <a href='#'
						class="social__variant fa fa-pinterest"></a>
				</div>

				<div class="clearfix"></div>
				<p class="copy">&copy; A.Movie, 2013. All rights reserved. Done
					by Olia Gozha</p>
			</div>
		</div>
		</section> </footer>
	</div>

	<!-- open/close -->
	<div class="overlay overlay-hugeinc">

		<section class="container">

		<div class="col-sm-4 col-sm-offset-4">
			<button type="button" class="overlay-close">Close</button>
			<form id="login-form" class="login" method='get' novalidate=''>
				<p class="login__title">
					sign in <br> <span class="login-edition">welcome to
						A.Movie</span>
				</p>

				<div class="social social--colored">
					<a href='#' class="social__variant fa fa-facebook"></a> <a href='#'
						class="social__variant fa fa-twitter"></a> <a href='#'
						class="social__variant fa fa-tumblr"></a>
				</div>

				<p class="login__tracker">or</p>

				<div class="field-wrap">
					<input type='email' placeholder='Email' name='user-email'
						class="login__input"> <input type='password'
						placeholder='Password' name='user-password' class="login__input">

					<input type='checkbox' id='#informed' class='login__check styled'>
					<label for='#informed' class='login__check-info'>remember
						me</label>
				</div>

				<div class="login__control">
					<button type='submit' class="btn btn-md btn--warning btn--wider">sign
						in</button>
					<a href="#" class="login__tracker form__tracker">Forgot
						password?</a>
				</div>
			</form>
		</div>

		</section>
	</div>

	<!-- JavaScript-->
	<!-- jQuery 1.9.1-->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="js/external/jquery-1.10.1.min.js"><\/script>')
	</script>
	<!-- Migrate -->
	<script
		src="<%=ctx%>/resources/js/external/jquery-migrate-1.2.1.min.js"></script>
	<!-- jQuery UI -->
	<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
	<!-- Bootstrap 3-->
	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>

	<!-- Mobile menu -->
	<script src="<%=ctx%>/resources/js/jquery.mobile.menu.js"></script>
	<!-- Select -->
	<script
		src="<%=ctx%>/resources/js/external/jquery.selectbox-0.2.min.js"></script>
	<!-- Swiper slider -->
	<script src="<%=ctx%>/resources/js/external/idangerous.swiper.min.js"></script>

	<!-- Form element -->
	<script src="<%=ctx%>/resources/js/external/form-element.js"></script>
	<!-- Form validation -->
	<script src="<%=ctx%>/resources/js/form.js"></script>

	<!-- Custom -->
	<script src="<%=ctx%>/resources/js/custom.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			init_BookingOne();
		});
		$('.booking-pagination__next').click(function(e){
        	e.preventDefault();
            var chooseCity = $('.choosen-city').val();
            var chooseDate = $('.choosen-date').val();
            var chooseFilm = $('.choosen-movie').val();
			var chooseScreen = $('.choosen-cinema').val();
			var chooseTime = $('.choosen-time').val();
		
			if(chooseCity!='null'&&chooseFilm!='null'&&chooseDate!='null'&&chooseDate!=""&&chooseScreen!=''&&chooseTime!=''){
				$('.booking-form').submit();
			}else{
				alert("예매정보를 모두 선택해주세요.")
			}
		});
		
//	 	function submit() {
// 		document.getElementById("film-and-time").submit();
// 	}
	</script>

</body>
</html>
