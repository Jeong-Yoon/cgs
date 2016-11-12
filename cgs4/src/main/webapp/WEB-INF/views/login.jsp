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
<title>CGS - Login</title>
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

<!-- Stylesheets -->
<link href="<%=ctx%>/resources/css/style.min.css" rel="stylesheet" />
<link href="<%=ctx%>/resources/css/style.login.css" rel="stylesheet" />
<!-- Bootstrap -->
<link rel="stylesheet" href="<%=ctx%>/resources/css/bootstrap.min.css">

<!-- Mobile menu -->
<link href="<%=ctx%>/resources/css/gozha-nav.css" rel="stylesheet" />


<!-- Modernizr -->
<script src="<%=ctx%>/resources/js/external/modernizr.custom.js"></script>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]> 
    	<script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script> 
		<script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.js"></script>		
    <![endif]-->
</head>
<style>
/* table.loginbtn { */
/* 	width: 35%; */
/* 	margin: 0 35%; */
/* } */
.msg_sound_only, .sound_only {
	display: inline-block !important;
	margin: 0 !important;
	padding: 0 !important;
	font-size: 0;
	line-height: 0;
	border: 0 !important;
	overflow: hidden !important;
}

/* CUSTOM FONTS */
.actions .action, .compact-menu .main-d-nav ul li a, .view-item-btn,
	.prjct-hvr-title h2, body .module .heading, .blog-action-title,
	.blog-search-box, .comments-count, .comment-reply-link, .footer .social-area ul li a,
	.wsf-heading, .table-end {
	font-family: 'Lato', sans-serif;
}

.text-hero-title, .text-hero-subtitle {
	font-family: 'Lato'
}

body, .inner-post .post-title, .product-content, .product-content h3,
	.products>h2, .lobo-tabs .shop_table p, .item-meta h2, .lobo-tabs *,
	.lobo-tabs input[type="submit"], .lobo-tabs button, h1, h2, h3, h4, h5,
	h6, .inner-post .post-date, .wcp-subtitle a, .woocommerce-message,
	.woocommerce-error, .woocommerce-info, .lobo-tabs p, .payment_methods li label,
	.woocommerce-page .post-excerpt p, .woocommerce-page .post-excerpt dl,
	.order-actions a, .product .button, .product .item-cat, .cart-contents span,
	.shop_table *, .order_details, .woocommerce-page .post-excerpt .variation p,
	#shop-search a, #shop-search, .comment-body p, .pagination div a,
	.call-to-action-btn a, .show-map-btn, .product_title, .product-content h2,
	.single-product .cart input, #lobo-reviews h5, #lobo-reviews .form input,
	#lobo-reviews .form select, #lobo-reviews .form textarea, #lobo-reviews .form-submit input#submit,
	.woocommerce-message .button, .blog-actions .woocommerce.widget .widget-title,
	.wcp-title, .woocommerce-page .the-post h2, .product-quantity .input-text,
	.lobo-tabs input, .lobo-tabs select, .lobo-tabs textarea, .lobo-tabs radio,
	.lobo-tabs checkbox, .lobo-tabs label, .lobo-tabs label abbr, .module .lobo-accordion h3,
	li.product .price del+ins {
	font-family: 'Spoqa Han Sans'
}

.hero-text-intro .hero-intro h1, .hero-text-intro .hero-intro h2,
	.country_select, li.product .price, .woocommerce-breadcrumb,
	.woocommerce-breadcrumb a, .woocommerce-breadcrumb span, .woo-cheader {
	font-family: 'Open Sans', sans-serif;
}

.contact-form form ::-webkit-input-placeholder {
	font-family: 'Open Sans', sans-serif;
}

.contact-form form ::-moz-placeholder {
	font-family: 'Open Sans', sans-serif;
}

.contact-form form ::-ms-input-placeholder {
	font-family: 'Open Sans', sans-serif;
}

.inner-post footer a, .single-post h3, .single-post blockquote,
	.single-post .post-excerpt .left-note, .read-comments-btn,
	.author-post-meta, .comment-author-wrap, .single-post .comment-reply-title,
	.respond-field input, .respond-comment textarea, .comment-form input#submit,
	.submit-caption, .footer .credits, .module blockquote, .contact-form label,
	.galleria-run .text, #galleria .galleria-control, #galleria .galleria-counter,
	#galleria .galleria-info-description, #galleria .gal-close-btn,
	.royalSlider.tabs .rsTab, .rating-meta time, .wcp-subtitle strong,
	.address a, .lobo-tabs address, #scriptie {
	font-family: 'Lekton', sans-serif;
}

.hero-info h1, .hero-info h2, .secondary-typeface, .compact-menu .main-d-nav .menu-footer p,
	.module-title, .text-module .copy h4, .text-module .copy h5,
	.text-module .copy h6, .module-caption, .slide-caption,
	.prjct-description-head h3, body .module .copy-highlight, .item-meta .item-cat
	{
	font-family: 'Crimson Text', serif;
}

