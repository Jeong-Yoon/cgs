<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
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
<!-- Always force latest IE rendering engine -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- icon -->
<link rel="shortcut icon" type="image/x-icon"
	href="<%=ctx%>/resources/css/img/favicon.png" />

<!-- Fonts -->
<!-- Open Sans -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:800italic'
	rel='stylesheet' type='text/css'>
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700"
	rel="stylesheet" type="text/css">

<!-- Stylesheets -->

<!-- Mobile menu -->
<link href="<%=ctx%>/resources/css/gozha-nav.css" rel="stylesheet" />

<!-- REVOLUTION BANNER CSS SETTINGS -->
<!-- <link rel="stylesheet" type="text/css" -->
<%-- 	href="<%=ctx%>/resources/rs-plugin/css/settings.css" media="screen" /> --%>

<!-- Fontawesome(아이콘폰트) -->
<link rel="stylesheet" href="<%=ctx%>/resources/css/font-awesome.min.css">
<!-- Bootstrap -->
<link rel="stylesheet" href="<%=ctx%>/resources/css/bootstrap.min.css">
<!-- Fancybox -->
<link rel="stylesheet" href="<%=ctx%>/resources/css/jquery.fancybox.css">
<!-- owl carousel -->
<link rel="stylesheet" href="<%=ctx%>/resources/css/owl.carousel.css">
<!-- Animate -->
<link rel="stylesheet" href="<%=ctx%>/resources/css/animate.css">
<!-- Main Stylesheet -->
<link rel="stylesheet" href="<%=ctx%>/resources/css/main.css">
<!-- Main Responsive -->
<link rel="stylesheet" href="<%=ctx%>/resources/css/responsive.css">

<!-- Modernizr -->
<script src="<%=ctx%>/resources/js/external/modernizr.custom.js"></script>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]> 
    	<script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script> 
		<script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.js"></script>		
    <![endif]-->

<!-- Modernizer Script for old Browsers -->
<%-- <script src="<%=ctx%>/js/external/modernizr-2.6.2.min.js"></script> --%>

<!-- background mp4-->
<script
	src="http://pupunzi.com/mb.components/mb.YTPlayer/demo/inc/jquery.mb.YTPlayer.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- <script>window.jQuery || document.write('<script src="../libs/jquery/dist/jquery.min.js"><\/script>')</script> -->
<script src="<%=ctx%>/resources/js/jquery.vide.js"></script>
<script>
function movieChk(name) {
	document.getElementById("choosed_film").innerHTML = name;
	document.getElementById("film_name").setAttribute("value", name);
	location.href = "book1";
}
function submit(){
		document.getElementById("gobook").submit();
}
</script>
<style>
.auth__function{
	display:none;
    background-color: #rgba(0, 0, 3, 0.701961);
    width: 220px;
    padding: 15px 29px 15px;
    transform-origin: left top;
    position: absolute;
/*     top: 97px; */
    top: 80px;
    left: 0;
    z-index: 2;
    transition: all 0.8s ease;
}
.open-function{
	display:block;
}
.auth__function-item{
color: #fff;
    font-size: 13px;
    font-weight: 600;
/*     padding: 38px 25px; */
    text-transform: uppercase;
}  
</style>
</head>

