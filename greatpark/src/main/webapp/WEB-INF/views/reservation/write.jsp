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
<link rel="stylesheet" href="../include/bootstrap-datepicker-master/dist/css/bootstrap-datepicker.css">
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="../include/bootstrap-datepicker-master/js/bootstrap-datepicker.js"></script>
<script src="../include/bootstrap-datepicker-master/js/locales/bootstrap-datepicker.ko.js"></script>
<script>
	$(function(){
		$("#type_amount").val("1");
		$("#type_amount").hide();
		$("#faresel2").hide();
		$("#amount").change(function(){
			if($("#amount").val() == "0"){
				$("#type_amount").val("");
				$("#type_amount").show();
			} else{
				$("#type_amount").val($("#amount").val());
				$("#type_amount").hide();
			}
		});
		$('#datePicker').datepicker({
		    format: "yyyy-mm-dd",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
		    startDate: '-0d',	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
		    autoclose : true,	//사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
		    calendarWeeks : false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
		    clearBtn : false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
		    disableTouchKeyboard : false,	//모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
		    immediateUpdates: false,	//사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false 
		    multidate : false, //여러 날짜 선택할 수 있게 하는 옵션 기본값 :false 
		    templates : {
		        leftArrow: '&laquo;',
		        rightArrow: '&raquo;'
		    }, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징 
		    showWeekDays : true ,// 위에 요일 보여주는 옵션 기본값 : true
		    title: "예약일자",	//캘린더 상단에 보여주는 타이틀
		    todayHighlight : true ,	//오늘 날짜에 하이라이팅 기능 기본값 :false 
		    toggleActive : true,	//이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
		    weekStart : 0 ,//달력 시작 요일 선택하는 것 기본값은 0인 일요일 
		    language : "ko"	//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
		    
		});//datepicker end
		$("#testBtn").click(function(e){
			if($("#datePicker").val() == ""){
				alert("예약일을 선택해 주세요.");
				location.href = "/reservation/write.do";
			} else if(($("#amount").val() == "0") && 
			   		(($("#type_amount").val() == null) || ($("#type_amount").val() == ""))) {
				alert("티켓 수량을 넣어주세요.");
				location.href = "/reservation/write.do";
			}
			e.preventDefault();
			printFare();
			$("#payModal").modal("show");
			$("#modalY").show();
			$("#btnloading").hide();
		});
		$(".close").click(function(){
			$("#payModal").modal("hide");
		});
		$("#modalN").click(function(){
			$("#payModal").modal("hide");
		});
		
		$("#payModal").modal({backdrop:"static",keyboard:false});
	});
	function payComplete() {
		if(confirm("결제하시겠습니까?")) {
			setTimeout(function(){
				payClear();
				alert("결제가 완료되었습니다.");
				$("#payModal").modal("hide");
				document.form1.submit();
			},2000);
			$("#modalY").hide();
			$("#btnloading").show();
		}
	}
	function payClear() {
		$($("input[name='pay-gubun']").get(0)).prop("checked",true);
	}
</script>
</head>
<body>
<h2 class="mx-5 my-3">예약하기</h2>
<div class="mx-5" style="width:500px;">
	<form name="form1" method="post" action="/reservation/insert.do">
		<table class="table table-hover" style="text-align:center;">
			<tr>
				<td>연령</td>
				<td>
					<select onchange="farechange()" id="faresel" name="faretype" class="form-select">
						<c:forEach var="rows" items="${fare_list }">
							<option value="${rows.code}">${rows.cont }</option>
						</c:forEach>
					</select>
					<select id="faresel2">
						<c:forEach var="rows" items="${fare_list }">
							<option value="${rows.code}">${rows.fare}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>티켓 수</td>
				<td>
					<select id="amount" name="amount" class="form-select">
						<option value="1">1장</option>
						<option value="2">2장</option>
						<option value="3">3장</option>
						<option value="4">4장</option>
						<option value="5">5장</option>
						<option value="0">직접입력</option>
					</select>
					<input class="form-control" id="type_amount" name="type_amount">
				</td>
			</tr>
			<tr>
				<td>주차공간</td>
				<td>
					<select name="parking_area" class="form-select">
						<c:forEach var="rows" items="${parking_list }">
							<option value="${rows.code }">${rows.cont }</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>예약일자</td>
				<td>
					<input type="text" name="date" id="datePicker" class="form-control" readonly>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<button id="testBtn" class="btn btn-primary" style="float:right;">예약하기</button>
				</td>
			</tr>
		</table>
	</form>
</div>
<script>
function farechange() {
	var idx = $("#faresel option:selected").val();	
	$("#faresel2").val(idx).prop("selected", true);
}

function printFare() {
	var result = 0;
	var fare = 0;
	var cnt = 0;
	var idx = $("#faresel option:selected").val();	
	$("#faresel2").val(idx).prop("selected", true);
	
	fare = $("#faresel2 option:selected").text();
	cnt = $("#type_amount").val();
	result = fare*cnt;
	$("#fareresult").text(result); 
}
</script>
  <!-- 회원가입 확인 Modal-->
<div class="modal fade" id="payModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">결제금액: ₩<span id="fareresult"></span></h5>
				<button class="close" type="button" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">X</span>
				</button>
			</div>
			<div class="modal-body">
				<%-- 결제금액은 <b><fmt:formatNumber value="" pattern="#,###,###" /></b>원 입니다.<br><br> --%>
				<input class="form-check-input" type="radio" name="pay-gubun" checked>신용카드 &nbsp;
				<input class="form-check-input" type="radio" name="pay-gubun">앱결제 &nbsp;
				<input class="form-check-input" type="radio" name="pay-gubun">계좌입금
				<br><br>
			</div>
			<div class="modal-footer">
				<button class="btn btn-success btn-sm" id="modalY" href="#" onclick="payComplete()">결제하기</button>
				<button class="btn btn-primary" id="btnloading" type="button" disabled>
  				<span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
  				결제중...
				</button>
				<button class="btn btn-secondary btn-sm" id="modalN" type="button" data-dismiss="modal">취소</button>
			</div>
		</div>
	</div>
</div>
<%@ include file="../common/footer.jsp" %>
</body>
</html>