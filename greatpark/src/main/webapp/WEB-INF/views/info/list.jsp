<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<head>
<title>공원이용안내</title>
<style>
table {
	border-collapse: collapse;
	text-align: center;
	line-height: 1.5;
	border: 1px solid #ccc;
	margin: 20px 10px;
	width: 98%;
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
</head>
<br>
<h4>
	<p style="font-size:30px;background:linear-gradient(to top, yellow 50%, transparent 50%)">
		공원이용시간
	</p>
</h4>
	<div> 
		<p style="font-size:20px;background:linear-gradient(to top, green 50%, transparent 50%)">
			이용시간
		</p>
		<ul>
			<li>오전5시 ~ 오후9시 (05:00 ~ 21:00)</li>
			<li>개방시간 (05:00 ~ 21:00)</li>
			<li>동물원은 오전 10시부터 오후 5시까지 관람 가능합니다. (방역상황, 날씨 등에 따라 일부 변동될 수 있습니다)</li>
		</ul>
	</div>
	<div>
		<p style="font-size:20px;background:linear-gradient(to top, green 50%, transparent 50%)">
			공원이용안내
		</p>
		<ul>
			<li>GREAT PARK는 시민여러분이 함게 가꾸고 즐기는 휴식공간이자 동식물이 행복하게 공존하는 생태공원입니다.</li>
			<li>공원이용시 아래 사항을 지켜주시기 바랍니다.
				<ul>
					<li>차량, 오토바이, 자전거, 킥보드, 인라인 스케이트, 전동차 등은 출입을 금지합니다.(사전 승인을 받은 관리차량 제외)</li>
					<li>동물들에게 음식을 주지 마세요.</li>
					<li>공원에서는 행상 또는 노점에 의한 상행위, 노숙을 할 수 없습니다.</li>
					<li>공원시설, 나무, 꽃 등을 훼손하거나 열매를 채취하지 마세요. (위반시 과태료 부과)</li>
					<li>시설 이용시 안전이 최우선! 무리한 이용 및 위험한 행동을 하지 마세요.</li>
					<li>행사 등 시설 예약은 GREAT PARK으로 신청하세요.</li>
					<li>쓰레기는 반드시 지정된 장소에 버려주시기 바랍니다.</li>
				</ul>
			</li>
		</ul>
	</div>
		<p style="font-size:20px;background:linear-gradient(to top, green 50%, transparent 50%)">
			공원내 과태료 부과 기준안내
		</p>
		<p>도시 공원, 도시 자연공원구역 또는 녹지 안에서 다음 어느 하나에 해당하는 금지행위를 할 경우 도시 공원 및 녹지등에 관한 법률의 규정에 의거 10만원이하의 과태료가 부과 됨을 알려드립니다.</p>
		<table>
			<tbody>
				<tr>
					<td>도시 공원 및 녹지등에 관한 법률 제 49조 제 1항</td>
				</tr>
				<tr>
					<td></td>
					<td>나무를 훼손하거나 이물질을 주입하여 나무를 말라죽게 하는 행위</td>
					<td>100,000원</td>
				</tr>
				<tr>
					<td></td>
					<td>심한 소음 또는 악취를 나게 하는 등 다른 사람에게 혐오감을 일으키게 하는 행위</td>
					<td>70,000원</td>
				</tr>
				<tr>
					<td>도시공원 및 녹지등에 관한 법률 제 49조 2항</td>
				</tr>
				<tr>
					<td>도시공원 및 녹지등에 관한 법률 시행령 제 50조</td>
				</tr>
				<tr>
					<td></td>
					<td>오물 또는 폐기물(담배꽁초, 휴지등)을 지정된 장소 외의 장소에 버리는 행위</td>
					<td>30,000원</td>
				</tr>
				<tr>
					<td></td>
					<td>지정된 장소외의 장소에서의 주차 행위</td>
					<td>50,000원</td>
				</tr>
				<tr>
					<td></td>
					<td>이륜 이상의 바퀴가 있는 동력 장치를 이용하여 차도 외의 장소에 출입하는 행위<br />
					(장애인, 또는 노약자가 출입하는 행위는 제외)</td>
					<td>50,000원</td>
				</tr>
				<tr>
					<td></td>
					<td>전답 외의 지역에서 무단으로 경작하는 행위</td>
					<td>100,000원</td>
				</tr>
				<tr>
					<td></td>
					<td>식물의 꽃과 열매를 무단으로 채취하는 행위</td>
					<td>50,000원</td>
				</tr>
				<tr>
					<td></td>
					<td>공원내에 서식하는 동물을 학대하거나 허가 등을 받지 아니하고 포획하는 행위</td>
					<td>100,000원</td>
				</tr>
				<tr>
					<td>서울특별시 간접흡연 피해방지 조례 제5조 및 제10조</td>
				</tr>
				<tr>
					<td></td>
					<td>공원 내에서 흡연하는 행위</td>
					<td>100,000원</td>
				</tr>
				</tbody>
			</table>
	<br>
	<h4>
		<p style="font-size:30px;background:linear-gradient(to top, yellow 50%, transparent 50%)">
			공원이용요금
		</p>		
	</h4>
		<div>
		공원입장료 : 무료</p>
		</div>
		<table>
			<thead>
				<tr>
					<th>구 분</th>
					<th>기 준</th>
					<th>요금</th>
					<th>문의처</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>잔디구장</th>
						<td>1회 2시간</td>
						<td>156,000원</td>
						<td rowspan="4" style="line-height:300px">관리사무소(02-111-2222)</td>
				</tr>
				<tr>
					<th>풋살경기장</th>
						<td>1회 2시간</td>
						<td>25,000원</td>
						
				</tr>
				<tr>
					<th>테니스장</th>
						<td>1회 2시간</td>
						<td>평일 25,000원<br />
						토,일,공휴일 및 야간 32,500원</td>
						
				</tr>
					<tr>
						<th>야외무대</th>
						<td>1회 2시간<br />
						(전기료 별도)
						<td>100,000원<br />
						(초과 1시간당 25,000원)</td>
						
					</tr>
					<tr>
						<th rowspan="3"  style="line-height:250px"> 주차장</th>
						<td>1회, 5분</td>
						<td>승용차<br/>
							150원</td>
						<td rowspan="3"  style="line-height:250px">주차장관리소(02-111-2223)</td>
					</tr>
					<tr>
						<td>1회, 5분</td>
						<td>중형차<br>300원</td>
						
					</tr>
					<tr>
						<td>1회, 5분</td>
						<td>대형차<br>450원</td>
						
					</tr>
					<tr>
						<th>유모차대여</th>
						<td>1회</td>
						<td>3,000원</td>
						<td rowspan="2" style="line-height:100px;">관리사무소(02-111-2222)</td>
					</tr>
					<tr>
						<th>동물원 음성안내기 대여</th>
						<td>1회</td>
						<td>3,000원</td>
						
					</tr>
				</tbody>
			</table>
<%@ include file="../common/footer.jsp" %>