<body>
		<!--
        Fixed Navigation
        ==================================== -->
	<header id="navigation" class="navbar-fixed-top">
	<div class="container">
			<!-- responsive nav button -->
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<!-- /responsive nav button -->

			<!-- logo -->
			<h1 class="navbar-brand">
				<a href='#first-main'> <img
					src="<%=ctx%>/resources/images/logo-header.png" alt="LogoCGS"
					style="height: 75%; width: 75%">
				</a>
			</h1>
			<!-- /logo -->

			<!-- main nav -->
			<nav class="collapse navigation navbar-collapse navbar-right"
				role="navigation">
			<ul id="nav" class="nav navbar-nav">
				<li class="current"><a href="#first-main">Home</a></li>
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
					<li class="auth__function-item normal w300">안녕하세요 <strong><%=name%></strong>님!</li>
					<br>
					<li class="normal w300"><a href="<%=ctx%>/modify" class="auth__function-item">내 정보 확인</a></li>
					<li class="normal w300"><a href="<%=ctx%>/reserve_list/?mId=<%=(String) session.getAttribute("id") %>" class="auth__function-item">예매 내역 확인</a></li>
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

	<section id="first-main">

	<div id="home-carousel" class="carousel slide" data-interval="false">
		<ol class="carousel-indicators">
			<li data-target="#home-carousel" data-slide-to="0" class="active"></li>
			<li data-target="#home-carousel" data-slide-to="1"></li>
			<li data-target="#home-carousel" data-slide-to="2"></li>
			<li data-target="#home-carousel" data-slide-to="3"></li>
			<li data-target="#home-carousel" data-slide-to="4"></li>
		</ol>
		<!--/.carousel-indicators-->
		
		<div class="carousel-inner">
			<div class="item active" data-vide-bg="<%=ctx%>/resources/video/mainvideo">
				<div class="carousel-caption" >
					<div class="animated bounceInRight">
						<h2>
							FANTASTIC CINEMA, 
						</h2>
						<h2 style="color:#F0C419">
							<strong>FANTASIC CGS</strong>
						</h2>
						<p style="font-family: Godo">Go on a trip to Wonderland
							with us.</p>
					</div>
				</div>
</div>

			<div class="item"
				style="background-image: url('<%=ctx%>/resources/images/slider/bg1.jpg')">
			</div>

			<div class="item"
				style="background-image: url('<%=ctx%>/resources/images/slider/bg2.jpg')">
			</div>

			<div class="item"
				style="background-image: url('<%=ctx%>/resources/images/slider/bg3.jpg')">
			</div>
			
			<div class="item"
				style="background-image: url('<%=ctx%>/resources/images/slider/bg4.jpg')">
			</div>
			
		</div>
		<!--/.carousel-inner-->
		<nav id="nav-arrows"
			class="nav-arrows hidden-xs hidden-sm visible-md visible-lg"> <a
			class="sl-prev hidden-xs" href="#home-carousel" data-slide="prev">
			<i class="fa fa-angle-left fa-3x" style="margin-top: 4px"></i>
		</a> <a class="sl-next" href="#home-carousel" data-slide="next"> <i
			class="fa fa-angle-right fa-3x" style="margin-top: 4px"></i>
		</a> </nav>
	</div>
	</section>

	<div id="movieinfo" class="wrapper">
		<!-- Movie content -->
		<section id="portfolio">
		<div class="section-title text-center wow fadeInDown">
			<h2 style="color: #1f2021; margin-top: 50px">
				<strong>MOVIE SPACE</strong>
			</h2>
		</div>

		<nav class="project-filter clearfix text-center wow fadeInLeft"
			data-wow-delay="0.5s">
<!-- 		<ul class="list-inline"> -->
<!-- 			<li><a href="javascript:;" class="filter" data-filter=".rank">박스오피스</a></li> -->
<!-- 			<li><a href="javascript:;" class="filter" data-filter=".now">현재상영작</a></li> -->
<!-- 			<li><a href="javascript:;" class="filter" data-filter=".recerel">최신개봉작</a></li> -->
<!-- 			<li><a href="javascript:;" class="filter" data-filter=".coming">상영예정작</a></li> -->
<!-- 			<li><a href="javascript:;" class="filter" data-filter=".pre">시사회</a></li> -->
<!-- 		</ul> -->
<!-- 		</nav> -->

		<div id="projects" class="clearfix">
			<form action="book1" method="post" class="gobook1" id="gobook">
				<c:forEach var="dto" items="${index_list}" varStatus="status">
<%-- 					<input type="hidden" name="film_name" value="${dto.film_name}"> --%>
					<figure class="mix portfolio-item rank now"> <img
						class="img-responsive"
						src="<%=ctx %>/resources/images/poster/${dto.film_ID}.jpg"
						alt="movie rank${status.count}"> <figcaption class="mask">
					<h3>${dto.film_name}</h3>
					<span>Doctor Strange , 2016</span> <br>
					<a href="movie?film_ID=${dto.film_ID}" class="btn btn-book">상세보기</a> <a href="book1?film_name=${dto.film_name}"
						class="btn btn-book-blue" >예매하기</a> </figcaption> </figure>
				</c:forEach>
			</form>
