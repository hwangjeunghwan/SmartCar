<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>SmartCar</title>
<link type="text/css" rel="stylesheet" href="bootstrap.css">
</head>
<body>

<div class="jumbotron text-center">
  <h1>Smart Car</h1>
  <p>Infinite information about cars!</p> 
</div>
  
<div class="container">
  <div class="row">
  	<div class="col-sm-4">
  	<% if(session.getAttribute("sessionId") == null) { %>
  		<h3>로그인</h3>
		<form action = "./loginPro.jsp " method = "post" name = "joinform" >
		아이디 <br /><input type = "text" name = "id"/><br />
		비밀번호<br /><input type = "password" name = "pw"/><br />
		<input value = "로그인" type="submit" name = "submit"/>
		</form>
  		<a href="./joinmembership.jsp">회원가입</a>
  	<% } else { %>	
  		<%= session.getAttribute("sessionId") %>님, <br />환영합니다.<br />
  		 <input type = "button" value="logout" onClick=" window.location = './logout.jsp'" />
  	<% } %>
  	</div>
    <div class="col-sm-4">
      <h3>1st MENU</h3>
      <p><a href="./1stmenu/personalinformation.jsp">개인 정보</a></p>
      <p><a href="./1stmenu/carinformation/change.jsp">차량 정보</a></p>
    </div>
    <div class="col-sm-4">
      <h3>2nd MENU</h3>
      <p><a href="./2ndmenu/map.jsp">정비소/주유소 찾기</a></p>
      <p><a href="./2ndmenu/carwash.jsp">세차장 찾기</a></p>
    </div>
    <div class="col-sm-4">
      <h3>3rd MENU</h3>    
      <p><a href="./3rdmenu/freeboard/list.jsp">자유게시판</a></p>
      <p><a href="./3rdmenu/news/news.jsp">최신 뉴스</a></p>
    </div>
  </div>
</div>

<jsp:include page="./bottombanner.jsp" />
</body>
</html>