<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../common/header.jsp" %> 
</head>
<body>
<h2>요금 체계</h2>
<table>
	<tr>
		<th>CODE</th>
		<th>연령</th>
		<th>요금</th>
		<th></th>
		<th></th>
	</tr>
<c:forEach var="row" items="${fare_list }">
	<tr>
		<td>${row.code }&nbsp;</td>
		<td>${row.cont }&nbsp;</td>
		<td>${row.fare }&nbsp;</td>
		<td><button type="button" onclick="location.href='/fare/detail.do?code=${row.code}'">수정</button></td>
		<td><button type="button" onclick="location.href='/fare/delete.do?code=${row.code}'">삭제</button></td>
	</tr>
</c:forEach>
</table>
<button type="button" onclick="location.href='/fare/write.do'">추가</button>

<br><br>
<h2>주차장</h2>
<table>
	<tr>
		<th>CODE</th>
		<th>주차장소</th>
		<th>요금</th>
		<th></th>
		<th></th>
	</tr>
<c:forEach var="row" items="${parking_list }">
	<tr>
		<td>${row.code }&nbsp;</td>
		<td>${row.cont }&nbsp;</td>
		<td>${row.fare }&nbsp;</td>
		<td><button type="button" onclick="location.href='/parking/detail.do?code=${row.code}'">수정</button></td>
		<td><button type="button" onclick="location.href='/parking/delete.do?code=${row.code}'">삭제</button></td>
	</tr>
</c:forEach>
</table>
<button type="button" onclick="location.href='/parking/write.do'">추가</button>
<%@ include file="../common/footer.jsp" %> 
</body>
</html>