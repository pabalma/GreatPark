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
		$("#btnUpdate").click(function(){
			document.form1.action = "/user/update.do";
			document.form1.submit();
		});
		$("#btnDelete").click(function(){
			if(confirm("탈퇴하시겠습니까?")){
				document.form1.action = "/user/delete.do";
				document.form1.submit();
			}
		});
	});
</script>
</head>
<body>
<h2>회원 정보 수정</h2>
<form method="post" name="form1">
	아이디 <input name="userid" value="${dto.userid }" readonly><br>
	비밀번호 <input type="password" name="passwd"><br>
	이름 <input name="name" value="${dto.name }"><br>
	나이 <input name="age" value="${dto.age }"><br>
	전화번호 <input name="phone" value="${dto.phone }"><br>
	이메일 <input name="email" value="${dto.email }"><br>
	가입일자 <fmt:formatDate value="${dto.join_date }" pattern="yyyy-MM-dd HH:mm:ss" />
	<button type="button" id="btnUpdate">수정</button>
	<button type="button" id="btnDelete">탈퇴</button>
</form>
<%@ include file="../common/footer.jsp" %>
</body>
</html>