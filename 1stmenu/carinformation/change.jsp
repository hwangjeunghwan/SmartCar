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
	   if(mf.equals("���")){
	%>
		<script>
		alert("kia�ڵ����Դϴ�.") 
 		location.href = "http://localhost:8080/KKH/smartcar/1stmenu/carinformation/KIA.jsp"
 		</script>
	<%} else if(mf.equals("�ֿ�")){%>
		<script> 
 		  location.href = "http://localhost:8080/KKH/smartcar/1stmenu/carinformation/�ֿ�.jsp"
 		</script>
	<%} else if(mf.equals("����Ｚ")){ %> 
		<script> 
 		  location.href = "http://localhost:8080/KKH/smartcar/1stmenu/carinformation/����Ｚ.jsp"
 		</script>
	<%} else if(mf.equals("����")) {%>
		<script> 
 		  location.href = "http://localhost:8080/KKH/smartcar/1stmenu/carinformation/����.jsp"
 		</script>
	<%} else if(mf.equals("������")){ %>
		<script> 
 		  location.href = "http://localhost:8080/KKH/smartcar/1stmenu/carinformation/������.jsp"
 		</script>
	<%} %>
</body>
</html>