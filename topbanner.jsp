<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Responsive Auto Show/Hide Toggle Menu Demo</title>
<script type="text/javascript" src="./script.js"></script>
<link rel="stylesheet" href="http://localhost:8080/KKH/smartcar/topbanner.css" />
</head>

<body>

<div class="nav_wrapper"> 
  <!--<a class="menu-link" href="#menu"></a>-->
  
  <div class="spinner-master">
    <input type="checkbox" id="spinner-form" />
    <label for="spinner-form" class="spinner-spin">
    <div class="spinner diagonal part-1"></div>
    <div class="spinner horizontal"></div>
    <div class="spinner diagonal part-2"></div>
    </label>
  </div>
  
  <nav id="menu" class="menu">
    <ul class="dropdown">
      <li ><a href="http://localhost:8080/KKH/smartcar/index.jsp" title="Link">홈</a>
      </li>
      <li ><a href="http://localhost:8080/KKH/smartcar/1stmenu/personalinformation.jsp" title="Link">회원정보</a>
        <ul >
          <li ><a href="http://localhost:8080/KKH/smartcar/1stmenu/personalinformation.jsp" title="Link ">개인정보</a></li>
          <li ><a href="http://localhost:8080/KKH/smartcar/1stmenu/carinformation.jsp" title="Link">차량정보</a></li>
        </ul>
      </li>
      <li><a href="http://localhost:8080/KKH/smartcar/2ndmenu/map.jsp" title="Link">편의 시설</a>
      <ul>
      <li ><a href="http://localhost:8080/KKH/smartcar/2ndmenu/map.jsp" title="Link">주유소 / 정비소 찾기</a></li>
      <li ><a href="http://localhost:8080/KKH/smartcar/2ndmenu/carwash.jsp" title="Link">세차장 찾기</a></li>
      	</ul>
      </li>
      <li ><a href="http://localhost:8080/KKH/smartcar/3rdmenu/freeboard/list.jsp" title="Link">기타서비스</a>
        <ul >
          <li ><a href="http://localhost:8080/KKH/smartcar/3rdmenu/freeboard/list.jsp" title="Link">자유게시판</a></li>
          <li ><a href="http://localhost:8080/KKH/smartcar/3rdmenu/news/news.jsp" title="Link">최신뉴스</a></li>
        </ul>
    </ul>
  </nav>

</div>




<script src="http://code.jquery.com/jquery-2.1.3.min.js"></script> 
<script src="js/script.js"></script>

</body>
</html>
