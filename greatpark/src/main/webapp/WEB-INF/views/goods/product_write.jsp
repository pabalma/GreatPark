<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../common/header.jsp" %>

<script>
function product_write(){
	var product_name = document.form1.product_name.value;
	var price = document.form1.price.value;
	var description = document.form1.description.value;
	if(product_name == ""){
		alert("상품명을 입력하세요.");
		document.form1.product_name.focus();
		return;
	}
	if(price==""){
		alert("가격을 입력하세요.");
		document.form1.price.focus();
		return;
	}
	if(description==""){
		alert("상품설명을 입력하세요.");
		document.form1.description.focus();
		return;
	}
	document.form1.action = "/goods/product/insert.do";
	document.form1.submit();
}
</script>
	
	<br>
	<h2>상품 등록</h2>
	<form name="form1" method="post" enctype="multipart/form-data">
	<table>
	<tr>
		<td>상품명</td>
		<td><input name="product_name"></td>
	</tr>
	<tr>
		<td>가격</td>
		<td><input name="price"></td>
	</tr>
	<tr>
		<td>상품설명</td>
		<td>
			<textarea rows="5" cols="60" name="description"></textarea>
		</td>
	</tr>
	<tr>
		<td>상품이미지</td>
		<td><input type="file" name="file1"></td>
	</tr>
	<tr>
		<td colspan="2" align="right">
		<br>
			<input type="button" value="등록" onclick="product_write()">
			<input type="button" value="목록" onclick="location.href='/goods/product/list.do'">
		</td>
	</tr>
	</table>
	</form>
	
<script>
$(":text").keyup(function(event){
	if(event.keyCode == 13) {
		product_write();
	}
});
</script>

<%@ include file="../common/footer.jsp" %>