/* CUSTOM COLORS */
::-moz-selection {
	background-color: #ffef96;
}

::selection {
	background-color: #ffef96;
}

#header .main-d-nav ul .sub-menu, .module-caption, .slide-caption,
	.audioplayer-bar-played, .post-item:hover .inner-post footer a, .cats a:after,
	.cats-blog a:after, .action a:after, .call-to-action-module h2:after,
	.call-to-action-module h3:after, .call-to-action-module h4:after,
	.mb_YTPseekbar, .comment-list .bypostauthor .comment-inner:after,
	.hero-info a:after, #galleria .galleria-info-description, .royalSlider.tabs .rsTab:after,
	.galleria-container.background--light .galleria-close-wrapper a:hover,
	.separator h3:after, .galleria-container.background--dark .galleria-close-wrapper a:hover,
	.separator h3:after, .galleria-close-wrapper a:hover, .separator h3:after,
	.single_add_to_cart_button, #lobo-reviews h5, li.product .view_button,
	.woocommerce-message .button, .blog-actions .woocommerce.widget>ul,
	.cart-contents span, #main-cart .widget_shopping_cart .button.view,
	.woocommerce-page input[type="submit"], .woocommerce-page button,
	.wc-button, .woo-cheader a:after, .wcp-subtitle a:after, #shop-search a:after,
	.mejs-controls .mejs-time-rail .mejs-time-current {
	background-color: #ffef96;
}

body .module .copy-highlight, .single-product .product_meta a:hover,
	.reviews-slider .rsArrow:hover .rsArrowIcn:before, .onsale,
	.woocommerce-message .button:hover, .blog-actions .woocommerce.widget .widget-title.expand:hover,
	.blog-actions .woocommerce.widget .widget-title.expand.opened,
	#main-cart .cart-title:first-letter, #main-cart .widget_shopping_cart .button:hover,
	.single_add_to_cart_button:hover, .woocommerce-page input[type="submit"]:hover,
	.woocommerce-page button:hover, .star-rating .star:before,
	.wcp-subtitle a:hover, .order-actions a:hover, a.wc-button:hover {
	color: #ffef96;
}

.woocommerce #s, .blog-actions .woocommerce.widget .widget-title.expand:hover,
	.blog-actions .woocommerce.widget .widget-title.expand.opened {
	border-color: #ffef96;
}

.compact-menu .main-d-nav .c-close-btn span, .actions-bottom .sticky-head-elmnts .hero-sticky-title,
	.actions-bottom .sticky-head-elmnts .action-scroll-top a i, .share-wdgt span,
	.overlay .close-btn span, .pagination .prev-post a,
	.woocommerce-pagination .page-numbers a:hover {
	background-color: rgb(252, 255, 147);
}

.blog-actions .cats-blog li a, .call-to-action-btn a, .show-map-btn {
	color: rgb(252, 255, 147);
}

.no-touch .compact-menu .main-d-nav ul li a:hover, .compact-menu .main-d-nav .menu-footer p .copy-highlight,
	.compact-menu .main-d-nav ul li.current a {
	color: rgb(255, 251, 178);
}

.pagination .next-post a, .comment-list .even, form input[type="submit"],
	.selector, .current-selector {
	background-color: rgb(253, 255, 188);
}

.comment-list .odd, .mb_YTPLoaded, .pagination, .video-embedded .vem-overlay:hover .vem-play,
	.mejs-overlay:hover .mejs-overlay-button, .mejs-controls .mejs-time-rail .mejs-time-loaded
	{
	background-color: rgb(254, 255, 234);
}

.rating-word {
	color: rgb(253, 255, 188);
}

.woocommerce-page .item-hover:hover:before {
	border-color: #ffef96;
}

a:active, a:focus, .no-touch a:active, .no-touch a:focus {
	color: #ccc;
}

/* CUSTOM CSS */

/*lettering spacing*/
.action a, .hero-sticky-title, .item-meta h2, .prjct-hvr-title h2,
	.submit-btn-helper, .comment-form input#submit, .call-to-action-btn a,
	.footer .social-area ul li a, .item-meta .item-cat, .compact-menu .main-d-nav ul li a
	{
	letter-spacing: 2px;
}

.blog-actions .cats-blog li a, .blog-action-title, .blog-search-box {
	letter-spacing: 3px;
}

.item-meta h2 a {
	letter-spacing: 5px;
}

.comment-reply-btn, .respond-field input, .pagination div a,
	.rltd-content p, .rltd-content-wrapper h3 {
	letter-spacing: 1px;
}

.prjct-description-head h3 {
	letter-spacing: -1px;
}

.hero-sticky-title {
	font-weight: bold;
}

