<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="../common/header.jsp" %>

<script>
$(function(){
	$("#btnAdd").click(function(){
		location.href="/goods/product/write.do";
	});
});
</script>
	<br>
	<h2>Goods List</h2>
	<br>
	<table border="1" width="500px">
	<tr>
		<th>상품ID</th>
		<th>이미지</th>
		<th>상품명</th>
		<th>가격</th>
	</tr>
<c:forEach var="row" items="${list}">
	<tr>
		<td>${row.product_code}</td>
		<td><img src="/images/${row.filename}" width="100px" height="100px"></td>
		<td><a href="/goods/product/detail/${row.product_code}">${row.product_name}</a>
	<c:if test="${sessionScope.adminid != null}">
			<br>
			<a href="/goods/product/edit/${row.product_code}">[편집]</a>
	</c:if>
		</td>
		<td><fmt:formatNumber value="${row.price}" pattern="#,###"/></td>
	</tr>
</c:forEach>
	</table>
<!-- 세션 확인 -->
<c:if test="${sessionScope.adminid != null}">
	<br><button type="button" id="btnAdd">상품등록</button>
</c:if>

<%@ include file="../common/footer.jsp" %>