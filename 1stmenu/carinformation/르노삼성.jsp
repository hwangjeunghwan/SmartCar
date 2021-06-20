<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="checkChart">
	<p class="caution">
		<strong>기본점검항목:</strong> 기본점검항목은 자가 정비 및 정비점 방문 시 점검하여 조정, 수리, 청소, 또는 필요시 교환하시기 바랍니다. ( <span class="bg"></span> 컬러처리 )<br>
		<strong>점검:</strong> 점검 후 결과에 따라 조정/청소/교환이 필요합니다.( <img src="../res/img/ico_check.gif" alt="" class="vm"> )&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<strong>교환:</strong> 교환이 필요합니다. ( <img src="../res/img/ico_change.gif" alt="" class="vm"> )
	</p>
	<table border="1" class="bbsList">
		<caption>SM7 / SM5 / SM3 차량 점검 주기표</caption>
		<colgroup>
			<col width="380"><col width=""><col width=""><col width=""><col width="">
		</colgroup>
		<thead>
			<tr>
				<th scope="col" rowspan="2">점검내용</th>
				<th scope="col">1년</th>
				<th scope="col">2년</th>
				<th scope="col">3년</th>
				<th scope="col">4년</th>
			</tr>
			<tr>
				<th scope="col">1만km</th>
				<th scope="col">2만km</th>
				<th scope="col">4만km</th>
				<th scope="col">8만km</th>
			</tr>
		</thead>
		<tbody>
			<tr class="base">
				<th scope="row">기본 조건(아래 기본점검항목 참조)</th>
				<td><img src="../res/img/ico_check.png" alt=""></td>
				<td><img src="../res/img/ico_check.png" alt=""></td>
				<td><img src="../res/img/ico_check.png" alt=""></td>
				<td><img src="../res/img/ico_check.png" alt=""></td>
			</tr>
			<tr>
				<th scope="row">엔진 오일 및 엔진 오일 필터(가솔린/LPG 차량)</th>
				<td><img src="../res/img/ico_change.png" alt=""></td>
				<td><img src="../res/img/ico_change.png" alt=""></td>
				<td><img src="../res/img/ico_change.png" alt=""></td>
				<td><img src="../res/img/ico_change.png" alt=""></td>
			</tr>
			<tr>
				<th scope="row">에어 클리너 필터</th>
				<td><img src="../res/img/ico_change.png" alt=""></td>
				<td><img src="../res/img/ico_change.png" alt=""></td>
				<td><img src="../res/img/ico_change.png" alt=""></td>
				<td><img src="../res/img/ico_change.png" alt=""></td>
			</tr>
			<tr>
				<th scope="row">공기 청정기 필터 (공기 청정기 장착 차량)</th>
				<td><img src="../res/img/ico_change.png" alt=""></td>
				<td><img src="../res/img/ico_change.png" alt=""></td>
				<td><img src="../res/img/ico_change.png" alt=""></td>
				<td><img src="../res/img/ico_change.png" alt=""></td>
			</tr>
			<tr>
				<th scope="row">에어컨 클린 필터</th>
				<td></td>
				<td></td>
				<td><img src="../res/img/ico_change.png" alt=""></td>
				<td><img src="../res/img/ico_change.png" alt=""></td>
			</tr>
			<tr>
				<th scope="row">브레이크 액, 클러치 액 교환</th>
				<td></td>
				<td></td>
				<td><img src="../res/img/ico_change.png" alt=""></td>
				<td><img src="../res/img/ico_change.png" alt=""></td>
			</tr>
			<tr>
				<th scope="row">산소센서</th>
				<td></td>
				<td></td>
				<td></td>
				<td><img src="../res/img/ico_change.png" alt=""></td>
			</tr>
			<tr>
				<th scope="row">캐니스터</th>
				<td></td>
				<td></td>
				<td></td>
				<td><img src="../res/img/ico_change.png" alt=""></td>
			</tr>
			<tr>
				<th scope="row">인젝터 어셈블리</th>
				<td></td>
				<td></td>
				<td></td>
				<td><img src="../res/img/ico_change.png" alt=""></td>
			</tr>
			<tr>
				<th scope="row">스파크 플러그</th>
				<td colspan="4" class="tit">연식에 따라 10만km 또는 16만km 마다 교환. (차량 매뉴얼 참조)</td>
			</tr>
			<tr>
				<th scope="row">엔진 냉각수</th>
				<td colspan="4" class="tit">최초 10만km 또는 5년 시점 교환. 이후 매 6만km 또는 3년마다 교환</td>
			</tr>
			<tr>
				<th scope="row">자동 변속기 오일</th>
				<td colspan="4" class="tit">가솔린 차량은 매 2만km 혹은 1년마다 점검 후 필요시 교환<br>영업용 LPG 차량은 1만km 혹은 6개월마다 점검, 매 5만 km 혹은 30개월마다 교환</td>
			</tr>
		</tbody>
	</table>
	<div class="basic">
		<h3>기본점검항목</h3>
		<ul>
			<li>엔진 냉각수 및 누수 여부(농도 점검 및 미달시 보충)</li>
			<li>브레이크 패드, 디스크, 기타 브레이크 관련 용품</li>
			<li>구동 벨트의 마모, 균열 및 장력</li>
			<li>타이어 공기압 및 마모 상태</li>
		</ul>
	</div>
</div>
</body>
</html>