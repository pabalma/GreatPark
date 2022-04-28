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
		$("#type_amount").hide();
		$("#btnSubmit").click(function(){
			document.form1.submit();
		});
		$("#amount").change(function(){
			if($("#amount").val() == "0"){
				$("#type_amount").show();
			} else{
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
		
	});
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
					<select name="faretype" class="form-select">
						<c:forEach var="rows" items="${fare_list }">
							<option value="${rows.code }">${rows.cont }</option>
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
					<input type="text" name="date" id="datePicker" class="form-control" value="">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<button type="button" id="btnSubmit" class="btn btn-primary">예약하기</button>
				</td>
			</tr>
		</table>
	</form>
</div>
<%@ include file="../common/footer.jsp" %>
</body>
</html>