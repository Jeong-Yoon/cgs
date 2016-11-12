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
<title>CGS-Cinema List</title>
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
<style>
.cinemaBox {
    margin: 0% 10%;
}
.datepicker {
	margin-left: 5%;
}
.swiper-container {
    margin: 10px 10%;
}
.cine-contents {
/*     margin: 30px 10%; */
}
.tags-area {
    padding: 0 13%;
/*     background-color: #636364; */
    /* color: white; */
}
</style>
	<style>
.post__text{
 font-size:16px;
}
.tags .tags__label{
font-size:19px;
}
a{
font-size:17px;
}
	</style>

<script>
	function movieChk(name) {
		document.getElementById("choosed_film").innerHTML = name;
		document.getElementById("film_name").setAttribute("value", name);
		bookChk();
	}
	function dateChk() {
		var date = document.getElementById("datepicker").getAttribute("value");
		if (hasDate(date) != 1) {
			document.getElementById("screening_date").setAttribute("value",
					name)
			bookChk();
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
	function bookChk() {
	}

</script>




</head>

<body>
	<div class="wrapper">
		<!-- Header section -->
		<jsp:include page="menu.jsp" flush="false"/>

		

		<!-- Main content -->
		<!-----------------------------------------////////////////////////////////////////////////////////////  -->

		<section class="container">
		<div class="order-container">
			<div class="order">
				<p class="order__title">
					THEATER <br>
					<span class="order__descript">and have fun movie time</span>
				</p>
			</div>
		</div>



		<!-- 영화관목록-->
		<div class="tags-area">
			<div class="tags tags--unmarked">
			<br>
				<span class="tags__label"><strong>영화관 목록:</strong></span>
				<%-- <ul>
                            
                            	<c:forEach items="${t_site}" var="tst">
                                <li class="item-wrap"><a href="<%=ctx%>/cinemas/?sId=${tst.site_ID}" class="tags__item item-active" data-filter='all'>${tst.site_name}</a></li>
                       
                       <!--     <li class="item-wrap"><a href="<%=ctx%>/cinemas/?sId=0002" class="tags__item" data-filter='release'>강남점</a></li>
                                <li class="item-wrap"><a href="<%=ctx%>/cinemas/?sId=0003" class="tags__item" data-filter='popularity'>동대문점</a></li>
                           		<li class="item-wrap"><a href="#" class="tags__item" data-filter='comments'>강북</a></li>
                                <li class="item-wrap"><a href="#" class="tags__item" data-filter='ending'>여의도</a></li> -->
                      			</c:forEach>

                            </ul> --%>
				<ul>
					<c:forEach items="${t_site}" var="tst">
						<a href="<%=ctx%>/cinemas/?sId=${tst.site_ID}">${tst.site_name}&nbsp;&nbsp;&nbsp;&nbsp;</a>
					</c:forEach>
				</ul>
				<br>
			</div>
		</div>

        <div class="choose-film">
            <div class="swiper-container">
              <div class="swiper-wrapper">
                 
              </div>
            </div>
        </div>



		<div class="choose-film">
			<div class="swiper-container">
				<div class="swiper-wrapper">

					
					<c:forEach items="${site}" var="st">
						<!-- <a href='#' class="post__image-link">  -->
						<img alt=''
							src="<%=ctx%>/resources/images/cinemas/${st.site_ID}.jpg">
						<!-- </a> -->
						<div class="cine-contents">
						<h1>${st.site_name}</h1>

						<div class="wave-devider"></div>

						<p class="post__text">

							주소: ${st.site_address}<br> 전화번호: ${st.site_pnum} <br>
							상영관 개수: ${st.total_screen}<br>

						</p>
						</div>
					</c:forEach>
		

				</div>
			</div>
		</div>



<!-- 		<div class="pagination">
			<a href='#' class="pagination__prev">prev</a> aaaaaa <a href='#'
				class="pagination__next">next</a>
		</div>
 -->



		<!--/////////////////메인 페이지 끝///////////////////////////-->




		<div class="clearfix"></div>

	</div>
<jsp:include page="footer.jsp"></jsp:include>
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
<!-- 	<script -->
<!-- 		src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script> -->
<!-- 	<script> -->
<!-- // 		window.jQuery -->
<!-- // 				|| document -->
<!-- // 						.write('<script src="js/external/jquery-1.10.1.min.js"><\/script>') -->
<!-- 	</script> -->
	<!-- Migrate -->
<!-- 	<script -->
<%-- 		src="<%=ctx%>/resources/js/external/jquery-migrate-1.2.1.min.js"></script> --%>
	<!-- jQuery UI -->
<!-- 	<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script> -->
	<!-- Bootstrap 3-->
<!-- 	<script -->
<!-- 		src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script> -->

	<!-- Mobile menu -->
	<script src="<%=ctx%>/resources/js/jquery.mobile.menu.js"></script>
	<!-- Select -->
	<script
		src="<%=ctx%>/resources/js/external/jquery.selectbox-0.2.min.js"></script>

<!-- 	Stars rate -->
	<script src="<%=ctx%>/resources/js/external/jquery.raty.js"></script>
<!-- 	Swiper slider -->
	<script src="<%=ctx%>/resources/js/external/idangerous.swiper.min.js"></script>
<!-- 	Magnific-popup -->
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
			init_BookingOne();
			init_MoviePage();
			init_MoviePageFull();
		});
	</script>

</body>
</html>
