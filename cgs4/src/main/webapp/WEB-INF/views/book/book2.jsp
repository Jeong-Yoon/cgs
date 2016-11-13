<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String ctx = request.getContextPath();
%>
<html>
<head>
<!-- Basic Page Needs -->
<meta charset="utf-8">
<title>CGS</title>
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
<script>

</script>
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]> 
    	<script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script> 
		<script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.js"></script>		
    <![endif]-->
</head>

<body>
	<div class="wrapper place-wrapper">
		<!-- 메뉴바-->
        <jsp:include page="../menu.jsp" flush="false"/>


		<!-- Main content -->
		<div class="place-form-area">
			<section class="container">
			<div class="order-container">
				<div class="order">
					<img class="order__images" alt='' src="<%=ctx%>/resources/images/tickets.png">
<!-- 					<p class="order__title"> -->
<!-- 						Book a ticket <br> -->
<!-- 						<span class="order__descript">and have fun movie time</span> -->
<!-- 					</p> -->
				</div>
			</div>
			<div class="order-step-area">
				<div class="order-step second--step"> <ul class="book-result">
                        <li class="book-result__item">선택하신 영화: <span class="book-result__count">${bInfo.film_name}</span></li>
                        <li class="book-result__item">상영 일자: <span class="book-result__count"> ${bInfo.screening_date}</span></li>
                        <li class="book-result__item">영화관: <span class="book-result__count"> ${bInfo.site_name}</span></li>
                        <li class="book-result__item">상영관: <span class="book-result__count"> ${bInfo.screen_num}관</span></li>
                        <li class="book-result__item">영화 시작시간: <span class="book-result__count">${bInfo.start_time}</span></li>
			</ul></div>

			<div class="choose-sits">
				<div class="choose-sits__info choose-sits__info--first">
					<ul>
						<li class="sits-price marker--none"><strong>일반</strong></li>
						<li class="sits-price"><input type="number" min="0" max="4" value="0" class="norm"></li>
						<li class="sits-price marker--none"><strong>청소년</strong></li>
						<li class="sits-price"><input type="number" min="0" max="4" value="0" class="youg"></li>
						<li class="sits-price marker--none"><strong>우대</strong></li>
						<li class="sits-price"><input type="number" min="0" max="4" value="0" class="spec"></li>
					</ul>
				</div>
				<div class="choose-sits__info">
					<ul>
						<li class="sits-state sits-state--not">예매 불가</li>
						<li class="sits-state sits-state--your">예매 가능</li>
					</ul>
				</div>
			<div class="sits-max"></div>
				<div class="col-sm-12 col-lg-10 col-lg-offset-1">
					<div class="sits-area hidden-xs">
						<div class="sits-anchor">screen</div>

						<div class="sits">
							<aside class="sits__line">
							<c:forEach var="row" items="${sRow}">
								<c:choose>
									<c:when test="${row.row_num eq 'E'}">
										<span class="sits__indecator additional-margin">${row.row_num}</span>
									</c:when>
									<c:otherwise>
										<span class="sits__indecator">${row.row_num}</span>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							
							</aside>
							<c:forEach var="row" items="${sRow}">
								<c:choose>
									<c:when test="${row.row_num ne 'E'}">
										<div class="sits__row">
									</c:when>
									<c:otherwise>
										<div class="sits__row additional-margin">
									</c:otherwise>
								</c:choose>
							<c:forEach var="col" items="${seat}">
							<c:if test="${row.row_num eq col.row_num}">
									<span class="sits__place sits-price--cheap" data-place='${col.row_num}${col.col_num}'
									data-price='10' id="${col.seat_ID }">${col.row_num}${col.col_num}</span>
							</c:if>
							</c:forEach>
							</div>
							</c:forEach>

							<aside class="sits__checked">
							<div class="checked-people">
							<span class="choosen-people norm"></span>
							<span class="choosen-people youg"></span>
							<span class="choosen-people spec"></span>
							</div>
							
							<div class="checked-place"></div>
							<div class="checked-result">0원</div>
							</aside>
						</div>
					</div>
				</div>

				<div class="col-sm-12 visible-xs">
					<div class="sits-area--mobile">
						<div class="sits-area--mobile-wrap">
							<div class="sits-select">
								<select name="sorting_item" class="sits__sort sit-row"
									tabindex="0">
									<option value="1" selected='selected'>A</option>
									<option value="2">B</option>
									<option value="3">C</option>
									<option value="4">D</option>
									<option value="5">E</option>
									<option value="6">F</option>
									<option value="7">G</option>
									<option value="8">I</option>
									<option value="9">J</option>
									<option value="10">K</option>
									<option value="11">L</option>
								</select> <select name="sorting_item" class="sits__sort sit-number"
									tabindex="1">
									<option value="1" selected='selected'>1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
									<option value="13">13</option>
									<option value="14">14</option>
									<option value="15">15</option>
									<option value="16">16</option>
									<option value="17">17</option>
									<option value="18">18</option>
								</select> <a href="#" class="btn btn-md btn--warning toogle-sits">Choose
									sit</a>
							</div>
						</div>

						<a href="#" class="watchlist add-sits-line">Add new sit</a>

						<aside class="sits__checked">
						<div class="checked-place">
