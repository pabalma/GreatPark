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
		$("#type_amount").hide();
		$("#btnSubmit").click(function(){
			if($("#year").val() == ""){
				alert("날짜를 입력하세요.");
				$("#year").focus();
				return;
			}
			if($("#day").val() == ""){
				alert("날짜를 입력하세요.");
				$("#day").focus();
				return;
			}
			document.form1.date.value = $("#year").val() + "-" +  $("#month").val() + "-" + $("#day").val();
			document.form1.submit();
		});
		$("#amount").change(function(){
			if($("#amount").val() == "0"){
				$("#type_amount").show();
			} else{
				$("#type_amount").hide();
			}
		});
	});
</script>
</head>
<body>
<form name="form1" method="post" action="/reservation/insert.do">
	연령
	<select name="faretype">
		<c:forEach var="rows" items="${fare_list }">
			<option value="${rows.code }">${rows.cont }</option>
		</c:forEach>
	</select>
	<br>
	티켓 수
	<select id="amount" name="amount">
		<option value="1">1장</option>
		<option value="2">2장</option>
		<option value="3">3장</option>
		<option value="4">4장</option>
		<option value="5">5장</option>
		<option value="0">직접입력</option>
	</select>
	<input id="type_amount" name="type_amount">
	<br>
	주차공간
	<select name="parking_area">
		<c:forEach var="rows" items="${parking_list }">
			<option value="${rows.code }">${rows.cont }</option>
		</c:forEach>
	</select>
	<br>
	날짜 <input type="hidden" id="date" name="date" value="">
		<input id="year">
		<select id="month">
			<option value="01">1월</option>
			<option value="02">2월</option>
			<option value="03">3월</option>
			<option value="04">4월</option>
			<option value="05">5월</option>
			<option value="06">6월</option>
			<option value="07">7월</option>
			<option value="08">8월</option>
			<option value="09">9월</option>
			<option value="10">10월</option>
			<option value="11">11월</option>
			<option value="12">12월</option>
		</select>
		<input id="day">
	<br>
	<button type="button" id="btnSubmit">예약하기</button>
</form>
<%@ include file="../common/footer.jsp" %>
</body>
</html>