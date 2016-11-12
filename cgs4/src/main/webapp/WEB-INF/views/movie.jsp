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
<title>CGS-Movie</title>
<meta name="description" content="A Template by Gozha.net">
<meta name="keywords" content="HTML, CSS, JavaScript">
<meta name="author" content="Gozha.net">

<!-- Mobile Specific Metas-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta content="telephone=no" name="format-detection">

<!-- icon -->
<link rel="shortcut icon" type="image/x-icon"
	href="<%=ctx%>/resources/css/img/favicon.png" />

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
<!-- Magnific-popup -->
<link href="<%=ctx%>/resources/css/external/magnific-popup.css"
	rel="stylesheet" />


<!-- Custom -->
<link href="<%=ctx%>/resources/css/style.css?v=1" rel="stylesheet" />

<!-- Modernizr -->
<script src="<%=ctx%>/resources/js/external/modernizr.custom.js"></script>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]> 
    	<script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script> 
		<script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.js"></script>		
    <![endif]-->

<script>

	function movieChk(name) {
		document.getElementById("choosed_film").innerHTML = name;
		document.getElementById("film_name").setAttribute("value", name);
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
	function submit() {
		document.getElementById("film-and-time").submit();
	}
</script>

</head>

<body>
		<%
		String sname = request.getParameter("site_name");
		String sdate = request.getParameter("screening_date");
		String scroll = request.getParameter("scrolls");
		%>
	<div class="wrapper">
		<!--         Banner -->
		<!--         <div class="banner-top"> -->
		<!--             <img alt='top banner' src="http://placehold.it/1600x90"> -->
		<!--         </div> -->

		<!-- Header section -->
        <jsp:include page="menu.jsp" flush="false"/>

		<!-- Search bar -->
<!-- 		<div class="search-wrapper"> -->
<!-- 			<div class="container container--add"> -->
<!-- 				<form id='search-form' method='get' class="search"> -->
<!-- 					<input type="text" class="search__field" placeholder="Search"> -->
<!-- 					<select name="sorting_item" id="search-sort" class="search__sort" tabindex="0"> -->
<!-- 						<option value="1" selected='selected'>By title</option> -->
<!-- 						<option value="2">By year</option> -->
<!-- 						<option value="3">By producer</option> -->
<!-- 						<option value="4">By title</option> -->
<!-- 						<option value="5">By year</option> -->
<!-- 					</select> -->
<!-- 					<button type='submit' class="btn btn-md btn--danger search__button">search a movie</button> -->
<!-- 				</form> -->
<!-- 			</div> -->
<!-- 		</div> -->

		<!-- Main content -->
		<section class="container">
		<div class="col-sm-12">
			<div class="movie">
				<h2 class="page-heading"><strong>${film.film_name}</strong></h2>

				<div class="movie__info">
					<div class="col-sm-4 col-md-3 movie-mobile">
						<div class="movie__images">
<!-- 							<span class="movie__rating">5.0</span>  -->
							<img alt='' src="<%=ctx %>/resources/images/poster/${film.film_ID}.jpg">
						</div>
						
					</div>

					<div class="col-sm-8 col-md-9">
						<p class="movie__time">${film.running_time} min</p>

						<p class="movie__option">
							<strong>Country: </strong>${film.country}</p>
						<!--                             <p class="movie__option"><strong>Year: </strong><a href="#">2012</a></p> -->
						<p class="movie__option">
							<strong>Genre: </strong>${film.genre}</p>
						<p class="movie__option">
							<strong>Release date: </strong>${film.release_date}</p>
						<p class="movie__option">
							<strong>Director: </strong>${film.director}
						</p>
						<p class="movie__option">
							<strong>Actors: </strong>${film.actor}</p>
						<p class="movie__option">
							<strong>Age restriction: </strong>${film.film_grade}</p>


<!-- 						<a class="comment-link"><br></a> -->

<!-- 						<div class="movie__btns movie__btns--full"> -->
<!-- 							<form action="watchlist" method="get"> -->
<%-- 								<input type=hidden name="film_ID" value="${film.film_ID}"> --%>
<!-- 								<a href="book1" class="btn btn-md btn--warning">예매하기</a> -->
<!-- 								<a href="#" class="watchlist">Add to watchlist</a> -->
<!-- 							</form> -->
<!-- 						</div> -->

<!-- 						<div class="share"> -->
<!-- 							<span class="share__marker">Share: </span> -->
<!-- 							<div class="addthis_toolbox addthis_default_style "> -->
<!-- 								<a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>  -->
<!-- 								<a class="addthis_button_tweet"></a>  -->
<!-- 								<a class="addthis_button_google_plusone" g:plusone:size="medium"></a> -->
<!-- 							</div> -->
<!-- 						</div> -->
					</div>
				</div>

				<div class="clearfix"></div>

				<h2 class="page-heading">The plot</h2>

				<p class="movie__describe">${film.film_story}</p>

				<h2 class="page-heading">trailers &amp; still cuts</h2>

				<div class="movie__media">
					<div class="movie__media-switch">
<!-- 						<a href="#" class="watchlist list--photo" data-filter='media-photo'>234 photos</a>  -->
<!-- 						<a href="#" class="watchlist list--video" data-filter='media-video'>10 videos</a> -->
					</div>

					<div class="swiper-container">
						<div class="swiper-wrapper">
							<!--First Slide-->
<%-- 								<c:forEach var="i" begin="1" end="2" step="1"> --%>
<!-- 									<div class="swiper-slide media-video"> -->
<!-- 										<a href='https://www.youtube.com/watch?v=ztD7m3ubhVs' class="movie__media-item ">  -->
<%-- 										<img alt='' src="<%=ctx%>/resources/images/stillcut/${film.film_ID}/${i }.png"> --%>
<!-- 										</a> -->
<!-- 									</div> -->
<%-- 								</c:forEach> --%>
<!-- 							<div class="swiper-slide media-video"> -->
<!-- 								<a href='https://www.youtube.com/watch?v=ztD7m3ubhVs' class="movie__media-item ">  -->
<%-- 								 <img alt='' src="<%=ctx%>/resources/images/stillcut/${film.film_ID}/1.png"> --%>
<!-- 								</a> -->
<!-- 							</div> -->

							<!--Second Slide-->
							<c:forEach var="i" begin="0" items="${trailer}" varStatus="status">
							<c:if test="${i.file_type eq '1'}">
							<div class="swiper-slide media-video">
								<a href='${i.file_link}' class="movie__media-item">
								 <img alt='' src='<%=ctx%>/resources/images/stillcut/${film.film_ID}/0${status.count}.png'>
								</a>
							</div>
							</c:if>
							</c:forEach>

							<!--Third Slide-->
							<c:forEach var="j" begin="1" end="4">
								<div class="swiper-slide media-photo">
									<a href='<%=ctx%>/resources/images/stillcut/${film.film_ID}/${j}.jpg' class="movie__media-item">
									 <img alt='' src="<%=ctx%>/resources/images/stillcut/${film.film_ID}/${j}.jpg">
									</a>
								</div>
							</c:forEach>
<!-- 							<div class="swiper-slide media-photo"> -->
<%-- 								<a href='<%=ctx%>/resources/images/stillcut/${film.film_ID}/0001.jpg' class="movie__media-item"> --%>
<%-- 								 <img alt='' src="<%=ctx%>/resources/images/stillcut/${film.film_ID}/0001.jpg"> --%>
<!-- 								</a> -->
<!-- 							</div> -->

<!-- 							Four Slide -->
<!-- 							<div class="swiper-slide media-photo"> -->
<%-- 								<a href='<%=ctx%>/resources/images/stillcut/${film.film_ID}/0002.jpg' class="movie__media-item"> --%>
<%-- 								 <img alt='' src="<%=ctx%>/resources/images/stillcut/${film.film_ID}/0002.jpg"> --%>
<!-- 								</a> -->
<!-- 							</div> -->

							<!--Slide-->
<!-- 							<div class="swiper-slide media-photo"> -->
<%-- 								<a href='<%=ctx%>/resources/images/stillcut/${film.film_ID}/0005.jpg' class="movie__media-item"> --%>
<%-- 								 <img alt='' src="<%=ctx%>/resources/images/stillcut/${film.film_ID}/0005.jpg"> --%>
<!-- 								</a> -->
<!-- 							</div> -->

							<!--Slide-->
<!-- 							<div class="swiper-slide media-photo"> -->
<!-- 								<a href='http://placehold.it/2100x1250' class="movie__media-item"> -->
<!-- 								 <img alt='' src="http://placehold.it/400x240"> -->
<!-- 								</a> -->
<!-- 							</div> -->

<!-- 							First Slide -->
<!-- 							<div class="swiper-slide media-video"> -->
<!-- 								<a href='https://www.youtube.com/watch?v=Y5AehBA3IsE' class="movie__media-item "> -->
<!-- 								 <img alt='' src="http://placehold.it/400x240"> -->
<!-- 								</a> -->
<!-- 							</div> -->

<!-- 							Second Slide -->
<!-- 							<div class="swiper-slide media-video"> -->
<!-- 								<a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="movie__media-item"> -->
<!-- 								 <img alt='' src="http://placehold.it/400x240"> -->
<!-- 								</a> -->
<!-- 							</div> -->

<!-- 							Slide -->
<!-- 							<div class="swiper-slide media-photo"> -->
<!-- 								<a href='http://placehold.it/2100x1250' class="movie__media-item"> -->
<!-- 								 <img alt='' src="http://placehold.it/400x240"> -->
<!-- 								</a> -->
<!-- 							</div> -->

<!-- 							Slide -->
<!-- 							<div class="swiper-slide media-photo"> -->
<!-- 								<a href='http://placehold.it/2100x1250' class="movie__media-item"> -->
<!-- 								 <img alt='' src="http://placehold.it/400x240"> -->
<!-- 								</a> -->
<!-- 							</div> -->

						</div>
					</div>

				</div>

			</div>
			<h2 class="page-heading">영화관 &amp; 날짜 선택</h2>

			<div class="choose-container choose-container--short">
				<form id='select' class="select" method='get'>
					<span class="cinemapicker checkk"><i class="fa fa-rocket"></i>영화관 선택</span> 
						<select name="select_item" id="select-sort" class="select__sort checkk" tabindex="0" onmouseup="cityChk()">
						<c:forEach var="s" items="${t_site}">
						<option value="${s.site_name}">${s.site_name}</option>
						</c:forEach>
					</select>
				</form>

				<div class="datepicker">
					<span class="datepicker__marker"><i class="fa fa-calendar"></i>날짜 선택</span>
					<br /> 
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
				<form class="bookdata" action="movie?film_ID=${film.film_ID}">
				<input type='hidden' name="film_ID" id="film_ID" value="${film.film_ID}">
				<input type='hidden' name="scrolls" class="scrolls" value="<%=scroll %>">
				<input type='hidden' name="film_name" class="choosen-movie" id="film_name" value="${film.film_name}">
				<input type='hidden' name="site_name" class="choosen-city" id="site_name" value="<%=sname%>"> 
				<input type='hidden' name="screening_date" class="choosen-date" id="screening_date" value="<%=sdate%>">
					</form>
					
				<c:choose>
				<c:when test="${!empty scNum}">
				<c:forEach var="j" items="${scNum}">
				<div class="time-select__group">
					<div class="col-sm-2">
						<p class="time-select__place">${j.screen_num}</p>관
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

		</section>
		<!-- 		</form> -->
		<div class="clearfix"></div>
<!-- 					<div class="time-select__group group--first"> -->
<!-- 						<div class="col-sm-4"> -->
<!-- 							<p class="time-select__place">-</p> -->
<!-- 						</div> -->
<!-- 						<ul class="col-sm-8 items-wrap"> -->
<!-- 							<li class="time-select__item" data-time='09:40'>09:40</li> -->
<!-- 							<li class="time-select__item" data-time='13:45'>13:45</li> -->
<!-- 							<li class="time-select__item" data-time='15:45'>15:45</li> -->
<!-- 							<li class="time-select__item" data-time='19:50'>19:50</li> -->
<!-- 							<li class="time-select__item" data-time='21:50'>21:50</li> -->
<!-- 						</ul> -->
<!-- 					</div> -->

<!-- 					<div class="time-select__group"> -->
<!-- 						<div class="col-sm-4"> -->
<!-- 							<p class="time-select__place">2관</p> -->
<!-- 						</div> -->
<!-- 						<ul class="col-sm-8 items-wrap"> -->
<!-- 							<li class="time-select__item" data-time='10:45'>10:45</li> -->
<!-- 							<li class="time-select__item" data-time='16:00'>16:00</li> -->
<!-- 							<li class="time-select__item" data-time='19:00'>19:00</li> -->
<!-- 							<li class="time-select__item" data-time='21:15'>21:15</li> -->
<!-- 							<li class="time-select__item" data-time='23:00'>23:00</li> -->
<!-- 						</ul> -->
<!-- 					</div> -->

<!-- 					<div class="time-select__group"> -->
<!-- 						<div class="col-sm-4"> -->
<!-- 							<p class="time-select__place">3관</p> -->
<!-- 						</div> -->
<!-- 						<ul class="col-sm-8 items-wrap"> -->
<!-- 							<li class="time-select__item" data-time='09:00'>09:00</li> -->
<!-- 							<li class="time-select__item" data-time='11:00'>11:00</li> -->
<!-- 							<li class="time-select__item" data-time='13:00'>13:00</li> -->
<!-- 							<li class="time-select__item" data-time='15:00'>15:00</li> -->
<!-- 							<li class="time-select__item" data-time='17:00'>17:00</li> -->
<!-- 							<li class="time-select__item" data-time='19:0'>19:00</li> -->
<!-- 							<li class="time-select__item" data-time='21:0'>21:00</li> -->
<!-- 							<li class="time-select__item" data-time='23:0'>23:00</li> -->
<!-- 							<li class="time-select__item" data-time='01:0'>01:00</li> -->
<!-- 						</ul> -->
<!-- 					</div> -->

<!-- 					<div class="time-select__group"> -->
<!-- 						<div class="col-sm-4"> -->
<!-- 							<p class="time-select__place">4관</p> -->
<!-- 						</div> -->
<!-- 						<ul class="col-sm-8 items-wrap"> -->
<!-- 							<li class="time-select__item" data-time='10:45'>10:45</li> -->
<!-- 							<li class="time-select__item" data-time='16:00'>16:00</li> -->
<!-- 							<li class="time-select__item" data-time='19:00'>19:00</li> -->
<!-- 							<li class="time-select__item" data-time='21:15'>21:15</li> -->
<!-- 							<li class="time-select__item" data-time='23:00'>23:00</li> -->
<!-- 						</ul> -->
<!-- 					</div> -->

<!-- 					<div class="time-select__group group--last"> -->
<!-- 						<div class="col-sm-4"> -->
<!-- 							<p class="time-select__place">5관</p> -->
<!-- 						</div> -->
<!-- 						<ul class="col-sm-8 items-wrap"> -->
<!-- 							<li class="time-select__item" data-time='17:45'>17:45</li> -->
<!-- 							<li class="time-select__item" data-time='21:30'>21:30</li> -->
<!-- 							<li class="time-select__item" data-time='02:20'>02:20</li> -->
<!-- 						</ul> -->
<!-- 					</div> -->
<!-- 				</div> -->
				<div class="movie__btns movie__btns--full">
					<form id='film-and-time' class="booking-form" method='get' action='book2'>
					    <input type='hidden' name="screening_ID" class="screening_id">
						<input type='hidden' name="film_name" class="choosen-movie" id="film_name" value="${film.film_name}">
						<input type='hidden' name="site_name" class="choosen-city" id="site_name" value="<%=sname%>"> 
						<input type='hidden' name="screening_date" class="choosen-date" id="screening_date"  value="<%=sdate%>">
						<input type='hidden' name="screen_num" class="choosen-cinema" id="screen_num"> 
						<input type='hidden' name="start_time" class="choosen-time" id="start_time">
						<%-- 						<input type=hidden name="start_time" value="${test.start_time }"> --%>
						<%if((String)session.getAttribute("id")!=null){%>
						<center> <a href="#" class="btn btn-md btn--warning" onclick="submit()">예매하기</a> </center>
						<%}else{ %>
						<center> <a href='login' class="btn btn-md btn--warning">예매하기</a> </center>
						<% } %>
					</form><br>
					
				</div>

			</div>
		</div>

		</section>

		<div class="clearfix"></div>
		<br>
		<jsp:include page="footer.jsp"></jsp:include>
<!-- 		<footer class="footer-wrapper"> <section class="container"> -->
<!-- 		<div class="col-xs-4 col-md-2 footer-nav"> -->
<!-- 			<ul class="nav-link"> -->
<!-- 				<li><a href="#" class="nav-link__item">Cities</a></li> -->
<!-- 				<li><a href="movie-list-left.html" class="nav-link__item">Movies</a></li> -->
<!-- 				<li><a href="trailer.html" class="nav-link__item">Trailers</a></li> -->
<!-- 				<li><a href="rates-left.html" class="nav-link__item">Rates</a></li> -->
<!-- 			</ul> -->
<!-- 		</div> -->
<!-- 		<div class="col-xs-4 col-md-2 footer-nav"> -->
<!-- 			<ul class="nav-link"> -->
<!-- 				<li><a href="coming-soon.html" class="nav-link__item">Coming -->
<!-- 						soon</a></li> -->
<!-- 				<li><a href="cinema-list.html" class="nav-link__item">Cinemas</a></li> -->
<!-- 				<li><a href="offers.html" class="nav-link__item">Best -->
<!-- 						offers</a></li> -->
<!-- 				<li><a href="news-left.html" class="nav-link__item">News</a></li> -->
<!-- 			</ul> -->
<!-- 		</div> -->
<!-- 		<div class="col-xs-4 col-md-2 footer-nav"> -->
<!-- 			<ul class="nav-link"> -->
<!-- 				<li><a href="#" class="nav-link__item">Terms of use</a></li> -->
<!-- 				<li><a href="gallery-four.html" class="nav-link__item">Gallery</a></li> -->
<!-- 				<li><a href="contact.html" class="nav-link__item">Contacts</a></li> -->
<!-- 				<li><a href="page-elements.html" class="nav-link__item">Shortcodes</a></li> -->
<!-- 			</ul> -->
<!-- 		</div> -->
<!-- 		<div class="col-xs-12 col-md-6"> -->
<!-- 			<div class="footer-info"> -->
<!-- 				<p class="heading-special--small"> -->
<!-- 					A.Movie<br> -->
<!-- 					<span class="title-edition">in the social media</span> -->
<!-- 				</p> -->

<!-- 				<div class="social"> -->
<!-- 					<a href='#' class="social__variant fa fa-facebook"></a> <a href='#' -->
<!-- 						class="social__variant fa fa-twitter"></a> <a href='#' -->
<!-- 						class="social__variant fa fa-vk"></a> <a href='#' -->
<!-- 						class="social__variant fa fa-instagram"></a> <a href='#' -->
<!-- 						class="social__variant fa fa-tumblr"></a> <a href='#' -->
<!-- 						class="social__variant fa fa-pinterest"></a> -->
<!-- 				</div> -->

<!-- 				<div class="clearfix"></div> -->
<!-- 				<p class="copy">&copy; A.Movie, 2013. All rights reserved. Done by Olia Gozha</p> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 		</section> </footer> -->
	</div>

	<!-- open/close -->
	<div class="overlay overlay-hugeinc">

		<section class="container">

		<div class="col-sm-4 col-sm-offset-4">
			<button type="button" class="overlay-close">Close</button>
			<form id="login-form" class="login" method='get' novalidate=''>
				<p class="login__title">
					sign in <br>
					<span class="login-edition">welcome to A.Movie</span>
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
		window.jQuery || document.write('<script src="js/external/jquery-1.10.1.min.js"><\/script>')
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

	<!-- Stars rate -->
	<script src="<%=ctx%>/resources/js/external/jquery.raty.js"></script>
	<!-- Swiper slider -->
	<script src="<%=ctx%>/resources/js/external/idangerous.swiper.min.js"></script>
	<!-- Magnific-popup -->
	<script
		src="<%=ctx%>/resources/js/external/jquery.magnific-popup.min.js"></script>

	<!--*** Google map  ***-->
<!-- 	<script src="https://maps.google.com/maps/api/js?sensor=true"></script> -->
	<!--*** Google map infobox  ***-->
<%-- 	<script src="<%=ctx%>/resources/js/external/infobox.js"></script> --%>

	<!-- Share buttons -->
	<script type="text/javascript">
		var addthis_config = {
			"data_track_addressbar" : true
		};
	</script>
	<script type="text/javascript"
		src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-525fd5e9061e7ef0"></script>

	<!-- Form element -->
	<script src="<%=ctx%>/resources/js/external/form-element.js"></script>
	<!-- Form validation -->
	<script src="<%=ctx%>/resources/js/form.js"></script>

	<!-- Custom -->
	<script src="<%=ctx%>/resources/js/custom.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			init_MoviePage();
			init_MoviePageFull();
// 			init_BookingOne();
		});
	</script>

</body>
</html>