<!-- 							<span class="choosen-place"></span> -->
						</div>
						<div class="checked-result">$0</div>
						</aside>

						<img alt="" src="<%=ctx %>/resources/images/components/sits_mobile.png">
					</div>
				</div>

			</div>
		</div>
		</section>
	</div>



	<div class="clearfix"></div>
	<form id='film-and-time' class="booking-form" method='get' action='book3'>
		
		
		<input type='hidden' name="film_name" class="film_name" value="${bInfo.film_name}">
		<input type='hidden' name="site_name" class="site_name" value="${bInfo.site_name}">
		<input type='hidden' name="screening_date" class="screening_date" value="${bInfo.screening_date}">
		<input type='hidden' name="screen_num" class="screen_num" value="${bInfo.screen_num}">
		<input type='hidden' name="start_time" class="start_time" value="${bInfo.start_time}">
		<input type='hidden' name="screening_ID" value="${bInfo.screening_ID }"> 
		
		<input type='hidden' name='seat_ID' class="seatID">
		<input type='hidden' name='sale_cnt' class="choosen-number">
		<input type='hidden' name='special_cnt' class="choosen-number--cheap">
		<input type='hidden' name='young_cnt' class="choosen-number--middle">
		<input type='hidden' name='common_cnt' class="choosen-number--expansive">
		<input type='hidden' name='sale_price' class="choosen-cost">
		<input type='hidden' name='choosen_sits' class="choosen_sits">


		<div class="booking-pagination booking-pagination--margin">
			<a href="book1" class="booking-pagination__prev"> <span
				class="arrow__text arrow--prev">이전 화면으로</span> <span
				class="arrow__info">영화/영화관/날짜 선택</span>
			</a> <a href="#" class="booking-pagination__next"> <span
				class="arrow__text arrow--next">다음 화면으로</span> <span
				class="arrow__info">결제하기</span>
			</a>
		</div>
	</form>
	<div class="findOccup">
	<c:forEach var="na" items="${sSeat}">
	<span class="occuSeat" data-place='${na.row_num}${na.col_num}'>${na.row_num}${na.col_num}</span>
	</c:forEach>
	</div>

	<div class="clearfix"></div>

		<jsp:include page="../footer.jsp"></jsp:include>
