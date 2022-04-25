<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="../common/header.jsp" %>

<script>
$(function(){
	$("#btnList").click(function(){
		location.href = "/notice/list.do";
	});
	
	$("#btnUpdate").click(function(){
		var str="";
		$("#uploadedList .file").each(function(i){
			str += "<input type='hidden' name='files' value='"+$(this).val()+"'>";
		});
		$("#form1").append(str);
		document.form1.action = "/notice/update.do";
		document.form1.submit();
	});
	
	$("#btnDelete").click(function(){
		if(confirm("삭제하시겠습니까?")){
			document.form1.action = "/notice/delete.do";
			document.form1.submit();
		}
	});
});
</script>
	<br>
	<h2>공지사항 상세</h2>
	<form id="form1" name="form1" method="post">
	<div>작성일자: <fmt:formatDate value="${dto.reg_date}" pattern="yyyy-MM-dd HH:mm:ss" /></div>
	<div>조회수: ${dto.cnt}</div>
	<div>이름: ${dto.name}</div>
	<div>제목: <input name="title" value="${dto.title}"></div>
	<div style="width:80%">내용: 
		<textarea rows="3" cols="80" name="cont" id="cont">${dto.cont}</textarea>
	</div>
	<div>
		<input type="hidden" name="num" value="${dto.num}">
<c:if test="${sessionScope.adminid == dto.adminid }">
			<button type="button" id="btnUpdate">수정</button>
			<button type="button" id="btnDelete">삭제</button>
</c:if>
		<button type="button" id="btnList">목록</button>
	</div>
	</form>
	
<%@ include file="../common/footer.jsp" %>