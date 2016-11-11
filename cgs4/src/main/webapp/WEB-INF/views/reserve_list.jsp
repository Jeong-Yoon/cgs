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

<!-- Custom -->
<link href="<%=ctx%>/resources/css/style.css?v=1" rel="stylesheet" />

<!-- Modernizr -->
<script src="<%=ctx%>/resources/js/external/modernizr.custom.js"></script>



</head>

<body>

	<jsp:include page="menu.jsp" flush="false" />
    

        
        <!-- Main content -->
        <section class="container">
            <div class="col-sm-12">
                 <h2 class="page-heading">예매목록</h2>
                
                <div class="offers-block">
                     <p class="offer-place">Reservation List </p>
					<c:forEach items="${rList}" var="rl">
                     <div class="col-xs-6 col-sm-4 col-md-3 offers-wrap">
                         <a href='<%=ctx%>/reserve_check/?rId=${rl.reserve_ID}' class="offer offer--day">
                            <div class="offer__head">
                                <p class="offer__name">${rl.screening_date}<br></p>
                                <span class="offer__datail"> ${rl.film_name} </span>
                             </div>
                             <p class="offer__full"> 예매번호: ${rl.reserve_ID}  <br>관람극장 : ${rl.site_name}   <br> 관람시간: ${rl.start_time} <br> 관람인원 : ${rl.sale_cnt}
                             </p>
                         </a>
                     </div>
      				 </c:forEach>              
                     
                   <!--    <div class="col-xs-6 col-sm-4 col-md-3 offers-wrap">
                         <a href='reserve_check' class="offer offer--day">
                            <div class="offer__head">
                                <p class="offer__name">2016/11/12<br></p>
                                <span class="offer__datail">럭키</span>
                             </div>
                             <p class="offer__full">예매번호: 123456  <br>관람극장 : 강변점   <br> 관람시간: 13:20 <br> 관람인원 : 2 
                             </p>
                         </a>
                     </div>
			 -->


                 </div>
            </div>
        </section>
        
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
	</script>

</body>
</html>