<%-- 				<c:forEach var="dto" items="${index_list}" begin="0" end="3" varStatus="status"> --%>
<%-- 					<input type="hidden" name="film_ID" value="${dto.film_ID}"> --%>
<!-- 					<figure class="mix portfolio-item recerel"> <img -->
<!-- 						class="img-responsive" -->
<%-- 						src="<%=ctx %>/resources/images/poster/${dto.film_ID}.jpg" --%>
<%-- 						alt="movie rank${status.count}"> <figcaption class="mask"> --%>
<%-- 					<h3>${dto.film_name}</h3> --%>
<!-- 					<span>Doctor Strange , 2016</span> <br> -->
<%-- 					<a href="movie?film_ID=${dto.film_ID}" class="btn btn-book">상세보기</a> <a href="#" --%>
<!-- 						class="btn btn-book-blue" onclick="submit()">예매하기</a> </figcaption> </figure> -->
<%-- 				</c:forEach> --%>
<%-- 				<c:forEach var="dto" items="${coming}" begin="0" end="3" varStatus="status"> --%>
<%-- 					<input type="hidden" name="film_ID" value="${dto.film_ID}"> --%>
<!-- 					<figure class="mix portfolio-item coming"> <img -->
<!-- 						class="img-responsive" -->
<%-- 						src="<%=ctx %>/resources/images/poster/${dto.film_ID}.jpg" --%>
<%-- 						alt="movie rank${status.count}"> <figcaption class="mask"> --%>
<%-- 					<h3>${dto.film_name}</h3> --%>
<!-- 					<span>Doctor Strange , 2016</span> <br> -->
<%-- 					<a href="movie?film_ID=${dto.film_ID}" class="btn btn-book">상세보기</a> <a href="#" --%>
<!-- 						class="btn btn-book-blue" onclick="submit()">예매하기</a> </figcaption> </figure> -->
<%-- 				</c:forEach> --%>
			
<!-- 		</div> -->
<!-- 		<a href="movie_list?page=0" title="더보기" rel="portfolio" -->
<!-- 			class="fancybox"><span class="plus"></span></a> </section> -->
		<!-- end #projects -->



		<!--
        #subscribe
        ========================== -->
		<section id="subscribe">
		<div class="container" >
<!-- 			<div class="row" > -->
<!-- 				<div class="col-md-7 wow fadeInLeft" style="left:20%; padding: 40px 0px 50px 0px"> -->
<!-- 					<h3 style='margin: 20px 5px'>CGS 소식지 구독하기</h3> -->
<!-- 					<form action="#" method="post" class="subscription-form"> -->
<!-- 						<i class="fa fa-envelope-o fa-lg" style="font-size: 1.7em"></i> <input type="email" -->
<!-- 							name="subscribe" class="subscribe" placeholder="YOUR MAIL" -->
<!-- 							required=""> <input type="submit" value="SUBSCRIBE" -->
<!-- 							id="mail-submit"> -->
<!-- 					</form> -->
<!-- 				</div> -->
<!-- 				<div class="col-md-4 text-left wow fadeInRight"> -->
<!-- 					<p style="color: white; padding: 1px;">정기적으로 CGS 최신 영화, 이벤트 소식을 -->
<!-- 						전해드립니다 :)</p> -->
<!-- 				</div> -->
			</div>
		</div>
		</section>

		<div class="clearfix"></div>
		<!--
        End #subscribe
        ========================== -->

		<!--
        #footer
        ========================== -->

		<footer id="footer" class="text-center">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="footer-logo wow fadeInDown">
						<img class="footer-logo-img"
							src="<%=ctx%>/resources/images/logo.png" alt="logo">
					</div>

					<div class="footer-social wow fadeInUp">
						<h3>We are social</h3>
						
					</div>

					<div class="copyright">
						<p style="color: gray">
							&copy; CGS, 2016. All rights reserved.</a>
						</p>
					</div>

				</div>
			</div>
		</div>
		</footer>
		<!--
        End #footer
        ========================== -->
	</div>

	<!-- JavaScript-->
	<!-- jQuery 1.11.1-->
