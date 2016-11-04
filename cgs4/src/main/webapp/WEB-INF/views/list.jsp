<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table width="500" cellpadding="0" cellspacing="0" border="1">
		<tr>
			<td>영화이름</td>
			<td>러닝타임</td>
			<td>개봉일</td>
			<td>감독</td>
			<td>장르</td>
			<td>예매율</td>
		</tr>
		<c:forEach items="${film_list}" var="dto">
		<tr>
			<td>${dto.film_name}</td>
			<td>${dto.film_type}</td>
			<td>${dto.release_date}</td>
			<td>${dto.director}</td>
			<td>${dto.genre}</td>
			<td>${dto.reserve_rate}</td>
		</tr>
		</c:forEach>
		<tr>
			<td colspan="5"> <a href="write_view">글작성</a> </td>
		</tr>
	</table>

</body>
</html>