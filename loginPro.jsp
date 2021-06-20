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
<%
   request.setCharacterEncoding("utf-8");
   // id passwd name가져오기
   String id = request.getParameter("id");
   String pw = request.getParameter("pw");
   ResultSet rs = null;
   try {
       // 1단계 드라이버로더
       Class.forName("com.mysql.jdbc.Driver");
       // 2단계 디비연결
       Connection con = null;
       String url = "jdbc:mysql://localhost:3306/mydb";
       String user = "root";
       String pwd = "1584";

       con = DriverManager.getConnection(url, user, pwd);
         // 3단계 : id에 해당하는 passwd를 가져오는 sql(sql 생성)
      PreparedStatement pstmt = null;
       String sql = "select * from members where id=?";
       
       pstmt = con.prepareStatement(sql);
          pstmt.setString(1, id);
          // 4단계 실행 => rs저장
        rs = pstmt.executeQuery();
         // 5단계 rs 데이터있으면 id있음
         //   폼비밀번호 rs비밀번호 비교 맞으면 => 수정
         //                     틀리면 => 비밀번호틀림
          //            없으면 id없음
       if(rs.next()){
        //id있음
      //rs.getString(1);
        String dbPass= rs.getString("PW");
       String name= rs.getString("name");
        String ph= rs.getString("phoneNumber");
       String mf= rs.getString("MF");
       String car= rs.getString("Car");
       String address= rs.getString("address");
       String birth= rs.getString("Birth");
       
        
        if(pw.equals(dbPass)){
           session.setAttribute("sessionId",id);
           session.setAttribute("sessionPw",pw);
           session.setAttribute("name",name);
           session.setAttribute("ph",ph);
           session.setAttribute("mf",mf);
           session.setAttribute("car",car);
           session.setAttribute("address",address);
           session.setAttribute("birth",birth);
           response.sendRedirect("index.jsp");
        }else{
           %> <script> alert("비빌번호가 틀립니다.")
           location.href = "http://localhost:8080/KKH/smartcar/index.jsp"
           </script><% 
        }
       }else{
         %> <script> alert("아이디가 존재하지 않습니다.")
         location.href = "http://localhost:8080/KKH/smartcar/index.jsp"
         </script><% 
       }
       }catch (Exception e) {
          e.printStackTrace();
      }finally{
       
      }

   
       
%>
</body>
</html>