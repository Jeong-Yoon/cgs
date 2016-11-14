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
<title>CGS - Modify Password</title>
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
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,700'
	rel='stylesheet' type='text/css'>
<!-- Open Sans -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:800italic'
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
<style>
table {
    width: 60%;
    margin-top : 5%;
}
</style>
<body>

<!-- Header section -->
	<jsp:include page="menu.jsp" flush="false" />


	<!-- Main content -->
	<form id="login-form" class="login" method="get" action="modifyPassword">
		<p class="login__title">
			Modify Member's Password<br> <span class="login-edition">비밀번호 변경</span>
		</p>

	
		
	<div class="container">
				<center><table>
				<tr>
				<td width="80px"><center><p style="font: 16px 'LotteMartDream', sans-serif; letter-spacing: 0.1px; background-color:lemonchiffon; color: #666; font-weight:400">현재 비밀번호</p></center></td>
				<td class="col-xs-10"><p><input type='password' pattern="^[0-9a-zA-Z]{4,20}" title="영어 또는 숫자로 4자리 이상으로 입력하세요." placeholder='현재 비밀번호를 입력해주세요' name='password_Now' class="login__input col-xs-8" required></p></td>
				</tr>
				
				
				<tr> 
				<td width="80px"><center><p style="font: 16px 'LotteMartDream', sans-serif; letter-spacing: 0.1px; background-color:lemonchiffon; color: #666; font-weight:400">새 비밀번호</p></center></td>
				<td class="col-xs-10"><p><input type='password' pattern="^[0-9a-zA-Z]{4,20}" title="영어 또는 숫자로 4자리 이상으로 입력하세요." placeholder='변경할 비밀번호를 입력해주세요' name='password_ch' class="login__input col-xs-8" required></p></td>
				</tr>
				
				<tr>
				<td width="80px"><center><p style="font: 16px 'LotteMartDream', sans-serif; letter-spacing: 0.1px; background-color:lemonchiffon; color: #666; font-weight:400">새 비밀번호 확인</p></center></td>
				<td class="col-xs-10"><p><input type='password' pattern="^[0-9a-zA-Z]{4,20}" title="영어 또는 숫자로 4자리 이상으로 입력하세요." placeholder='비밀번호를 다시 입력해주세요' name='password_chOk' class="login__input col-xs-8" required></p></td>
				</tr>
				</table></center>
				<br><br><br>
</div>
			<div class="login__control">
			<button type='submit' class="btn btn-md btn--warning btn--wider">수정하기</button>&nbsp&nbsp
				<a href='modify'><button type="button" class="btn btn-md btn--warning btn--wider">취소하기</button></a>




			</div>

	</form>

	<div class="clearfix"></div>


<jsp:include page="footer.jsp"></jsp:include>

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










</body>
</html>
