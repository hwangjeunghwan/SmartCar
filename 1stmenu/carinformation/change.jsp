<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% String mf= (String)session.getAttribute("mf");
	   if(mf.equals("기아")){
	%>
		<script>
		alert("kia자동차입니다.") 
 		location.href = "http://localhost:8080/KKH/smartcar/1stmenu/carinformation/KIA.jsp"
 		</script>
	<%} else if(mf.equals("쌍용")){%>
		<script> 
 		  location.href = "http://localhost:8080/KKH/smartcar/1stmenu/carinformation/쌍용.jsp"
 		</script>
	<%} else if(mf.equals("르노삼성")){ %> 
		<script> 
 		  location.href = "http://localhost:8080/KKH/smartcar/1stmenu/carinformation/르노삼성.jsp"
 		</script>
	<%} else if(mf.equals("현대")) {%>
		<script> 
 		  location.href = "http://localhost:8080/KKH/smartcar/1stmenu/carinformation/현대.jsp"
 		</script>
	<%} else if(mf.equals("쉐보레")){ %>
		<script> 
 		  location.href = "http://localhost:8080/KKH/smartcar/1stmenu/carinformation/쉐보레.jsp"
 		</script>
	<%} %>
</body>
</html>