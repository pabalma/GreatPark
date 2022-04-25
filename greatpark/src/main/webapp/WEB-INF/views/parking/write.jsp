<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../common/header.jsp" %> 
</head>
<body>
<h2>주차 장소 추가</h2>
<form method="post" action="/parking/insert.do">
	CODE <input name="code"><br>
	주차장소 <input name="cont"><br>
	요금 <input name="fare"><br>
	<button type="submit">추가</button>
</form>
<%@ include file="../common/footer.jsp" %>
</body>
</html>