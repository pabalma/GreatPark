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
<h2 class="mx-5 my-3">요금 체계</h2>
<div class="mx-5 my-3">
	<table class="table table-hover">
		<tr style="text-align:center;" class="table-success">
			<th>CODE</th>
			<th>연령</th>
			<th>요금</th>
			<th></th>
			<th></th>
		</tr>
	<c:forEach var="row" items="${fare_list }">
		<tr style="text-align:center;">
			<td>${row.code }</td>
			<td>${row.cont }</td>
			<td>${row.fare }</td>
			<td><button type="button" class="btn btn-primary" onclick="location.href='/fare/detail.do?code=${row.code}'">수정</button></td>
			<td><button type="button" class="btn btn-warning" onclick="location.href='/fare/delete.do?code=${row.code}'">삭제</button></td>
		</tr>
	</c:forEach>
	</table>
	<button type="button" class="btn btn-success" onclick="location.href='/fare/write.do'">추가</button>
</div>
<br><br>
<h2 class="mx-5 my-3">주차장</h2>
<div class="mx-5 my-3">
	<table class="table table-hover">
		<tr style="text-align:center;" class="table-success">
			<th>CODE</th>
			<th>주차장소</th>
			<th>요금</th>
			<th></th>
			<th></th>
		</tr>
	<c:forEach var="row" items="${parking_list }">
		<tr style="text-align:center;">
			<td>${row.code }</td>
			<td>${row.cont }</td>
			<td>${row.fare }</td>
			<td><button type="button" class="btn btn-primary" onclick="location.href='/parking/detail.do?code=${row.code}'">수정</button></td>
			<td><button type="button" class="btn btn-warning" onclick="location.href='/parking/delete.do?code=${row.code}'">삭제</button></td>
		</tr>
	</c:forEach>
	</table>
	<button type="button" class="btn btn-success" onclick="location.href='/parking/write.do'">추가</button>
</div>
<%@ include file="../common/footer.jsp" %> 
</body>
</html>