<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../include/menu.jsp" %>
<h2>비밀번호 확인</h2>
<form method="post" action="/pj/admin/password_check.do">
	비밀번호 <input type="password" name="passwd">
	<button type="submit">확인</button>
</form>
<c:if test="${message == 'error' }">
	<div style="color: red;">아이디 또는 비밀번호가 일치하지 않습니다.</div>
</c:if>
</body>
</html>