<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../common/header.jsp" %> 
</head>
<body>
<h2 class="mx-5 my-3">주차 장소 추가</h2>
<div class="mx-5 my-3">
	<form method="post" action="/parking/insert.do">
		<table style="text-align:center;" class="table-borderless" width="350px">
			<tr>
				<td>CODE</td>
				<td><input name="code" class="form-control"></td>
			</tr>
			<tr>
				<td>주차장소</td>
				<td><input name="cont" class="form-control"></td>
			</tr>
			<tr>
				<td>요금</td>
				<td><input name="fare" class="form-control"></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<button type="submit" class="btn btn-primary">추가</button>
				</td>
			</tr>
		</table>
	</form>
</div>
<%@ include file="../common/footer.jsp" %>
</body>
</html>