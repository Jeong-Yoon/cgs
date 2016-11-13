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
<script>
function pwGo(){
	 var answer = confirm("비밀번호 변경페이지로 가시겠습니까?");
	   if (answer){
	      location.href = "modify_pw";
	   }
	   else{
		   //
	   }
}
</script>

</head>
<style>
table {
    width: 60%;
    margin-left: 25%;
    margin-top : 5%;
}
</style>

<body>

<!-- Header section -->
	<jsp:include page="menu.jsp" flush="false" />


	<!-- Main content -->
	<form id="login-form" class="login" method="get" action="modifyProcess">
		<p class="login__title">
			Modify member Info<br> <span class="login-edition">회원 정보 수정</span>
		</p>

	
		
	<div class="container">
				<table >
				
				<tr>
				<td width="120"><center><p>아이디</p></center></td>
				<td width="160"><p><input type='text' name='user-id' class="login__input" value="<%=session.getAttribute("id") %>" disabled></p></td>
				</tr>
				
				<tr>
				<td><center><p>비밀번호</p></center></td>
				<td ><p><button style="width:163px; margin:7px;" type='button' class="btn btn-md btn--warning" onclick="pwGo()">비밀번호 변경</button></p></td>
				<td></td>
				<td></td>
				<td></td>

				</tr>
				
				<tr>
				<td><center><p>이름</p></center></td>
				<td><p><input type='text' name='user-name' class="login__input" value="<%=session.getAttribute("name") %>" disabled></p></td>
				</tr>
				
				<tr>
				<td><center><p>생년월일</p></center></td>
				<td><p><input type='text' name='user-birth' class="login__input" value="<%=session.getAttribute("showJumin") %>" disabled></p></td>
				<td width="20"><center><p>-</p></center></td>

			
				<td width ="50"><p><input type='text' name='gender' class="login__input" value="<%=session.getAttribute("gender") %>" disabled></p></td>
				<td></td>
				<td><p>* * * * * *</p></td>
				</tr>
				
				<tr>
				<td><center><p>핸드폰번호</p></center>
				<td><p><input type='text' name='user-pnum' pattern="^\d{11}" title="핸드폰번호 11자리를 정확히 입력하세요" placeholder="ex)01080716072" maxlength="11" class="login__input" value="<%=session.getAttribute("phone_num") %>" required></p></td>
				<td></td>
				<td></td>
				<td></td>
		
		
				<td><p><button type='submit' class="btn btn-md btn--warning" >핸드폰 번호 변경</button></p></td>
				</tr>
				
				<tr>
				<td><center><p>이메일</p></center></td>
				<td colspan="3"><p><input type='email' title="이메일 타입으로 입력해주세요" placeholder="ex)inha@naver.com" name='user-email' class="login__input" value="<%=session.getAttribute("email") %>" required></p></td>
				<td>　</td>
				<td><p><button type='submit' class="btn btn-md btn--warning">이메일 변경</button></p></td>
				</tr>
				
				<tr>
				<td><center><p>주소</p></center></td>
				<td colspan="3"><p><input type='text' name='user-address' placeholder="ex)인천광역시 남구 인하로 100" class="login__input" value="<%=session.getAttribute("address") %>" required></p></td>
				<td></td>
				<td><p><button type='submit' class="btn btn-md btn--warning">주소 변경</button></p></td>
				</tr>		
				</table>
				<br><br><br>
</div>
			<div class="login__control">
				<a href='index'><button type="button" class="btn btn-md btn--warning btn--wider">Cancle</button></a>




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
