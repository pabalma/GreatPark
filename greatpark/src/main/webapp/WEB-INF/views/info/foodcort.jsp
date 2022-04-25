<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../common/header.jsp" %>
<html>
<head>
<title>음식점 안내</title>
</head>
<body>

<div>
	<img width="1600px" height="700px" src="/images/map3.png">
</div>
<div>
	<img width="1600px" height="700px" src="/images/map4.png">
</div>
<br><br>
<table border="1" width="700px">
		<tr>
			<td>이름</td>
			<td>주메뉴</td>
			<td>장소</td>
			<td>매장번호</td>
		</tr>
	<c:forEach var="row" items="${foodcort }">
		<tr>
			<td>${row.name }</td>
			<td>${row.main }</td>
			<td>${row.site }</td>
			<td>${row.phone }</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>
<%@ include file="../common/footer.jsp" %>