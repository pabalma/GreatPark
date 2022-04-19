<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>아이디</td>
			<td>이름</td>
		</tr>
		<c:forEach var="row" items="${list }">
		<tr>
			<td>${row.userid }</td>
			<td><a href="/pj/test/view.do?userid=${row.userid }">${row.name }</a></td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>