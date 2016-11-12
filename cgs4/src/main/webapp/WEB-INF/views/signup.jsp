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
	font-family: 'Spoqa Han Sans', sans-serif;
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
	color: #ffef96;
	font-family: 'Godo', sans-serif;
	font-weight: 300;
}

.pagination .next-post a, .comment-list .even, form input[type="submit"],
	.selector, .current-selector {
	background-color: #ffef96;
}

.comment-list .odd, .mb_YTPLoaded, .pagination, .video-embedded .vem-overlay:hover .vem-play,
	.mejs-overlay:hover .mejs-overlay-button, .mejs-controls .mejs-time-rail .mejs-time-loaded
	{
	background-color: rgb(254, 255, 234);
}

.rating-word {
	color: #ffef96;
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

	<section id="content-wrapper"> <!-- 회원가입약관 동의 시작 { -->
	<div class="woo-cheader">
		<a href="login" title="Login / Register">Login</a> / <a href="signup">Register</a>
		<nav class="woocommerce-breadcrumb" itemprop="breadcrumb"> <a
			href="index">Register Step1</a></nav>
	</div>
	<div class="mbskin">
		<div class="shop_register">
			<form id="fregister" action="signup-form" onsubmit="return fregister_submit(this);" method="POST" autocomplete="off" >
				<p>회원가입약관 및 개인정보처리방침안내의 내용에 동의하셔야 회원가입 하실 수 있습니다.</p>
				<div class="p-form">
					<section id="fregister_term">
					<h2 style="margin: 0 0 20px; text-align: center">회원가입약관</h2>
					<textarea readonly>제 1 장 : 총칙 
제 2 장 : 서비스 이용계약 
제 3 장 : 계약당사자의 의무 
제 4 장 : 서비스 이용 
제 5 장 : 계약해지 및 이용제한 
제 6 장 : 기타 

제1장 총 칙

제1조(목적)
이 약관은 CGS(이하 &#034;회사&#034;라 한다)이 홈페이지(cgs.co.kr)에서 제공하는 모든 서비스(이하 &#034;서비스&#034;라 한다)의 이용조건 및 절차에 관한 사항을 규정함을 목적으로 합니다. 

제2조(정의) 
이 약관에서 사용하는 용어의 정의는 다음 각 호와 같습니다. 
1. 이용자 : 본 약관에 따라 회사가 제공하는 서비스를 받는 자
2. 이용계약 : 서비스 이용과 관련하여 회사와 이용자간에 체결하는 계약
3. 가입 : 회사가 제공하는 신청서 양식에 해당 정보를 기입하고, 본 약관에 동의하여 서비스 이용계약을 완료시키는 행위
4. 회원 : 당 사이트에 회원가입에 필요한 개인정보를 제공하여 회원 등록을 한 자
5. 이용자번호(ID) : 회원 식별과 회원의 서비스 이용을 위하여 이용자가 선정하고 회사가 승인하는 영문자와 숫자의 조합(하나의 주민등록번호에 하나의 ID만 발급 가능함)
6. 패스워드(PASSWORD) : 회원의 정보 보호를 위해 이용자 자신이 설정한 영문자와 숫자, 특수문자의 조합
7. 이용해지 : 회사 또는 회원이 서비스 이용이후 그 이용계약을 종료시키는 의사표시

제3조(약관의 효력과 변경)
회원은 변경된 약관에 동의하지 않을 경우 회원 탈퇴(해지)를 요청할 수 있으며, 변경된 약관의 효력 발생일로부터 7일 이후에도 거부의사를 표시하지 아니하고 서비스를 계속 사용할 경우 약관의 변경 사항에 동의한 것으로 간주됩니다
① 이 약관의 서비스 화면에 게시하거나 공지사항 게시판 또는 기타의 방법으로 공지함으로써 효력이 발생됩니다. 
② 회사는 필요하다고 인정되는 경우 이 약관의 내용을 변경할 수 있으며, 변경된 약관은 서비스 화면에 공지하며, 공지후 7일 이후에도 거부의사를 표시하지 아니하고 서비스를 계속 사용할 경우 약관의 변경 사항에 동의한 것으로 간주됩니다.
③ 이용자가 변경된 약관에 동의하지 않는 경우 서비스 이용을 중단하고 본인의 회원등록을 취소할 수 있으며, 계속 사용하시는 경우에는 약관 변경에 동의한 것으로 간주되며 변경된 약관은 전항과 같은 방법으로 효력이 발생합니다.

제4조(준용규정) 
이 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법 및 기타 관련법령의 규정에 따릅니다. 

제2장 서비스 이용계약

제5조(이용계약의 성립) 
이용계약은 이용자의 이용신청에 대한 회사의 승낙과 이용자의 약관 내용에 대한 동의로 성립됩니다.

제6조(이용신청) 
이용신청은 서비스의 회원정보 화면에서 이용자가 회사에서 요구하는 가입신청서 양식에 개인의 신상정보를 기록하여 신청할 수 있습니다. 

제7조(이용신청의 승낙)
① 회원이 신청서의 모든 사항을 정확히 기재하여 이용신청을 하였을 경우에 특별한 사정이 없는 한 서비스 이용신청을 승낙합니다.
② 다음 각 호에 해당하는 경우에는 이용 승낙을 하지 않을 수 있습니다. 
1. 본인의 실명으로 신청하지 않았을 때
2. 타인의 명의를 사용하여 신청하였을 때
3. 이용신청의 내용을 허위로 기재한 경우
4. 사회의 안녕 질서 또는 미풍양속을 저해할 목적으로 신청하였을 때
5. 기타 회사가 정한 이용신청 요건에 미비 되었을 때 

제8조(계약사항의 변경) 
회원은 이용신청시 기재한 사항이 변경되었을 경우에는 수정하여야 하며, 수정하지 아니하여 발생하는 문제의 책임은 회원에게 있습니다.


제3장 계약당사자의 의무

제9조(회사의 의무) 
회사는 서비스 제공과 관련해서 알고 있는 회원의 신상 정보를 본인의 승낙 없이 제3자에게 누설하거나 배포하지 않습니다. 단, 전기통신기본법 등 법률의 규정에 의해 국가기관의 요구가 있는 경우, 범죄에 대한 수사상의 목적이 있거나 또는 기타 관계법령에서 정한 절차에 의한 요청이 있을 경우에는 그러하지 아니합니다.

제10조(회원의 의무)
① 회원은 서비스를 이용할 때 다음 각 호의 행위를 하지 않아야 합니다. 
1. 다른 회원의 ID를 부정하게 사용하는 행위 
2. 서비스에서 얻은 정보를 복제, 출판 또는 제3자에게 제공하는 행위 
3. 회사의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 행위 
4. 공공질서 및 미풍양속에 위반되는 내용을 유포하는 행위 
5. 범죄와 결부된다고 객관적으로 판단되는 행위 
6. 기타 관계법령에 위반되는 행위 
② 회원은 서비스를 이용하여 영업활동을 할 수 없으며, 영업활동에 이용하여 발생한 결과에 대하여 회사는 책임을 지지 않습니다. 
③ 회원은 서비스의 이용권한, 기타 이용계약상 지위를 타인에게 양도하거나 증여할 수 없으며, 이를 담보로도 제공할 수 없습니다. 


제4장 서비스 이용 

제11조(회원의 의무)
① 회원은 필요에 따라 자신의 메일, 게시판, 등록자료 등 유지보수에 대한 관리책임을 갖습니다. 
② 회원은 회사에서 제공하는 자료를 임의로 삭제, 변경할 수 없습니다.
③ 회원은 회사의 홈페이지에 공공질서 및 미풍양속에 위반되는 내용물이나 제3자의 저작권 등 기타권리를 침해하는 내용물을 등록하는 행위를 하지 않아야 합니다. 만약 이와 같은 내용물을 게재하였을 때 발생하는 결과에 대한 모든 책임은 회원에게 있습니다. 

제12조(게시물 관리 및 삭제) 
효율적인 서비스 운영을 위하여 회원의 메모리 공간, 메시지크기, 보관일수 등을 제한할 수 있으며 등록하는 내용이 다음 각 호에 해당하는 경우에는 사전 통지없이 삭제할 수 있습니다. 
1. 다른 회원 또는 제3자를 비방하거나 중상모략으로 명예를 손상시키는 내용인 경우
2. 공공질서 및 미풍양속에 위반되는 내용인 경우 
3. 범죄적 행위에 결부된다고 인정되는 내용인 경우 
4. 회사의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 내용인 경우 
5. 회원이 회사의 홈페이지와 게시판에 음란물을 게재하거나 음란 사이트를 링크하는 경우 
6. 기타 관계법령에 위반된다고 판단되는 경우 

제13조(게시물의 저작권) 
게시물의 저작권은 게시자 본인에게 있으며 회원은 서비스를 이용하여 얻은 정보를 가공, 판매하는 행위 등 서비스에 게재된 자료를 상업적으로 사용할 수 없습니다. 

제14조(서비스 이용시간) 
서비스의 이용은 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴 1일 24시간을 원칙으로 합니다. 다만 정기 점검 등의 사유 발생시는 그러하지 않습니다.

제15조(서비스 이용 책임) 
서비스를 이용하여 해킹, 음란사이트 링크, 상용S/W 불법배포 등의 행위를 하여서는 아니되며, 이를 위반으로 인해 발생한 영업활동의 결과 및 손실, 관계기관에 의한 법적 조치 등에 관하여는 회사는 책임을 지지 않습니다. 

제16조(서비스 제공의 중지) 
다음 각 호에 해당하는 경우에는 서비스 제공을 중지할 수 있습니다. 
1. 서비스용 설비의 보수 등 공사로 인한 부득이한 경우 
2. 전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지했을 경우 
3. 시스템 점검이 필요한 경우
4. 기타 불가항력적 사유가 있는 경우


제5장 계약해지 및 이용제한

제17조(계약해지 및 이용제한)
① 회원이 이용계약을 해지하고자 하는 때에는 회원 본인이 인터넷을 통하여 해지신청을 하여야 하며, 회사에서는 본인 여부를 확인 후 조치합니다.
② 회사는 회원이 다음 각 호에 해당하는 행위를 하였을 경우 해지조치 30일전까지 그 뜻을 이용고객에게 통지하여 의견진술할 기회를 주어야 합니다.
1. 타인의 이용자ID 및 패스워드를 도용한 경우 
2. 서비스 운영을 고의로 방해한 경우 
3. 허위로 가입 신청을 한 경우
4. 같은 사용자가 다른 ID로 이중 등록을 한 경우 
5. 공공질서 및 미풍양속에 저해되는 내용을 유포시킨 경우 
6. 타인의 명예를 손상시키거나 불이익을 주는 행위를 한 경우 
7. 서비스의 안정적 운영을 방해할 목적으로 다량의 정보를 전송하거나 광고성 정보를 전송하는 경우 
8. 정보통신설비의 오작동이나 정보 등의 파괴를 유발시키는 컴퓨터바이러스 프로그램 등을 유포하는 경우 
9. 회사 또는 다른 회원이나 제3자의 지적재산권을 침해하는 경우 
10. 타인의 개인정보, 이용자ID 및 패스워드를 부정하게 사용하는 경우 
11. 회원이 자신의 홈페이지나 게시판 등에 음란물을 게재하거나 음란 사이트를 링크하는 경우 
12. 기타 관련법령에 위반된다고 판단되는 경우


제6장 기 타

제18조(양도금지) 
회원은 서비스의 이용권한, 기타 이용계약상의 지위를 타인에게 양도, 증여할 수 없으며, 이를 담보로 제공할 수 없습니다.

제19조(손해배상) 
회사는 무료로 제공되는 서비스와 관련하여 회원에게 어떠한 손해가 발생하더라도 동 손해가 회사의 고의 또는 중대한 과실로 인한 손해를 제외하고 이에 대하여 책임을 부담하지 아니합니다.

제20조(면책 조항)
① 회사는 천재지변, 전쟁 또는 기타 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.
② 회사는 서비스용 설비의 보수, 교체, 정기점검, 공사 등 부득이한 사유로 발생한 손해에 대한 책임이 면제됩니다.
③ 회사는 회원의 귀책사유로 인한 서비스이용의 장애에 대하여 책임을 지지 않습니다.
④ 회사는 회원이 서비스를 이용하여 기대하는 이익이나 서비스를 통하여 얻는 자료로 인한 손해에 관하여 책임을 지지 않습니다.
⑤ 회사는 회원이 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는 책임을 지지 않습니다.

제21조(관할법원) 
서비스 이용으로 발생한 분쟁에 대해 소송이 제기 될 경우 회사의 소재지를 관할하는 법원을 전속 관할법원으로 합니다. 

부 칙 
(시행일) 이 약관은 2016년 11월 11일부터 시행합니다.                                                           </textarea>
					<fieldset class="fregister_agree">
						<label for="agree11">회원가입약관의 내용에 동의합니다.</label> <input
							type="checkbox" name="agree" value="1" id="agree11">
					</fieldset>
					</section>

					<section id="fregister_private">
					<h2 style="margin: 0 0 20px; text-align: center">개인정보처리방침안내</h2>
					<textarea readonly>'CGS'는 (이하 '회사'는)
고객님의 개인정보를 중요시하며, &#034;정보통신망 이용촉진 및 정보보호&#034;에 관한 법률을 준수하고 있습니다.

회사는 개인정보취급방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.


회사는 개인정보취급방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.

■ 수집하는 개인정보 항목

회사는 회원가입, 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다.


ο 수집항목 : 이름 , 생년월일 , 성별 , 로그인ID , 비밀번호 , 비밀번호 질문과 답변 , 이메일 , 서비스 이용기록 , 접속 로그 , 쿠키 , 접속 IP 정보 , 결제기록
ο 개인정보 수집방법 : 홈페이지(회원가입,게시판) 

■ 개인정보의 수집 및 이용목적

회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다..

 ο 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산
콘텐츠 제공
 ο 회원 관리
회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 불량회원의 부정 이용 방지와 비인가 사용 방지 , 가입 의사 확인 , 연령확인 , 만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인
 ο 마케팅 및 광고에 활용
접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계

■ 개인정보의 보유 및 이용기간

원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 아래와 같이 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.


 보존 항목 : 로그인ID , 결제기록
 보존 근거 : 신용정보의 이용 및 보호에 관한 법률
 보존 기간 : 3년

표시/광고에 관한 기록 : 6개월 (전자상거래등에서의 소비자보호에 관한 법률)
계약 또는 청약철회 등에 관한 기록 : 5년 (전자상거래등에서의 소비자보호에 관한 법률)
대금결제 및 재화 등의 공급에 관한 기록 : 5년 (전자상거래등에서의 소비자보호에 관한 법률)
소비자의 불만 또는 분쟁처리에 관한 기록 : 3년 (전자상거래등에서의 소비자보호에 관한 법률)
신용정보의 수집/처리 및 이용 등에 관한 기록 : 3년 (신용정보의 이용 및 보호에 관한 법률)</textarea>
					<fieldset class="fregister_agree">
						<label for="agree21">개인정보처리방침안내의 내용에 동의합니다.</label> <input
							type="checkbox" name="agree2" value="1" id="agree21">
					</fieldset>
					</section>
				</div>
				<div class="btn_confirm" style="border: none; position: static; width: auto; text-align: center; margin-top: 10px">
					<input type="submit" class="btn btn-white" value="회원가입">
				</div>

			</form>
		</div>

		<script>
			function fregister_submit(f) {
				if (!f.agree.checked) {
					alert("회원가입약관의 내용에 동의하셔야 회원가입 하실 수 있습니다.");
					f.agree.focus();
					return false;
				}

				if (!f.agree2.checked) {
					alert("개인정보처리방침안내의 내용에 동의하셔야 회원가입 하실 수 있습니다.");
					f.agree2.focus();
					return false;
				}

				return true;
			}
		</script>
	</div>
	<!-- } 회원가입 약관 동의 끝 -->

	<div class="clearfix"></div>
	</section>


	<!-- Main content -->
	<!-- 	<form id="login-form" class="login" method='post' action="signupProcess"> -->
	<!-- 		<p class="login__title"> -->
	<!-- 			회원가입 -->
	<!-- 		</p> -->



	<!-- 	<div class="container"> -->
	<!-- 				<table width="150" border="0" > -->

	<!-- 				<tr> -->
	<!-- 				<td><center><p>아이디</p></center></td> -->
	<!-- 				<td colspan="2"><p><input type='text' placeholder='아이디를 입력해주세요' name='user-id' class="login__input" required></p></td> -->
	<!-- 				</tr> -->

	<!-- 				<tr> -->
	<!-- 				<td><center><p>비밀번호</p></center></td> -->
	<!-- 				<td colspan="2"><p><input type='password' pattern="^[0-9a-zA-Z]{4,20}" title="영어 또는 숫자로 4자리 이상으로 입력하세요." placeholder='비밀번호를 입력해주세요' name='user-password' class="login__input" required></p></td> -->
	<!-- 				</tr> -->

	<!-- 				<tr> -->
	<!-- 				<td><center><p>비밀번호 확인</p></center></td> -->
	<!-- 				<td colspan="2"><p><input type='password' pattern="^[0-9a-zA-Z]{4,20}" title="영어 또는 숫자로 4자리 이상으로 입력하세요." placeholder='한번 더 입력해주세요' name='user-passwordok' class="login__input" required></p></td> -->
	<!-- 				</tr> -->

	<!-- 				<tr> -->
	<!-- 				<td><center><p>이름</p></center></td> -->
	<!-- 				<td colspan="2"><p><input type='text' placeholder='이름을 입력해주세요' name='user-name' class="login__input" required></p></td> -->
	<!-- 				</tr> -->

	<!-- 				<tr> -->
	<!-- 				<td><center><p>생년월일</p></center></td> -->
	<!-- 				<td><p><input type='text' pattern="^\d{6}" title="공백없이 6자리 모두 입력해주세요" placeholder="ex)931202" name='user-birth' class="login__input" maxlength="6" required></p></td> -->
	<!-- 				<td width="20"> <center><p>-</p></center></td> -->


	<!-- 				<td><p><input type='text' pattern="[1234]" title="올바른 숫자를 입력해주세요" placeholder="ex)1" name='gender' class="login__input" maxlength="1" required></p></td> -->
	<!-- 				<td></td> -->
	<!-- 				<td><p>* * * * * *</p></td> -->
	<!-- 				</tr> -->


	<!-- 				<tr> -->
	<!--  <th scope="row"><label for="reg_mb_hp">휴대폰번호<strong class="sound_only">필수</strong></label></th> -->
	<!-- 				<td><p><input type='text' pattern="^\d{3}" title="3자리 모두 입력해주세요" placeholder="ex)010"name='user-pnum' class="form-control required" maxlength="3" required></p></td> -->
	<!-- 				<td width="20"> <center><p>-</p></center> </td> -->
	<!-- 				<td><p><input type='text' pattern="^\d{4}" title="4자리 모두 입력해주세요" placeholder="ex)8071" name='user-pnum2' class="form-control required" maxlength="4" required></p></td> -->
	<!-- 				<td width="20"> <center><p>-</p></center>  </td> -->
	<!-- 				<td><p><input type='text' pattern="^\d{4}" title="4자리 모두 입력해주세요" placeholder="ex)6072"name='user-pnum3' class="form-control required" maxlength="4" required></p></td> -->
	<!-- 				</tr> -->

	<!-- 				<tr> -->
	<!-- 				<td><center><p>이메일</p></center></td> -->
	<!-- 				<td colspan="3"><p><input type='email' title="이메일 타입으로 입력해주세요" placeholder="ex)inha@naver.com" name='user-email' class="login__input" required></p></td> -->
	<!-- 				</tr> -->

	<!-- 				<tr> -->
	<!-- 				<td><center><p>주소</p></center></td> -->
	<!-- 				<td colspan="3"><p><input type='text' name='user-address' placeholder="ex)인천광역시 남구 인하로 100"class="login__input" required></p></td> -->
	<!-- 				</tr> -->


	<!-- 				</table> -->
	<!-- 				<br><br><br> -->
	<!-- </div> -->
	<!-- 			<div class="login__control"> -->
	<!-- 				<button type='submit' class="btn btn-md btn--warning btn--wider">Sign Up</button>&nbsp&nbsp -->
	<!-- 				<a href='index'><button type="button" class="btn btn-md btn--warning btn--wider">Cancle</button></a> -->
	<!-- 			</div> -->
	<!-- 	</form> -->



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
</body>
</html>
