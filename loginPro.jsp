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
   // id passwd name��������
   String id = request.getParameter("id");
   String pw = request.getParameter("pw");
   ResultSet rs = null;
   try {
       // 1�ܰ� ����̹��δ�
       Class.forName("com.mysql.jdbc.Driver");
       // 2�ܰ� ��񿬰�
       Connection con = null;
       String url = "jdbc:mysql://localhost:3306/mydb";
       String user = "root";
       String pwd = "1584";

       con = DriverManager.getConnection(url, user, pwd);
         // 3�ܰ� : id�� �ش��ϴ� passwd�� �������� sql(sql ����)
      PreparedStatement pstmt = null;
       String sql = "select * from members where id=?";
       
       pstmt = con.prepareStatement(sql);
          pstmt.setString(1, id);
          // 4�ܰ� ���� => rs����
        rs = pstmt.executeQuery();
         // 5�ܰ� rs ������������ id����
         //   ����й�ȣ rs��й�ȣ �� ������ => ����
         //                     Ʋ���� => ��й�ȣƲ��
          //            ������ id����
       if(rs.next()){
        //id����
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
           %> <script> alert("�����ȣ�� Ʋ���ϴ�.")
           location.href = "http://localhost:8080/KKH/smartcar/index.jsp"
           </script><% 
        }
       }else{
         %> <script> alert("���̵� �������� �ʽ��ϴ�.")
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