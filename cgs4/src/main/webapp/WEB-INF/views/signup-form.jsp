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
/* CUSTOM FONTS */
.actions .action, .compact-menu .main-d-nav ul li a, .view-item-btn,
	.prjct-hvr-title h2, body .module .heading, .blog-action-title,
	.blog-search-box, .comments-count, .comment-reply-link, .footer .social-area ul li a,
	.wsf-heading, .table-end {
	font-family: 'Lato', sans-serif;
}

.text-hero-title, .text-hero-subtitle {
	font-family: 'Lato';
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
	font-family: 'LotteMartDream', sans serif;
	font-size: 14px;
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
	#galleria .galleria-info-description, #galleria .gal-close-,
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
	background-color: #FFEF96;
}

.comment-list .odd, .mb_YTPLoaded, .pagination, .video-embedded .vem-overlay:hover .vem-play,
	.mejs-overlay:hover .mejs-overlay-button, .mejs-controls .mejs-time-rail .mejs-time-loaded
	{
	background-color: rgb(254, 255, 234);
}

.rating-word {
	color: #FFEF96;
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

	<!-- main contents -->
	<section id="content-wrapper">
	<div class="woo-cheader">
		<a href="login" title="Login / Register">Login</a> / <a href="signup">Register</a>
		<nav class="woocommerce-breadcrumb" itemprop="breadcrumb"> <a
			href="index">Register Step2</a></nav>
	</div>

	<div class="mbskin">
		<div class="content-module post-wrapper clearfix">
			<div class="the-post">
				<div class="woocommerce">
					<div class="lobo-tabs clearfix">
						<div class="contents">
							<!--         <script src="http://airing.kr/js/jquery.register_form.js"></script> -->

							<form id="login-form" action="signupProcess" method="post"
								autocomplete="off">
								<table>
									<caption></caption>
									<tr>
										<th scope="row"><label for="reg_mb_id">아이디<strong
												class="sound_only">필수</strong></label></th>
										<td><span class="frm_info">영문자, 숫자만 입력 가능. 최소 3자이상
												입력하세요.</span> <input type="text" name="user-id" value=""
											id="reg_mb_id" pattern="^[0-9a-zA-Z]{3,20}"
											title="영어 또는 숫자로 3자리 이상으로 입력하세요."
											placeholder='영어 또는 숫자로 3자리 이상으로 입력하세요.'
											class="form-control required " minlength="3" maxlength="20"
											required> <span id="msg_mb_id"></span></td>
									</tr>
									<tr>
										<th scope="row"><label for="reg_mb_password">비밀번호<strong
												class="sound_only">필수</strong></label></th>
										<td><input type="password" pattern="^[0-9a-zA-Z]{4,20}"
											title="영어 또는 숫자로 4자리 이상으로 입력하세요." placeholder='비밀번호를 입력해주세요'
											name="user_password" id="reg_mb_password"
											class="form-control required" minlength="3" maxlength="20"
											required></td>
									</tr>
									<tr>
										<th scope="row"><label for="reg_mb_password_re">비밀번호
												확인<strong class="sound_only">필수</strong>
										</label></th>
										<td><input type="password" pattern="^[0-9a-zA-Z]{4,20}"
											title="영어 또는 숫자로 4자리 이상으로 입력하세요."
											placeholder='비밀번호를 다시 입력해주세요' name="user_password_re"
											id="reg_mb_password_re" class="form-control required"
											minlength="3" maxlength="20" required></td>
									</tr>
								</table>
						</div>
						<div class="contents">
							<!-- 						<div class="tbl_frm01 tbl_wrap"> -->
							<table>
								<caption>개인정보 입력</caption>
								<tr>
									<th scope="row"><label for="reg_mb_name">이름<strong
											class="sound_only">필수</strong></label></th>
									<td><input type="text" placeholder='이름을 입력해주세요'
										id="reg_user_name" name="user_name" value="" required
										class="form-control required"></td>
								</tr>

								<tr>
									<th scope="row"><label for="reg_mb_name">생년월일<strong
											class="sound_only">필수</strong></label></th>
									<td><span>
											<input type='date' 
											name='user-birth' class="form-control required"
											style="width: 40% display: inline-block; " maxlength="6" required>-<input
											type='text' pattern="[1234]" title="올바른 숫자를 입력해주세요"
											placeholder="ex)1" name='gender'
											class="form-control required" style="display: inline-block;" maxlength="1" style="width: 5%"
											required>
									</span> <span style="display: inline-block;">* * * * * *</span></td>
								</tr>


								<tr>
									<th scope="row"><label for="reg_mb_email">E-mail<strong
											class="sound_only">필수</strong></label></th>
									<td><input type="email" name="user-email"
										title="이메일 타입으로 입력해주세요" placeholder="ex)inha@naver.com"
										id="reg_mb_email" required class="form-control email required"
										size="50" maxlength="100"></td>
								</tr>



								<tr>
									<th scope="row"><label for="reg_mb_hp">휴대폰번호<strong
											class="sound_only">필수</strong></label></th>
									<td><span> <input type='text' pattern="^\d{3}"
											title="3자리 모두 입력해주세요" placeholder="ex)010" name='user-pnum'
											class="form-control required" maxlength="3"
											style="width: 25%" required>- <input type='text'
											pattern="^\d{4}" title="4자리 모두 입력해주세요" placeholder="ex)8071"
											name='user-pnum2' class="form-control required" maxlength="4"
											style="width: 25%" required> - <input type='text'
											pattern="^\d{4}" title="4자리 모두 입력해주세요" placeholder="ex)6072"
											name='user-pnum3' class="form-control required" maxlength="4"
											style="width: 25%" required>
									</span>
								</tr>

								<tr>
									<th scope="row"><label for="reg_mb_zip">주소<strong
											class="sound_only">필수</strong></label></th>
									<td class="address_label">
										<div class="form-group">
											<label for="reg_mb_zip" class="sound_only">우편번호<strong
												class="sound_only"> 필수</strong></label>
											<div class="input-group">
												<input name="user-address1" class="form-control required"
													id="ozipcode1" size="6" maxlength="6" readonly="1"
													type="text"> <span class="input-group-btn">
													<button type="button" class="btn btn-white"
														style="margin-top: 0px; height: 35px; line-height: 35px; box-shadow: 0 1px 0 rgba(255, 255, 255, 0.15) inset, 0 1px 1px rgba(0, 0, 0, 0.075); border-radius: 5px; font-family:'Spoqa Han Sans', sans-serif;"
														onclick="execDaumPostcode()" alt="우편번호">주소 검색</button>
												</span>
											</div>

											<label for="reg_mb_addr1">기본주소<strong
												class="sound_only"> 필수</strong></label> <input name="user-address2"
												class="form-control required" id="oaddr1" size="50"
												readonly="1" type="text"> <label for="reg_mb_addr2">상세주소</label>
											<input type="text" name="user-address3" value="" id="oaddr2"
												class="form-control frm_address" size="50">
										</div>
									</td>
								</tr>
							</table>
						</div>

						<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
						<script>
							function execDaumPostcode() { //execDaumPostcode() 함수 호출
								new daum.Postcode(
										{
											oncomplete : function(data) {
												// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

												// 각 주소의 노출 규칙에 따라 주소를 조합한다.
												// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
												var fullAddr = ''; // 최종 주소 변수
												var extraAddr = ''; // 조합형 주소 변수

												// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
												if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
													fullAddr = data.roadAddress;

												} else { // 사용자가 지번 주소를 선택했을 경우(J)
													fullAddr = data.jibunAddress;
												}

												// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
												if (data.userSelectedType === 'R') {
													//법정동명이 있을 경우 추가한다.
													if (data.bname !== '') {
														extraAddr += data.bname;
													}
													// 건물명이 있을 경우 추가한다.
													if (data.buildingName !== '') {
														extraAddr += (extraAddr !== '' ? ', '
																+ data.buildingName
																: data.buildingName);
													}
													// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
													fullAddr += (extraAddr !== '' ? ' ('
															+ extraAddr + ')'
															: '');
												}

												// 우편번호와 주소 정보를 해당 필드에 넣는다.
												document
														.getElementById('ozipcode1').value = data.zonecode; //5자리 새우편번호 사용
												document
														.getElementById('oaddr1').value = fullAddr;

												// 커서를 상세주소 필드로 이동한다.
												document.getElementById(
														'oaddr2').focus();
											}
										}).open();
							}
						</script>

						<div class="contents">
							<table class="table">
								<caption>기타 개인설정</caption>



								<tr>
									<th scope="row"><label for="reg_mb_mailling">메일링서비스</label></th>
									<td><input type="checkbox" name="mb_mailling" value="1"
										id="reg_mb_mailling" checked> 정보 메일을 받겠습니다.</td>
								</tr>

								<tr>
									<th scope="row"><label for="reg_mb_sms">SMS 수신여부</label></th>
									<td><input type="checkbox" name="mb_sms" value="1"
										id="reg_mb_sms" checked> 휴대폰 문자메세지를 받겠습니다.</td>
								</tr>

							</table>
						</div>

						<div class="btn_confirm" style="margin-letf: 30px">
							<input type="submit" value="회원가입" id="btn_submit"
								class="mbskin btn01" accesskey="s"> <a href="index"
								class="mbskin btn01"
								style="color: #fff; background-color: #992600; margin-top: 40px;"
								data-btn-txt-color="#fff" data-btn-bg-color="#44f3b8">취소</a>
						</div>
						</form>

						<script>
							$(function() {
								$("#reg_zip_find").css("display",
										"inline-block");

							});

							// submit 최종 폼체크
							function fregisterform_submit(f) {
								// 회원아이디 검사
								if (f.w.value == "") {
									var msg = reg_user_id_check();
									if (msg) {
										alert(msg);
										f.user_id.select();
										return false;
									}
								}

								if (f.w.value == '') {
									if (f.user_password.value.length < 3) {
										alert('비밀번호를 3글자 이상 입력하십시오.');
										f.user_password.focus();
										return false;
									}
								}

								if (f.user_password.value != f.user_password_re.value) {
									alert('비밀번호가 같지 않습니다.');
									f.user_password_re.focus();
									return false;
								}

								if (f.user_password.value.length > 0) {
									if (f.user_password_re.value.length < 3) {
										alert('비밀번호를 3글자 이상 입력하십시오.');
										f.user_password_re.focus();
										return false;
									}
								}

								// 이름 검사
								if (f.w.value == '') {
									if (f.user_name.value.length < 1) {
										alert('이름을 입력하십시오.');
										f.user_name.focus();
										return false;
									}
								}

								// E-mail 검사
								if ((f.w.value == "")
										|| (f.w.value == "u" && f.user_email.defaultValue != f.user_email.value)) {
									var msg = reg_user_email_check();
									if (msg) {
										alert(msg);
										f.reg_user_email.select();
										return false;
									}
								}
								// 휴대폰번호 체크
								var msg = reg_user_hp_check();
								if (msg) {
									alert(msg);
									f.reg_user_hp.select();
									return false;
								}

								if (!chk_captcha())
									return false;

								document.getElementById("btn_submit").disabled = "disabled";

								return true;
							}
						</script>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- } 회원정보 입력/수정 끝 -->
	<div class="clearfix"></div>
	</section>


	<!-- Main content -->




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

	<div class="clearfix"></div>


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
	<!-- 다음주소 -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</body>
</html>