<!-- 	<footer class="footer-wrapper"> <section class="container"> -->
<!-- 	<div class="col-xs-4 col-md-2 footer-nav"> -->
<!-- 		<ul class="nav-link"> -->
<!-- 			<li><a href="#" class="nav-link__item">Cities</a></li> -->
<!-- 			<li><a href="movie-list-left.html" class="nav-link__item">Movies</a></li> -->
<!-- 			<li><a href="trailer.html" class="nav-link__item">Trailers</a></li> -->
<!-- 			<li><a href="rates-left.html" class="nav-link__item">Rates</a></li> -->
<!-- 		</ul> -->
<!-- 	</div> -->
<!-- 	<div class="col-xs-4 col-md-2 footer-nav"> -->
<!-- 		<ul class="nav-link"> -->
<!-- 			<li><a href="coming-soon.html" class="nav-link__item">Coming -->
<!-- 					soon</a></li> -->
<!-- 			<li><a href="cinema-list.html" class="nav-link__item">Cinemas</a></li> -->
<!-- 			<li><a href="offers.html" class="nav-link__item">Best offers</a></li> -->
<!-- 			<li><a href="news-left.html" class="nav-link__item">News</a></li> -->
<!-- 		</ul> -->
<!-- 	</div> -->
<!-- 	<div class="col-xs-4 col-md-2 footer-nav"> -->
<!-- 		<ul class="nav-link"> -->
<!-- 			<li><a href="#" class="nav-link__item">Terms of use</a></li> -->
<!-- 			<li><a href="gallery-four.html" class="nav-link__item">Gallery</a></li> -->
<!-- 			<li><a href="contact.html" class="nav-link__item">Contacts</a></li> -->
<!-- 			<li><a href="page-elements.html" class="nav-link__item">Shortcodes</a></li> -->
<!-- 		</ul> -->
<!-- 	</div> -->
<!-- 	<div class="col-xs-12 col-md-6"> -->
<!-- 		<div class="footer-info"> -->
<!-- 			<p class="heading-special--small"> -->
<!-- 				A.Movie<br> -->
<!-- 				<span class="title-edition">in the social media</span> -->
<!-- 			</p> -->

<!-- 			<div class="social"> -->
<!-- 				<a href='#' class="social__variant fa fa-facebook"></a> <a href='#' -->
<!-- 					class="social__variant fa fa-twitter"></a> <a href='#' -->
<!-- 					class="social__variant fa fa-vk"></a> <a href='#' -->
<!-- 					class="social__variant fa fa-instagram"></a> <a href='#' -->
<!-- 					class="social__variant fa fa-tumblr"></a> <a href='#' -->
<!-- 					class="social__variant fa fa-pinterest"></a> -->
<!-- 			</div> -->

<!-- 			<div class="clearfix"></div> -->
<!-- 			<p class="copy">&copy; A.Movie, 2013. All rights reserved. Done -->
<!-- 				by Olia Gozha</p> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- 	</section> </footer> -->
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
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="js/external/jquery-1.10.1.min.js"><\/script>')
	</script>
	<!-- Migrate -->
	<script
		src="<%=ctx%>/resources/js/external/jquery-migrate-1.2.1.min.js"></script>
	<!-- Bootstrap 3-->
	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>

	<!-- Mobile menu -->
	<script src="<%=ctx%>/resources/js/jquery.mobile.menu.js"></script>
	<!-- Select -->
	<script
		src="<%=ctx%>/resources/js/external/jquery.selectbox-0.2.min.js"></script>

	<!-- Form element -->
	<script src="<%=ctx%>/resources/js/external/form-element.js"></script>
	<!-- Form validation -->
	<script src="<%=ctx%>/resources/js/form.js"></script>

	<!-- Custom -->
	<script src="<%=ctx%>/resources/js/custom.js"></script>

	<script type="text/javascript">
    $(document).ready(function() {
        init_BookingTwo();
        $('.sits__place').each(function(){
       		var seat = $(this);
       		$('.occuSeat').each(function(){
          		
       			if(seat.attr('data-place')==$(this).attr('data-place')){
       	        	$(seat).addClass('sits-state--not');
       	        	console.log(seat.attr('data-place'));
       			}
       		});
        });
        $('.findOccup').remove();
    });
		</script>

</body>
</html>
