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
			if(confirm("예약을 취소하시겠습니까?")){
				location.href="/reservation/delete_all.do";
			}
		});
	});
</script>
</head>
<body>
<h2 class="mx-5 my-3">내 예약</h2>
<div class="mx-5 my-3">
	<table class="table table-hover">
		<tr style="text-align:center;" class="table-success">
			<th>번호</th>
			<th>예약자ID</th>
			<th>요금형태</th>
			<th>요금</th>
			<th>티켓 수</th>
			<th>주차장소</th>
			<th>주차요금</th>
			<th>전체요금</th>
			<th>예약날짜</th>
			<th>등록시간</th>
			<th><button type="button" class="btn btn-danger" id="btnDelete_all">전체 취소</button></th>
		</tr>
		<c:forEach var="row" items="${list }" varStatus="status">
		<input type="hidden" id="idx" name="idx" value="${row.idx }">
		<tr style="text-align:center;" class="table-borderless">
			<td>${status.count }</td>
			<td>${row.userid }</td>
			<td>${row.f_cont }</td>
			<td>${row.f_fare }</td>
			<td>${row.amount }</td>
			<td>${row.p_area }</td>
			<td>${row.p_fare }</td>
			<td>${row.total_fare }</td>
			<td><fmt:formatDate value="${row.booking_date }" pattern="yyyy-MM-dd (E)" /></td>
			<td><fmt:formatDate value="${row.reg_date }" pattern="yyyy-MM-dd (E) HH:mm:ss" /></td>
			<td><button type="button" class="btn btn-warning" id="btnDelete" onclick="location.href='/reservation/delete.do?idx=${row.idx}'">예약 취소</button></td>
		</tr>
		</c:forEach>
	</table>
	<button type="button" class="btn btn-success" onclick="location.href='/reservation/write.do'">예약하기</button>
</div>
<%@ include file="../common/footer.jsp" %>
</body>
</html>