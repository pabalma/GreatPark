<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../common/header.jsp" %> 
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(function(){
		$("#btnLogin").click(function(){
			var adminid = $("#adminid").val();
			var passwd = $("#passwd").val();
			if(adminid == ""){
				alert("아이디를 입력하세요.");
				$("#adminid").focus();
				return;
			}
			if(passwd == ""){
				alert("비밀번호를 입력하세요.");
				$("#passwd").focus();
				return;
			}
			document.form1.action = "/admin/login_check.do";
			document.form1.submit();
		});
		$("#btnJoin").click(function(){
			document.form1.action = "/admin/join.do";
			document.form1.submit();
		});
	});
</script>
</head>
<body>
<h2>관리자 로그인</h2>
<form name="form1" method="post">
	<table border="1" width="400px">
		<tr>
			<td>아이디</td>
			<td><input id="adminid" name="adminid"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" id="passwd" name="passwd"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="button" id="btnLogin">로그인</button>
				<button type="button" id="btnJoin">회원가입</button>
				<c:if test="${message == 'error' }">
					<div style="color: red;">아이디 또는 비밀번호가 일치하지 않습니다.</div>
				</c:if>
				<c:if test="${param.message == 'logout' }">
					<div style="color:red;">로그아웃되었습니다.</div>
				</c:if>
			</td>
		</tr>
	</table>
</form>
<%@ include file="../common/footer.jsp" %>
</body>
</html>