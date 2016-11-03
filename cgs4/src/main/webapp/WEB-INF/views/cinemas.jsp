<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<!-- Fonts -->
<!-- Font awesome - icon font -->
<link
	href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet">
<!-- Roboto -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,700'
	rel='stylesheet' type='text/css'>
<!-- Open Sans -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:800italic'
	rel='stylesheet' type='text/css'>

<!--나눔고딕-->
<link
	href='http://fonts.googleapis.com/earlyaccess/nanumgothic.css?family=Nanum Gothic'
	rel='stylesheet' type='text/css'>

<!-- Stylesheets -->

<!-- Mobile menu -->
<link href="<%=ctx%>/resources/css/gozha-nav.css" rel="stylesheet" />
<!-- Select -->
<link href="<%=ctx%>/resources/css/external/jquery.selectbox.css"
	rel="stylesheet" />

<!-- REVOLUTION BANNER CSS SETTINGS -->
<link rel="stylesheet" type="text/css"
	href="<%=ctx%>/resources/rs-plugin/css/settings.css" media="screen" />

<!-- Custom -->
<link href="<%=ctx%>/resources/css/style.css?v=1" rel="stylesheet" />


<!-- Modernizr -->
<script src="<%=ctx%>/resources/js/external/modernizr.custom.js"></script>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]> 
    	<script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script> 
		<script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.js"></script>		
    <![endif]-->
</head>

<body>
	<div class="wrapper">

		<!-- 메인(홈) 헤더 부분 -->
		<header class="header-wrapper header-wrapper--home">
		<div class="container">
			<!-- 헤더 로고-->
			<a href='index.html' class="logo"> <img style="max-width: 100px"
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
				<li><span class="sub-nav-toggle plus"></span> <a href="#">Pages</a>
					<ul>
						<!--                                 <li class="menu__nav-item"><a href="movie-page-left.html">Single movie (rigth sidebar)</a></li> -->
						<!--                                 <li class="menu__nav-item"><a href="movie-page-right.html">Single movie (left sidebar)</a></li> -->
						<li class="menu__nav-item"><a href="movie-page-full.html">Single
								movie (full widht)</a></li>
						<!--                                 <li class="menu__nav-item"><a href="movie-list-left.html">Movies list (rigth sidebar)</a></li> -->
						<!--                                 <li class="menu__nav-item"><a href="movie-list-right.html">Movies list (left sidebar)</a></li> -->
						<li class="menu__nav-item"><a href="movie-list-full.html">Movies
								list (full widht)</a></li>
						<li class="menu__nav-item"><a href="single-cinema.html">Single
								cinema</a></li>
						<li class="menu__nav-item"><a href="cinema-list.html">Cinemas
								list</a></li>
						<li class="menu__nav-item"><a href="trailer.html">Trailers</a></li>
						<!--                                 <li class="menu__nav-item"><a href="rates-left.html">Rates (rigth sidebar)</a></li> -->
						<!--                                 <li class="menu__nav-item"><a href="rates-right.html">Rates (left sidebar)</a></li> -->
						<li class="menu__nav-item"><a href="rates-full.html">Rates
								(full widht)</a></li>
						<li class="menu__nav-item"><a href="offers.html">Offers</a></li>
						<li class="menu__nav-item"><a href="contact.html">Contact
								us</a></li>
						<!--                                 <li class="menu__nav-item"><a href="404.html">404 error</a></li> -->
						<li class="menu__nav-item"><a href="coming-soon.html">Coming
								soon</a></li>
						<li class="menu__nav-item"><a href="login.html">로그인/회원가입</a></li>
					</ul></li>
				<li><span class="sub-nav-toggle plus"></span> <a
					href="page-elements.html">Features</a>
					<ul>
						<li class="menu__nav-item"><a href="typography.html">Typography</a></li>
						<li class="menu__nav-item"><a href="page-elements.html">Shortcodes</a></li>
						<li class="menu__nav-item"><a href="column.html">Columns</a></li>
						<li class="menu__nav-item"><a href="icon-font.html">Icons</a></li>
					</ul></li>
				<li><span class="sub-nav-toggle plus"></span> <a
					href="page-elements.html">Booking steps</a>
					<ul>
						<li class="menu__nav-item"><a href="book1">Booking step 1</a></li>
						<li class="menu__nav-item"><a href="book2">Booking step 2</a></li>
						<li class="menu__nav-item"><a href="book3">Booking step 3
								(buy)</a></li>
						<li class="menu__nav-item"><a href="book3-reserve">Booking
								step 3 (reserve)</a></li>
						<li class="menu__nav-item"><a href="book-final">Final
								ticket view</a></li>
					</ul></li>
				<li><span class="sub-nav-toggle plus"></span> <a
					href="gallery-four.html">Gallery</a>
					<ul>
						<li class="menu__nav-item"><a href="gallery-four.html">4
								col gallery</a></li>
						<li class="menu__nav-item"><a href="gallery-three.html">3
								col gallery</a></li>
						<li class="menu__nav-item"><a href="gallery-two.html">2
								col gallery</a></li>
					</ul></li>
				<li><span class="sub-nav-toggle plus"></span>
				 <a	href="contact.html">Contact us</a> 
					
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
					<a href="#" class="btn btn--sign btn--singin"> 내정보 </a>
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
					class="btn btn-md btn--warning btn--book btn-control--home login-window"><Strong>바로예매하기</Strong>></a>
			</div>

		</div>
		</header>

   
        
        
        
        <!-- Main content -->
        
        <section class="container">
            <div class="order-container">
                <div class="order">
                <!--     <img class="order__images" alt='' src="images/tickets.png"> -->
                    <p class="order__title">THEATER <br><span class="order__descript">and have fun movie time</span></p>
