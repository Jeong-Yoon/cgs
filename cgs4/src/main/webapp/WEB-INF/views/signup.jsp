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


	<!-- Header section -->
	<jsp:include page="menu.jsp" flush="false" />


	<!-- Main content -->
	<form id="login-form" class="login" method='post' action="signupProcess">
		<p class="login__title">
			sign in <br> <span class="login-edition">welcome to CGS</span>
		</p>

	
		
	<div class="container">
				<table width="150" border="0" >
				
				<tr>
				<td width="80"><center><p>아이디</p></center></td>
				<td width="150"><input type='text' placeholder='아이디를 입력해주세요' name='user-id'
				class="login__input"></td>
				<td></td>
				<td width="90"><button type='submit' class="btn btn-md btn--warning btn--wider">중복확인</button></td>
				</tr>
				
				
				<tr>
				<td><center><p>비밀번호</p></center></td><td><input type='password'
				placeholder='비밀번호를 입력해주세요.' name='user-password' class="login__input"></td>
				<td></td>
				<td><center><p>비밀번호확인</p></center></td>
				<td></td>
				<td width="150"><input type='password' placeholder='비밀번호를 한번 더 입력해주세요.' name='user-passwordok' class="login__input"></td>
				</tr>
				
				<tr>
				<td><center><p>이름</p></center></td><td><input type='text' placeholder='이름을 입력해주세요' name='user-name' class="login__input"></td>
				</tr>
				
				<tr>
				<td><center><p>생년월일</p></center></td><td><input type='text' name='user-birthYear' class="login__input"></td>
				<td width="20"><center>년</center></td>
				<td><input type='text' name='user-birthMonth' class="login__input"></td>
				<td width="20"><center>월</center></td>
				<td><input type='text' name='user-birthDay' class="login__input"></td>
				<td width="20"><center>일</center></td>
				</tr>
				
				
				<tr>
				<td><center><p>핸드폰번호</p></center><td><input type='text' name='user-pnum' class="login__input"></td>
				<td><center>-</center></td>
				<td><input type='text' name='user-pnum2' class="login__input"></td>
				<td><center>-</center></td>
				<td><input type='text' name='user-pnum3' class="login__input"></td>
				</tr>
				
				<tr>
				<td><center><p>이메일</p></center></td>
				<td colspan="3"><input type='text' name='user-email' class="login__input"></td>
				</tr>
				
				<tr>
				<td><center><p>주소</p></center></td>
				<td colspan="3"><input type='text' name='user-address' class="login__input"></td>
				</tr>
				
				
				</table>
				<br><br><br>
</div>
			<div class="login__control">
				<button type='submit' class="btn btn-md btn--warning btn--wider">Sign Up</button>&nbsp&nbsp
				<a href='index'><button type="reset" class="btn btn-md btn--warning btn--wider">Cancle</button></a>




			</div>

	</form>

	<div class="clearfix"></div>




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
