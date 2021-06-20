<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="test.DBConnector" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");
	String id = request.getParameter("ID");
	String pw = request.getParameter("PW");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone"); 
	String address = request.getParameter("address");
	String MF = request.getParameter("Manufacturer");
	String car = request.getParameter("car");
	String birth = request.getParameter("birth");
	
	Connection con = null;
	PreparedStatement pstmt = null;
	String sql = "insert into members values(?,?,?,?,?,?,?,?)";
	int n = 0;
	
	try{
		con = DBConnector.getCon();
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		pstmt.setString(3, address);
		pstmt.setString(4, phone);
		pstmt.setString(5, car);
		pstmt.setString(6, name);
		pstmt.setString(7, MF);
		pstmt.setString(8, birth);
		
		n = pstmt.executeUpdate();
	}catch(SQLException se){
		System.out.println(se.getMessage());
	}finally{
		try{
			if(pstmt!=null) {
				pstmt.close();
			}
			if(con!=null){
				con.close();
			}
		}catch(SQLException se){
			System.out.println(se.getMessage());
		}
	}
%>
<script type = "text/javascript">
	if(<%=n%> > 0){
		alert("���������� ȸ�������� �Ϸ�Ǿ����ϴ�.");
		location.href = "./index.jsp" //ȸ�����Լ����� ������������ ����
	}else{
		alert("ȸ�������� �����߽��ϴ�.");
		history.go(-1); // ������������ ����
		
	}
</script>
</body>
</html>