<!--                     <div class="order__control">
                        <a href="#" class="order__control-btn active">Purchase</a>
                        <a href="#" class="order__control-btn">Reserve</a>
                    </div> -->
                </div>
            </div>
  <!--           <div class="order-step-area">
                    <div class="order-step first--step">1. What &amp; Where &amp; When</div>
            </div> -->
                
         <!-- 영화관 선택 -->       
            <div class="tags-area">      
                    <div class="tags tags--unmarked">
                        <span class="tags__label">영화관 선택:</span>
                            <ul>
                                <li class="item-wrap"><a href="#" class="tags__item item-active" data-filter='all'>강남</a></li>
                                <li class="item-wrap"><a href="#" class="tags__item" data-filter='release'>동대문</a></li>
                                <li class="item-wrap"><a href="#" class="tags__item" data-filter='popularity'>목동</a></li>
                                <li class="item-wrap"><a href="#" class="tags__item" data-filter='comments'>상봉</a></li>
                                <li class="item-wrap"><a href="#" class="tags__item" data-filter='ending'>센트럴</a></li>
                            </ul>
                    </div>
                </div>
                
                
                
                 <article class="post post--news">
        				 <a href='#' class="post__image-link">
                              <img alt='' src="<%=ctx%>/images/cinemas/CGVgangnam.jpg"> 
                        </a>
                        
                     <h1><a href="single-page-full.html" class="post__title-link">CGS 강남</a></h1>
                        
                         <div class="wave-devider"></div>

                        <p class="post__text">
                        	영화관 주소: 서울특별시 강남구 역삼동 814-6 스타플렉스<br>
                        	영화관 전화번호: 1544-1122 <br>
                        	상영관 개수: 6관 / 874석<br>
                        </p> 
                        
                        
                  </article>
                  
                  

            <!-- <h2 class="page-heading heading--outcontainer">Choose a movie</h2> -->
 <!--        </section>
        
  

        <section class="container"> -->
            <div class="col-sm-12">
 <!--                <div class="choose-indector choose-indector--film">
                    <strong>Choosen: </strong><span class="choosen-area"></span>
                </div> -->

                <h2 class="page-heading">Date</h2>

                <div class="choose-container choose-container--short">

                    <div class="datepicker">
                      <span class="datepicker__marker"><i class="fa fa-calendar"></i>Date</span>
                      <input type="text" id="datepicker" value='03/10/2014' class="datepicker__input">
                    </div>
                </div>

                <h2 class="page-heading">Pick time</h2>

                <div class="time-select time-select--wide">
                
                
                
                
                        <div class="time-select__group group--first">
                            <div class="col-sm-2">
                                <p class="time-select__place">럭키</p>
                            </div>
                             <div class="col-sm-1">
                                <p class="time-select__place">1관</p>
                            </div>
                            <ul class="col-sm-6 items-wrap">
                                <li class="time-select__item" data-time='09:40'>09:40</li>
                                <li class="time-select__item" data-time='13:45'>13:45</li>
                                <li class="time-select__item" data-time='15:45'>15:45</li>
                                <li class="time-select__item" data-time='19:50'>19:50</li>
                                <li class="time-select__item" data-time='21:50'>21:50</li>
                            </ul>
                        </div>
                        <div class="time-select__group group--first">
                         	 <div class="col-sm-2">
                                <p class="time-select__place"></p>
                            </div>
                            <div class="col-sm-1">
                                <p class="time-select__place">2관</p>
                            </div>
                            <ul class="col-sm-6 items-wrap">
                                <li class="time-select__item" data-time='09:40'>09:40</li>
                                <li class="time-select__item" data-time='13:45'>13:45</li>
                                <li class="time-select__item" data-time='15:45'>15:45</li>
                                <li class="time-select__item" data-time='19:50'>19:50</li>
                                <li class="time-select__item" data-time='21:50'>21:50</li>
                            </ul>
                        </div>
                        


                        <div class="time-select__group">
                            <div class="col-sm-3">
                                <p class="time-select__place">Empire</p>
                            </div>
                            <ul class="col-sm-6 items-wrap">
                                <li class="time-select__item" data-time='10:45'>10:45</li>
                                <li class="time-select__item" data-time='16:00'>16:00</li>
                                <li class="time-select__item" data-time='19:00'>19:00</li>
                                <li class="time-select__item" data-time='21:15'>21:15</li>
                                <li class="time-select__item" data-time='23:00'>23:00</li>
                            </ul>
                        </div>

                        <div class="time-select__group">
                            <div class="col-sm-3">
                                <p class="time-select__place">Curzon</p>
                            </div>
                            <ul class="col-sm-6 items-wrap">
                                <li class="time-select__item" data-time='09:00'>09:00</li>
                                <li class="time-select__item" data-time='11:00'>11:00</li>
                                <li class="time-select__item" data-time='13:00'>13:00</li>
                                <li class="time-select__item" data-time='15:00'>15:00</li>
                                <li class="time-select__item" data-time='17:00'>17:00</li>
                                <li class="time-select__item" data-time='19:00'>19:00</li>
                                <li class="time-select__item" data-time='21:00'>21:00</li>
                                <li class="time-select__item" data-time='23:00'>23:00</li>
                                <li class="time-select__item" data-time='01:00'>01:00</li>
                            </ul>
                        </div>

                        <div class="time-select__group">
                            <div class="col-sm-3">
                                <p class="time-select__place">Odeon</p>
                            </div>
                            <ul class="col-sm-6 items-wrap">
                                <li class="time-select__item" data-time='10:45'>10:45</li>
                                <li class="time-select__item" data-time='16:00'>16:00</li>
                                <li class="time-select__item" data-time='19:00'>19:00</li>
                                <li class="time-select__item" data-time='21:15'>21:15</li>
                                <li class="time-select__item" data-time='23:00'>23:00</li>
                            </ul>
                        </div>

                        <div class="time-select__group group--last">
                            <div class="col-sm-3">
                                <p class="time-select__place">Picturehouse</p>
                            </div>
                            <ul class="col-sm-6 items-wrap">
                                <li class="time-select__item" data-time='17:45'>17:45</li>
                                <li class="time-select__item" data-time='21:30'>21:30</li>
                                <li class="time-select__item" data-time='02:20'>02:20</li>
                            </ul>
                        </div>
                    </div>

 <!--                <div class="choose-indector choose-indector--time">
                    <strong>Choosen: </strong><span class="choosen-area"></span>
                </div> -->
            </div>

        </section>
        
        
    
        <div class="clearfix"></div>

        <form id='film-and-time' class="booking-form" method='get' action='book2.html'>
            <input type='text' name='choosen-movie' class="choosen-movie">

            <input type='text' name='choosen-city' class="choosen-city">
            <input type='text' name='choosen-date' class="choosen-date">
            
            <input type='text' name='choosen-cinema' class="choosen-cinema">
            <input type='text' name='choosen-time' class="choosen-time">
        

            <div class="booking-pagination">
                    <a href="#" class="booking-pagination__prev hide--arrow">
                        <span class="arrow__text arrow--prev"></span>
                        <span class="arrow__info"></span>
                    </a>
                    <a href="book2.html" class="booking-pagination__next">
                        <span class="arrow__text arrow--next">예매하기</span>
                        <span class="arrow__info">make a reservation</span>
                    </a>
            </div>

        </form>
        
        
        
        
  <!--/////////////////메인 끝///////////////////////////-->      

        











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
	<script src="js/external/jquery-migrate-1.2.1.min.js"></script>
	<!-- Bootstrap 3-->
	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>

	<!-- jQuery REVOLUTION Slider -->
	<script type="text/javascript"
		src="rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
	<script type="text/javascript"
		src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

	<!-- Mobile menu -->
	<script src="js/jquery.mobile.menu.js"></script>
	<!-- Select -->
	<script src="js/external/jquery.selectbox-0.2.min.js"></script>
	<!-- Stars rate -->
	<script src="js/external/jquery.raty.js"></script>

	<!-- Form element -->
	<script src="js/external/form-element.js"></script>
	<!-- Form validation -->
	<script src="js/form.js"></script>

	<!-- Twitter feed -->
	<script src="js/external/twitterfeed.js"></script>

	<!-- Custom -->
	<script src="js/custom.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			init_Home();
		});
	</script>

</body>
</html>
