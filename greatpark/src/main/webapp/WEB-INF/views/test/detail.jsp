<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(function(){
		$("#btnUpdate").click(function(){
			document.form1.action = "/pj/test/update.do";
			document.form1.submit();
		});
		$("#btnDelete").click(function(){
			if(confirm("삭제하시겠습니까?")){
				document.form1.action = "/pj/test/delete.do";
				document.form1.submit();
			}
		});
	});
</script>
</head>
<body>
	<form name="form1">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input id="userid" name="userid" value="${dto.userid }"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" id="passwd" name="passwd"></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input id="name" name="name" value="${dto.name }"></td>
			</tr>
			<tr>
				<td>
					<button type="button" id="btnUpdate">수정</button>
					<button type="button" id="btnDelete">삭제</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>