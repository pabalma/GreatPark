<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="../common/header.jsp" %>

<script>
$(function(){
	$("#btnList").click(function(){
		location.href="/goods/product/list.do";
	});
	$("#btnDelete").click(function(){
		if(confirm("장바구니를 비우시겠습니까?")) {
			location.href="/goods/cart/deleteAll.do";
		}
	});
});
</script>

	<h2>장바구니</h2>
<c:choose>
	<c:when test="${map.count == 0}">
		장바구니가 비었습니다.
	</c:when>
	<c:otherwise>
		<form id="form1" name="form1" method="post" action="/goods/cart/update.do">
		<table border="1" width="400px">
		<tr>
			<th>상품명</th>
			<th>단가</th>
			<th>수량</th>
			<th>금액</th>
			<th>&nbsp;</th>
		</tr>
		<c:forEach var="row" items="${map.list}">
		<tr>
			<td>${row.product_name}</td>
			<td>${row.price}</td>
			<td>
				<input type="number" style="width:30px;" min="0" 
					max="100" name="amount" value="${row.amount}">
				<input type="hidden" name="cart_id" value="${row.cart_id}">
			</td>
			<td>${row.money}</td>
			<td>
				<a href="/goods/cart/delete.do?cart_id=${row.cart_id}">삭제</a>
			</td>
		</tr>
		</c:forEach>
		<tr>
			<td colspan="5" align="center">
				장바구니 금액 합계
				<fmt:formatNumber value="${map.sumMoney}" pattern="#,###,###" /><br>
				배송료: ${map.fee}<br>
				총합계: <fmt:formatNumber value="${map.sum}" pattern="#,###,###" />
			</td>
		</table>
		<button id="btnUpdate">수정</button>
		<button type="button" id="btnDelete">장바구니 비우기</button>
		</form>
	</c:otherwise>
</c:choose>
<button type="button" id="btnList">상품목록</button>

<%@ include file="../common/footer.jsp" %>