<!-- 	<script -->
<!-- 		src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> -->
	<script>
		window.jQuery
				|| document
						.write('<script src="js/external/jquery-1.11.1.min.js"><\/script>')
	</script>
	<!-- Migrate -->
	<script
		src="<%=ctx%>/resources/js/external/jquery-migrate-1.2.1.min.js">
		$('.auth__show').click(function(e) {
			e.preventDefault();
			$('.auth__function').toggleClass('open-function')
		});
		</script>
	<!-- Bootstrap 3-->
<!-- 	<script -->
<%-- 		src="<%=ctx%>/resources/http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script> --%>

	<!-- jQuery REVOLUTION Slider -->
<!-- 	<script type="text/javascript" -->
<%-- 		src="<%=ctx%>/resources/rs-plugin/js/jquery.themepunch.plugins.min.js"></script> --%>
<!-- 	<script type="text/javascript" -->
<%-- 		src="<%=ctx%>/resources/rs-plugin/js/jquery.themepunch.revolution.min.js"></script> --%>

	<!-- Mobile menu -->
	<script src="<%=ctx%>/resources/js/jquery.mobile.menu.js"></script>
	<!-- Select -->
	<script
		src="<%=ctx%>/resources/js/external/jquery.selectbox-0.2.min.js"></script>
	<!-- Stars rate -->
	<script src="<%=ctx%>/resources/js/external/jquery.raty.js"></script>

	<!-- Form element -->
	<script src="<%=ctx%>/resources/js/external/form-element.js"></script>
	<!-- Form validation -->
	<script src="<%=ctx%>/resources/js/form.js"></script>

	<!-- Twitter feed -->
<%-- 	<script src="<%=ctx%>/resources/js/external/twitterfeed.js"></script> --%>

	<!-- Custom -->
	<script src="<%=ctx%>/resources/js/custom.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			init_Home();
		});
	</script>

	<script>
		jQuery(window).scroll(function() {
			if (jQuery(window).scrollTop() > 400) {
				jQuery("#navigation").css("background-color", "rgba(0, 0, 3, 0.701961)");
				jQuery("#navigation").addClass("animated-nav");
				jQuery('.auth__function').css("top", "82px");
				jQuery('.auth__function').css("background-color", "rgba(0, 0, 3, 0.701961)");
			} else {
				jQuery("#navigation").css("background-color", "rgba(0, 0, 3, 0.701961)");
				jQuery("#navigation").removeClass("animated-nav");
				jQuery('.auth__function').css("top", "103px");
				jQuery('.auth__function').css("background-color", "transparent");
			}
		});


	</script>
	<!-- main jQuery -->
	<script src="<%=ctx%>/resources/js/external/jquery-1.11.1.min.js"></script>
	<!-- Bootstrap -->
	<script src="<%=ctx%>/resources/js/min/bootstrap.min.js"></script>
	<!-- jquery.nav -->
	<script src="<%=ctx%>/resources/js/jquery.nav.js"></script>
	<!-- Portfolio Filtering -->
	<script src="<%=ctx%>/resources/js/min/jquery.mixitup.min.js"></script>
	<!-- Fancybox -->
<%-- 	<script src="<%=ctx%>/resources/js/jquery.fancybox.pack.js"></script> --%>
	<!-- Parallax sections -->
<%-- 	<script src="<%=ctx%>/resources/js/jquery.parallax-1.1.3.js"></script> --%>
	<!-- jQuery Appear -->
<%-- 	<script src="<%=ctx%>/resources/js/jquery.appear.js"></script> --%>
	<!-- countTo -->
<%-- 	<script src="<%=ctx%>/resources/js/jquery-countTo.js"></script> --%>
	<!-- owl carousel -->
<%-- 	<script src="<%=ctx%>/resources/js/min/owl.carousel.min.js"></script> --%>
	<!-- WOW script -->
<%-- 	<script src="<%=ctx%>/resources/js/min/wow.min.js"></script> --%>
	<!-- theme custom scripts -->
	<script src="<%=ctx%>/resources/js/main.js"></script>
	<script>

	$('.recerel').css('display','none');
	$('.coming').css('display','none');
	</script>
</body>
</html>
