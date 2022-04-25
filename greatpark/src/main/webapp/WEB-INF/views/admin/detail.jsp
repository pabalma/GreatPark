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
</head>
<body>
<h2>관리자 정보</h2>
<form method="post" name="form1">
	아이디 ${dto.adminid }<br>
	이름 ${dto.name }<br>
	등급 ${dto.level }<br>
	전화번호 ${dto.phone }<br>
	이메일 ${dto.email }<br>
	가입일자 <fmt:formatDate value="${dto.join_date }" pattern="yyyy-MM-dd HH:mm:ss" />
	<button type="button" onclick="location.href='/admin/passwd_check.do'">수정</button>
</form>
<%@ include file="../common/footer.jsp" %>
</body>
</html>