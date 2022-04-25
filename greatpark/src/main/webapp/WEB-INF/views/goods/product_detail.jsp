<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../common/header.jsp" %>
	<br>
	<h2>상품 정보</h2>
	<table>
	<tr>
		<td>
			<img src="/images/${dto.filename}" width="300px" height="300px">
		</td>
		<td align="center">
			<table>
			<tr>
				<td>상품명</td>
				<td>${dto.product_name}</td>
			</tr>
			<tr>
				<td>가격</td>
				<td>${dto.price}</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>${dto.description}</td>
			</tr>
			<tr>
				<td colspan="2">
					<form name="form1" method="post" action="/goods/cart/insert.do">
						<input type="hidden" name="product_code" value="${dto.product_code}">
						<select name="amount">
 <c:forEach begin="1" end="10" var="i">
							<option value="${i}">${i}</option>
 </c:forEach>
						</select> &nbsp; 개
 <c:if test="${sessionScope.adminid == null}">
						<input type="submit" value="장바구니에 담기">
 </c:if> 
					</form>
					<a href="/goods/product/list.do">상품목록</a>
				</td>
			</tr>
			</table>
		</td>
	</tr>
	</table>
	
<%@ include file="../common/footer.jsp" %>