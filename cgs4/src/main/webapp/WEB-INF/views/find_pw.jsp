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
<title>CGS - Find Password</title>
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

</head>

<body>


	<!-- Header section -->
	<jsp:include page="menu.jsp" flush="false" />


	<!-- Main content -->
	<form id="login-form" class="login" method='post' action="findPWProcess"> 
<!-- 일단 form, action부분 냅둠 -->

		<p class="login__title">
			비밀번호 찾기 <br><span class="login-edition">-Find Password-</span>
		</p>

	
		
	<div class="container">
				<table width="150" border="0" >
				
				<tr>
				<td><center><p>아이디</p></center></td>
				<td colspan="2"><p><input type='text' placeholder='아이디를 입력해주세요' name='user-id' class="login__input" required></p></td>
				</tr>
				
				
				<tr>
				<td><center><p>이름</p></center></td>
				<td colspan="2"><p><input type='text' placeholder='이름을 입력해주세요' name='user-name' class="login__input" required></p></td>
				</tr>
				
				
				<tr>
				<td><center><p>핸드폰번호</p></center>
				<td><p><input type='text' pattern="^\d{3}" title="3자리 모두 입력해주세요" placeholder="ex)010"name='user-pnum' class="login__input" maxlength="3" required></p></td>
				<td width="20"> <center><p>-</p></center> </td>
				<td><p><input type='text' pattern="^\d{4}" title="4자리 모두 입력해주세요" placeholder="ex)1234" name='user-pnum2' class="login__input" maxlength="4" required></p></td>
				<td width="20"> <center><p>-</p></center>  </td>
				<td><p><input type='text' pattern="^\d{4}" title="4자리 모두 입력해주세요" placeholder="ex)5678"name='user-pnum3' class="login__input" maxlength="4" required></p></td>
				</tr>
				
				<tr>
				<td><center><p>이메일</p></center></td>
				<td colspan="3"><p><input type='email' title="이메일 타입으로 입력해주세요" placeholder="ex)inha@naver.com" name='user-email' class="login__input" required></p></td>
				</tr>
				
				
				</table>
				<br><br><br>
</div>
			<div class="login__control">
				<button type='submit' class="btn btn-md btn--warning btn--wider">확인</button>&nbsp&nbsp
				<a href='index'><button type="button" class="btn btn-md btn--warning btn--wider">취소</button></a>




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
