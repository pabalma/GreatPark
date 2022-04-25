<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../common/header.jsp" %>
<html>
<head>

<style>
table {
	border-collapse: collapse;
	text-align: center;
	line-height: 1.5;
	border: 1px solid #ccc;
	margin: 20px 10px;
	width: 97%;
}

table thead {
	border-right: 1px solid #ccc;
	border-left: 1px solid #ccc;
	background: #9ACA6D;
	font-size: 30px;
}

table thead th {
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #fff;
	width: 20%;
}

table tbody th {
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
	background: #FEEBB6;
	width: 20%;	
}

table td {
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
} 

</style>

<title>음식점 안내</title>
</head>
<body>

<div>
	<img width="1600px" height="700px" src="/images/map3.png">
</div>
<div>
	<img width="1600px" height="700px" src="/images/map4.png">
</div>
<br>
<table>
	<thead>
		<tr>
			<th>이름</th>
			<td>주메뉴</td>
			<td>장소</td>
			<td>매장번호</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="row" items="${foodcort }">
			<tr>
				<th>${row.name }</th>
				<td>${row.main }</td>
				<td>${row.site }</td>
				<td>${row.phone }</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>
<%@ include file="../common/footer.jsp" %>