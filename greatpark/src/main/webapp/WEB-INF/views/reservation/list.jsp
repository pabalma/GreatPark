<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../common/header.jsp" %>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(function(){
		$("#btnDelete_all").click(function(){
			if(confirm("삭제하시겠습니까?")){
				location.href="/reservation/delete_all.do";
			}
		});
	});
</script>
</head>
<body>
<h2>내 예약</h2>
<button type="button" onclick="location.href='/reservation/write.do'">예약하기</button>
<table>
	<tr>
		<th>번호&nbsp;&nbsp;</th>
		<th>예약자ID&nbsp;&nbsp;</th>
		<th>요금형태&nbsp;&nbsp;</th>
		<th>요금&nbsp;&nbsp;</th>
		<th>티켓 수&nbsp;&nbsp;</th>
		<th>주차장소&nbsp;&nbsp;</th>
		<th>주차요금&nbsp;&nbsp;</th>
		<th>전체요금</th>
		<th>예약날짜&nbsp;&nbsp;</th>
		<th>등록시간&nbsp;&nbsp;</th>
		<th><button type="button" id="btnDelete_all">전체 삭제</button></th>
	</tr>
	<c:forEach var="row" items="${list }">
	<input type="hidden" id="idx" name="idx" value="${row.idx }">
	<tr>
		<td>${row.rn }</td>
		<td>${row.userid }</td>
		<td>${row.f_cont }</td>
		<td>${row.f_fare }</td>
		<td>${row.amount }</td>
		<td>${row.p_area }</td>
		<td>${row.p_fare }</td>
		<td>${row.total_fare }</td>
		<td><fmt:formatDate value="${row.booking_date }" pattern="yyyy-MM-dd (E)" /></td>
		<td><fmt:formatDate value="${row.reg_date }" pattern="yyyy-MM-dd (E) HH:mm:ss" /></td>
		<td><button type="button" id="btnDelete" onclick="location.href='/reservation/delete.do?idx=${row.idx}'">삭제</button></td>
	</tr>
	</c:forEach>
</table>
<%@ include file="../common/footer.jsp" %>
</body>
</html>