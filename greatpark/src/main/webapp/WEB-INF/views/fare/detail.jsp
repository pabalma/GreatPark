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
<h2 class="mx-5 my-3">요금 체계 수정</h2>
<div class="mx-5 my-3">
	<form method="post" action="/fare/update.do">
		<table style="text-align:center;" class="table-borderless" width="350px">
			<tr>
				<td>CODE</td>
				<td><input name="code" class="form-control" value="${dto.code }" readonly></td>
			</tr>
			<tr>
				<td>연령</td>
				<td><input name="cont" class="form-control" value="${dto.cont }"></td>
			</tr>
			<tr>
				<td>요금</td>
				<td><input name="fare" class="form-control" value="${dto.fare }"></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<button type="submit" class="btn btn-primary">수정</button>
				</td>
			</tr>
		</table>
	</form>
</div>
<%@ include file="../common/footer.jsp" %>
</body>
</html>