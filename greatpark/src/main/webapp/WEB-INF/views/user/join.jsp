<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../common/header.jsp" %> 
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(function(){
		$("#btnJoin").click(function(){
			var userid = $("#userid").val();
			var passwd = $("#passwd").val();
			var name = $("#name").val();
			if(userid == ""){
				alert("아이디를 입력하세요.");
				$("#userid").focus();
				return;
			}
			if(passwd == ""){
				alert("비밀번호를 입력하세요.");
				$("#passwd").focus();
				return;
			}
			if(name == ""){
				alert("이름을 입력하세요.");
				$("#name").focus();
				return;
			}
			if(age == ""){
				alert("나이를 입력하세요.");
				$("#age").focus();
				return;
			}
			document.form1.action = "/user/insert.do";
			document.form1.submit();
		});
	});
</script>
</head>
<body>
<h2>회원 정보 입력</h2>
<form method="post" name="form1">
	아이디 <input id="userid" name="userid"><br>
	비밀번호 <input type="password" id="passwd" name="passwd"><br>
	이름 <input id="name" name="name"><br>
	나이 <input id="age" name="age"><br>
	전화번호 <input name="phone"><br>
	이메일 <input name="email"><br>
	<button type="button" id="btnJoin">가입하기</button>
</form>
<%@ include file="../common/footer.jsp" %>
</body>
</html>