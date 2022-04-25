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
<h2>요금 체계 수정</h2>
<form method="post" action="/fare/update.do">
	CODE <input name="code" value="${dto.code }" readonly><br>
	연령 <input name="cont" value="${dto.cont }"><br>
	요금 <input name="fare" value="${dto.fare }"><br>
	<button type="submit">수정</button>
</form>
<%@ include file="../common/footer.jsp" %>
</body>
</html>