/* Blog > Single post
-------------------------------------------- */
/*Headings*/
.single-post .post-body h2 {
	color: #09f4af;
}

.single-post .post-body h3 {
	color: #f14814;
}

.single-post .post-body h4 {
	color: #f2c709;
}
/*Text*/
.single-post .post-body>* {
	color: #5D556F;
}

.separator h3 {
	padding-top: 40px;
}

.text-hero-title {
	font-family: 'Spoqa Han Sans', 'Montserrat', 'Lato', 'HelveticaNeue';
}

.text-hero-subtitle {
	font-family: 'Montserrat', 'Lato', 'HelveticaNeue';
}

@media only screen and (max-width : 480px) {
	.module-title {
		display: none;
	}
}

.woocommerce-cart .hero-info, .woocommerce-account .hero-info,
	.woocommerce-checkout .hero-info {
	display: none;
}

.mejs-poster {
	background-size: cover;
	width: 100% !important;
	height: 100% !important;
	top: 0 !important;
	left: 0 !important;
}
</style>

<body>
	<!-- Header section -->
	<jsp:include page="menu.jsp" flush="false" />


	<section id="content-wrapper"> <!-- 로그인 시작 { -->
	<div class="woo-cheader">
		<a href="login" title="Login / Register">Login</a> / <a href="signup">Register</a>
		<nav class="woocommerce-breadcrumb" itemprop="breadcrumb"> <a
			href="index">Home</a> <span>></span> Login</nav>
	</div>
	<div id="mb_login" class="mbskin">
		<h1 class="form-signin-heading form-signin form-signin hidden">로그인</h1>
		<div class="contatiner">
			<form id="login-form" method='post' action="loginProcess"
				class="loginBox_1 form-signin">
				<!--             <input type="hidden" name="url" value="http%3A%2F%2Fairing.kr"> -->
				<fieldset id="login_fs" class="woocommerce-billing-fields">
					<p class="form-row form-row-wide">
						<label for="login_id" class="login_id">회원아이디<strong
							class="sound_only"> 필수</strong></label> <input name="user-email"
							class="form-control" type="text" autofocus="" required="required"
							placeholder="ID">
					</p>
					<br> <br>
					<p class="form-row form-row-wide">
						<label for="login_pw" class="login_pw">비밀번호<strong
							class="sound_only"> 필수</strong></label> <input name="user-password"
							class="form-control" type="password" required="required"
							placeholder="Password">
					</p>
					<button class="btn btn-lg btn-color btn-block" type="submit"
						value="로그인">로그인</button>
					<div class="text-right">
						<input type="checkbox" name="auto_login" id="login_auto_login">
						<label for="login_auto_login" class="auto_login">자동로그인</label>
					</div>
				</fieldset>


				<aside class="panel panel-default"
					style="padding: 10px 15px; border-bottom: 1px solid #ddd; border-top-left-radius: 3px; border-top-right-radius: 3px;">
				<div class="panel-heading text-center">INFORMATION</div>
				<div class="panel-body" style="width: 300px; padding: 0 0 10px 5px;">
					<p
						style="padding: 15px 15px; line-height: 1.5em; font-size: 0.83em; box-sizing: border-box;">
						잊으셨다면 아이디/비밀번호 찾기를 이용하세요.<br> 아직 회원이 아니시라면 회원 가입 해주세요.
					</p>

					<div class="text-left">
						<a href="find_id" class="btn01" >아이디찾기</a>
						<a href="find_pw" class="btn01">비밀번호찾기</a>
						<a href="signup" class="btn01">회원가입</a>
					</div>

		</div>
		</aside>
		</form>
		<!-- 자동로그인 -->
		<div class="btn_confirm form-signin"></div>
	</div>
	</div>

	<script>
		// 		$(function() {
		// 			$("#login_auto_login")
		// 					.click(
		// 							function() {
		// 								if (this.checked) {
		// 									this.checked = confirm("자동로그인을 사용하시면 다음부터 회원아이디와 비밀번호를 입력하실 필요가 없습니다.\n\n공공장소에서는 개인정보가 유출될 수 있으니 사용을 자제하여 주십시오.\n\n자동로그인을 사용하시겠습니까?");
		// 								}
		// 							});
		// 		});

		// 		function flogin_submit(f) {
		// 			return true;
		// 		}
	</script> <!-- } 로그인 끝 --> </section>

	<div class="clearfix"></div>
	<jsp:include page="footer.jsp"></jsp:include>
	</div>
	<!-- main jQuery -->
	<script src="<%=ctx%>/resources/js/external/jquery-1.11.1.min.js"></script>
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
	<!-- Bootstrap 3-->

	<!-- Bootstrap -->
	<script src="<%=ctx%>/resources/js/min/bootstrap.min.js"></script>
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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>


</body>
</html>