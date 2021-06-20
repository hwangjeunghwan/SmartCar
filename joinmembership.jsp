<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입</title>
<script language = "javascript">

function showSub(MF) {

	   var kia = document.getElementById("KIA");
	   var hyundae = document.getElementById("HYUNDAE");
	   var ssang = document.getElementById("SSANG");
	   var sm = document.getElementById("SM");
	   var sb = document.getElementById("SB");
	   
	    if( MF=="기아" ) {
	    
	       kia.style.display = "";
	        kia.name ="car";
	        hyundae.style.display = "none";
	        hyundae.name = "";
	        ssang.style.display = "none";
	        ssang.name="";
	        sm.style.display = "none";
	        sm.name = "";
	        sb.style.display = "none";
	        sb.name = "";
	        
	    } else if ( MF=="현대"){

	        kia.style.display = "none";
	        kia.name ="";
	        hyundae.style.display = "";
	        hyundae.name = "car";
	        ssang.style.display = "none";
	        ssang.name="";
	        sm.style.display = "none";
	        sm.name = "";
	        sb.style.display = "none";
	        sb.name = "";

	     } else if ( MF=="쌍용"){

	        kia.style.display = "none";
	         kia.name ="";
	         hyundae.style.display = "none";
	         hyundae.name = "";
	         ssang.style.display = "";
	         ssang.name="car";
	         sm.style.display = "none";
	         sm.name = "";
	         sb.style.display = "none";
	         sb.name = "";
	         
	     } else if ( MF=="르노삼성"){

	        kia.style.display = "none";
	         kia.name ="";
	         hyundae.style.display = "none";
	         hyundae.name = "";
	         ssang.style.display = "none";
	         ssang.name="";
	         sm.style.display = "";
	         sm.name = "car";
	         sb.style.display = "none";
	         sb.name = "";
	         
	     }else if ( MF=="쉐보레"){

	        kia.style.display = "none";
	         kia.name ="";
	         hyundae.style.display = "none";
	         hyundae.name = "";
	         ssang.style.display = "none";
	         ssang.name="";
	         sm.style.display = "none";
	         sm.name = "";
	         sb.style.display = "";
	         sb.name = "car";
	         
	     }
	 };
</script>
</head>
<body>
<jsp:include page="./topbanner.jsp" />

<center>
<form action = "insert.jsp" method = "post" onSubmit = "return check()">
    <table border = "1" width = 500 height = 300>
    <tr><td>아이디</td> <td> <input type = "text" name = "ID" size = "20"></td></tr>
    <tr><td>비밀번호</td> <td> <input type = "password" name = "PW" size = "20"></td></tr>
    <tr><td> 비밀번호 재입력</td> <td> <input type = "password" name = "rePW" size = "20"><br />
    <tr><td> 이름</td> <td><input type = "text" name = "name" size = "15"> </td></tr>
    <tr><td>주소</td> <td><input type = "text" name = "address" size = "40"> </td></tr>
    <tr><td>전화번호</td> <td><input type = "text" name = "phone" size = "40"></td></tr>
    <tr><td> 차량 제조사 </td> <td>
   <select id = "Manufacturer" name = "Manufacturer" onChange="showSub(this.options[this.selectedIndex].value);"> 
      <option>--선택--</option>
      <option value = "기아">KIA</option>
      <option value = "현대">HYUNDAE</option>
      <option value = "쌍용">쌍용</option>
      <option value = "르노삼성">르노삼성</option>
      <option value = "쉐보레">쉐보레</option>
   </select>
   </td></tr>
   <tr><td>차종</td> <td> 
   <select id = "KIA" name = "car" style = "display: none ;" >
      <option>--선택--</option>
      <option value = "레이">레이</option>
      <option value = "모닝">모닝</option>
      <option value = "k3">k3</option>
      <option value = "k5">k5</option>
      <option value = "K7">K7</option>
      <option value = "K9">K9</option>
      <option value = "니로">니로</option>
      <option value = "소울">소울</option>
      <option value = "모하비">모하비</option>
      <option value = "스포티지">스포티지</option>
      <option value = "쏘렌토">쏘렌토</option>
      <option value = "카니발">카니발</option>   
   </select> 
   <select id = "HYUNDAE" name = "car" style="display: none;" >
      <option>--선택--</option>
      <option value = "넥쏘">넥쏘</option>
      <option value = "코나">코나</option>
      <option value = "벨로스터">벨로스터</option>
      <option value = "싼타페">싼타페</option>
      <option value = "쏘나타">쏘나타</option>
      <option value = "아반떼">아반떼</option>
      <option value = "엑센트">엑센트</option>
      <option value = "i30">i30</option>
      <option value = "i40">i40</option>
      <option value = "그랜저">그랜저</option>
      <option value = "투싼">투싼</option>
      <option value = "맥스크루즈">맥스크루즈</option>   
      <option value = "아이오닉">아이오닉</option>
      <option value = "쏘나타">쏘나타</option>
      <option value = "스타렉스">스타렉스</option>
   </select>
   <select id = "SSANG" name = "car" style="display: none;" >
      <option>--선택--</option>
      <option value = "티볼리">티볼리</option>
      <option value = "코란도">코란도</option>
      <option value = "렉스턴">렉스턴</option>
      <option value = "코란도">코란도</option>
      <option value = "체어맨(단종)">체어맨(단종)</option>
      <option value = "액티언(단종)">액티언(단종)</option>   
   </select> 
   <select id = "SM"  name = "car" style="display: none;" >
      <option>--선택--</option>
      <option value = "sm3">sm3</option>
      <option value = "sm5">sm5</option>
      <option value = "sm6">sm6</option>
      <option value = "sm7">sm7</option>
      <option value = "QM3">QM3</option>
      <option value = "QM6">QM6</option>
   </select> 
   <select id = "SB" name = "car" style="display: none;" >
      <option>--선택--</option>
      <option value = "스파크">스파크</option>
      <option value = "아베오">아베오</option>
      <option value = "크루즈">크루즈</option>
      <option value = "말리부">말리부</option>
      <option value = "임팔라">임팔라</option>
      <option value = "트랙스">트랙스</option>
      <option value = "올란도">올란도</option>
      <option value = "캡티바">캡티바</option>
      <option value = "카마로">카마로</option>
      <option value = "볼트">볼트</option>
      <option value = "볼트EV">볼트EV</option>
   </select> </td></tr>
   <tr><td>생년월일 </td><td> <input type = "text" name = "birth" size = "20"> </td></tr>
   </table>
   <input type = "submit" name = "clear" value = "회원가입" >
   <input type = "reset" name = "reset" value = "모두지우기">
   </form>
</center>

<jsp:include page="./bottombanner.jsp" />
</body>
</html>