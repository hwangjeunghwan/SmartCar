<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../topbanner.jsp" />
   
   <% request.setCharacterEncoding("utf-8");
   if(session.getAttribute("sessionId") == null){
      %>
      <script>
      alert("로그인 이후 이용해 주세요.");
      location.href = "../index.jsp";
      </script>
   <% }
   else {
      String id = (String)session.getAttribute("sessionId");
      String pw = (String)session.getAttribute("sessionPw");
      String name = (String)session.getAttribute("name");
      String address = (String)session.getAttribute("address");
      String car = (String)session.getAttribute("car");
      String MF = (String)session.getAttribute("mf");
      String Birth = (String)session.getAttribute("birth");
      String ph = (String)session.getAttribute("ph");
      
   %>
   <center>
   <table border = "1" width ="300">
      <tr>
         <td>아이디</td>
         <td><%=id%></td>
      </tr>
      <tr>
         <td>비밀번호</td>
         <td><%=pw %></td>
      </tr>
      <tr>
         <td>주소</td>
         <td><%=address %></td>
      </tr>
      <tr>
         <td>이름</td>
         <td><%= name %></td>
      </tr>
      <tr>
         <td>제조사</td>
         <td><%= MF%></td>
      </tr>
      <tr>
         <td>자동차</td>
         <td><%= car %></td>
      </tr>
      <tr>
         <td>생년월일</td>
         <td><%= Birth %></td>
      </tr>
      <tr>
         <td>핸드폰번호</td>
         <td><%= ph  %></td>
      </tr>
      
   </table>
   </center>
<% } %>

<jsp:include page="../bottombanner.jsp" />
</body>
</html>