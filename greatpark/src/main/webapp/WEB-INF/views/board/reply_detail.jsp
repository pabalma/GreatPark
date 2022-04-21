<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../common/header.jsp" %>

<script>
$(function(){
	$("#btnReplyDelete").click(function(){
		$.ajax({
			url: "/reply/delete/${dto.idx}",
			success: function(result) {
				if(result=="success") {
					alert("삭제되었습니다.");
					$("#modifyReply").css("visibility","hidden");
					listReply("1");
				}
			}
		});
	});
	$("#btnReplyUpdate").click(function(){
		var reply_text = $("#detail_replytext").val();
		$.ajax({
			type: "post",
			url: "/reply/update/${dto.idx}",
			headers: {"Content-Type":"application/json"},
			data: JSON.stringify({reply_text:reply_text}),
			dataType: "text",
			success: function(result) {
				if(result == "success") {
					$("#modifyReply").css("visibility","hidden");
					listReply("1");
				}
			}
		});
	});
	$("#btnReplyClose").click(function(){
		$("#modifyReply").css("visibility","hidden");
	});
});
</script>
</head>
<body>
<textarea id="detail_replytext" rows="3" cols="40">${dto.reply_text}</textarea>
<div style="text-align:center">
	<c:if test="${sessionScope.userid == dto.replyer}">
		<button id="btnReplyUpdate" type="button">수정</button>
		<button id="btnReplyDelete" type="button">삭제</button>
	</c:if>
	<button id="btnReplyClose" type="button">닫기</button>
</div>

<%@ include file="../common/footer.jsp" %>