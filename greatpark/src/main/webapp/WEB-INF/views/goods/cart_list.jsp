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
	$("#testBtn").click(function(e){
		e.preventDefault();
		$("#testModal").modal("show");
	});
	$(".close").click(function(){
		$("#testModal").modal("hide");
	});
	
	$("#testModal").modal({backdrop:"static",keyboard:false});
});
</script>
	<br>
	<h2 class="text-center">장바구니</h2>
<c:choose>
	<c:when test="${map.count == 0}">
		장바구니가 비었습니다.
	</c:when>
	<c:otherwise>
		<form id="form1" name="form1" method="post" action="/goods/cart/update.do">
		<table border="1" width="400px" class="table table-hover">
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
			<td align="right">
				<a href="/goods/cart/delete.do?cart_id=${row.cart_id}" class="btn btn-outline-danger btn-sm">삭제</a>
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
		<button id="btnUpdate" class="btn btn-outline-success">수정</button>
		<button type="button" id="btnDelete" class="btn btn-outline-primary">장바구니 비우기</button>
		<button id="btnList" class="btn btn-outline-info">상품목록 확인</button>
		</form>
	</c:otherwise>
</c:choose>

<br>
<button id="testBtn" class="btn btn-outline-success">구매결정</button>
  <!-- 회원가입 확인 Modal-->
<div class="modal fade" id="testModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">모달테스트</h5>
				<button class="close" type="button" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">X</span>
				</button>
			</div>
			<div class="modal-body">내용 입력 !!</div>
			<div class="modal-footer">
				<a class="btn" id="modalY" href="#">예</a>
				<button class="btn" type="button" data-dismiss="modal">아니요</button>
			</div>
		</div>
	</div>
</div>

<%@ include file="../common/footer.jsp" %>