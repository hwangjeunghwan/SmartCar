<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ������</title>
<script language = "javascript">

function showSub(MF) {

	   var kia = document.getElementById("KIA");
	   var hyundae = document.getElementById("HYUNDAE");
	   var ssang = document.getElementById("SSANG");
	   var sm = document.getElementById("SM");
	   var sb = document.getElementById("SB");
	   
	    if( MF=="���" ) {
	    
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
	        
	    } else if ( MF=="����"){

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

	     } else if ( MF=="�ֿ�"){

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
	         
	     } else if ( MF=="����Ｚ"){

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
	         
	     }else if ( MF=="������"){

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
    <tr><td>���̵�</td> <td> <input type = "text" name = "ID" size = "20"></td></tr>
    <tr><td>��й�ȣ</td> <td> <input type = "password" name = "PW" size = "20"></td></tr>
    <tr><td> ��й�ȣ ���Է�</td> <td> <input type = "password" name = "rePW" size = "20"><br />
    <tr><td> �̸�</td> <td><input type = "text" name = "name" size = "15"> </td></tr>
    <tr><td>�ּ�</td> <td><input type = "text" name = "address" size = "40"> </td></tr>
    <tr><td>��ȭ��ȣ</td> <td><input type = "text" name = "phone" size = "40"></td></tr>
    <tr><td> ���� ������ </td> <td>
   <select id = "Manufacturer" name = "Manufacturer" onChange="showSub(this.options[this.selectedIndex].value);"> 
      <option>--����--</option>
      <option value = "���">KIA</option>
      <option value = "����">HYUNDAE</option>
      <option value = "�ֿ�">�ֿ�</option>
      <option value = "����Ｚ">����Ｚ</option>
      <option value = "������">������</option>
   </select>
   </td></tr>
   <tr><td>����</td> <td> 
   <select id = "KIA" name = "car" style = "display: none ;" >
      <option>--����--</option>
      <option value = "����">����</option>
      <option value = "���">���</option>
      <option value = "k3">k3</option>
      <option value = "k5">k5</option>
      <option value = "K7">K7</option>
      <option value = "K9">K9</option>
      <option value = "�Ϸ�">�Ϸ�</option>
      <option value = "�ҿ�">�ҿ�</option>
      <option value = "���Ϻ�">���Ϻ�</option>
      <option value = "����Ƽ��">����Ƽ��</option>
      <option value = "���">���</option>
      <option value = "ī�Ϲ�">ī�Ϲ�</option>   
   </select> 
   <select id = "HYUNDAE" name = "car" style="display: none;" >
      <option>--����--</option>
      <option value = "�ؽ�">�ؽ�</option>
      <option value = "�ڳ�">�ڳ�</option>
      <option value = "���ν���">���ν���</option>
      <option value = "��Ÿ��">��Ÿ��</option>
      <option value = "�Ÿ">�Ÿ</option>
      <option value = "�ƹݶ�">�ƹݶ�</option>
      <option value = "����Ʈ">����Ʈ</option>
      <option value = "i30">i30</option>
      <option value = "i40">i40</option>
      <option value = "�׷���">�׷���</option>
      <option value = "����">����</option>
      <option value = "�ƽ�ũ����">�ƽ�ũ����</option>   
      <option value = "���̿���">���̿���</option>
      <option value = "�Ÿ">�Ÿ</option>
      <option value = "��Ÿ����">��Ÿ����</option>
   </select>
   <select id = "SSANG" name = "car" style="display: none;" >
      <option>--����--</option>
      <option value = "Ƽ����">Ƽ����</option>
      <option value = "�ڶ���">�ڶ���</option>
      <option value = "������">������</option>
      <option value = "�ڶ���">�ڶ���</option>
      <option value = "ü���(����)">ü���(����)</option>
      <option value = "��Ƽ��(����)">��Ƽ��(����)</option>   
   </select> 
   <select id = "SM"  name = "car" style="display: none;" >
      <option>--����--</option>
      <option value = "sm3">sm3</option>
      <option value = "sm5">sm5</option>
      <option value = "sm6">sm6</option>
      <option value = "sm7">sm7</option>
      <option value = "QM3">QM3</option>
      <option value = "QM6">QM6</option>
   </select> 
   <select id = "SB" name = "car" style="display: none;" >
      <option>--����--</option>
      <option value = "����ũ">����ũ</option>
      <option value = "�ƺ���">�ƺ���</option>
      <option value = "ũ����">ũ����</option>
      <option value = "������">������</option>
      <option value = "���ȶ�">���ȶ�</option>
      <option value = "Ʈ����">Ʈ����</option>
      <option value = "�ö���">�ö���</option>
      <option value = "ĸƼ��">ĸƼ��</option>
      <option value = "ī����">ī����</option>
      <option value = "��Ʈ">��Ʈ</option>
      <option value = "��ƮEV">��ƮEV</option>
   </select> </td></tr>
   <tr><td>������� </td><td> <input type = "text" name = "birth" size = "20"> </td></tr>
   </table>
   <input type = "submit" name = "clear" value = "ȸ������" >
   <input type = "reset" name = "reset" value = "��������">
   </form>
</center>

<jsp:include page="./bottombanner.jsp" />
</body>
</html>