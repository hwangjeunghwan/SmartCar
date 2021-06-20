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
  		<h3>�α���</h3>
		<form action = "./loginPro.jsp " method = "post" name = "joinform" >
		���̵� <br /><input type = "text" name = "id"/><br />
		��й�ȣ<br /><input type = "password" name = "pw"/><br />
		<input value = "�α���" type="submit" name = "submit"/>
		</form>
  		<a href="./joinmembership.jsp">ȸ������</a>
  	<% } else { %>	
  		<%= session.getAttribute("sessionId") %>��, <br />ȯ���մϴ�.<br />
  		 <input type = "button" value="logout" onClick=" window.location = './logout.jsp'" />
  	<% } %>
  	</div>
    <div class="col-sm-4">
      <h3>1st MENU</h3>
      <p><a href="./1stmenu/personalinformation.jsp">���� ����</a></p>
      <p><a href="./1stmenu/carinformation/change.jsp">���� ����</a></p>
    </div>
    <div class="col-sm-4">
      <h3>2nd MENU</h3>
      <p><a href="./2ndmenu/map.jsp">�����/������ ã��</a></p>
      <p><a href="./2ndmenu/carwash.jsp">������ ã��</a></p>
    </div>
    <div class="col-sm-4">
      <h3>3rd MENU</h3>    
      <p><a href="./3rdmenu/freeboard/list.jsp">�����Խ���</a></p>
      <p><a href="./3rdmenu/news/news.jsp">�ֽ� ����</a></p>
    </div>
  </div>
</div>

<jsp:include page="./bottombanner.jsp" />
</body>
</html>