<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
	String ctx = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
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
						<ul class="text-center list-inline">
							<li><a href="#"><i class="fa fa-facebook fa-lg"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter fa-lg"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus fa-lg"></i></a></li>
						</ul>
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
</body>
</html>