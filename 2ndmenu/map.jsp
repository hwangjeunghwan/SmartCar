<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
   <title>위치기반 지역정보 검색</title>
   <meta http-equiv="content-type" content="text/html;charset=UTF-8">
   <meta name="google-site-verification" content="9uxU6Ni2BemkZHw9lcN35W_TQS2vpmuazpWO3zZx4b8" />
</head>

<body class="docs framebox_body">
<jsp:include page="../topbanner.jsp" />
 
   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAMKRmGECnltGTvn1t_TcDXmcwurgAmxkw&libraries=places"></script>
   <script type="text/javascript">
   //변수 맵 플레이스  iw 생성
   var map, places, iw;
   //변수 마커에 배열을 줌
   var markers = [];
    //지역명 자동완성 기능의 변수
   var autocomplete;

   function initialize() {
      var myLatlng = new google.maps.LatLng(37.566535, 126.97796919999996);//지도의 중심좌표
      var myOptions = {
         zoom: 14,//지도의 확대 레벨
         center: myLatlng,
         mapTypeId: google.maps.MapTypeId.ROADMAP
      };
      map = new google.maps.Map(document.getElementById('map_canvas'), myOptions);
      //placesService로 맵의 지역정보 places에 넣음
      places = new google.maps.places.PlacesService(map);
      google.maps.event.addListener(map, 'tilesloaded', tilesLoaded);
      //지역명 자동완성 기능 변수에 div에서 input으로 넣은 autocomplete에 구글맵의 장소로 지정
        autocomplete = new google.maps.places.Autocomplete(document.getElementById('autocomplete'));
      //장소를 선택해서 바꾸는 showSelectedplace()함수 생성
        google.maps.event.addListener(autocomplete, 'place_changed', function () {
         showSelectedPlace();
      });
   }
   
//지도에 컨트롤을 추가해주는 tilesLoaded()함수
   function tilesLoaded() {
      google.maps.event.clearListeners(map, 'tilesloaded');
      google.maps.event.addListener(map, 'zoom_changed', search);
      google.maps.event.addListener(map, 'dragend', search);
      search();
   }
//자동완성 검색 기능 만들고 마커와 마커 클릭시 정보창 나오게해주는 함수
   function showSelectedPlace() {
      clearResults();
      clearMarkers();
      //get place() = 세부 정보가 성공적으로 검색된 경우 사용자가 선택한 장소의 세부 정보를 반환합니다.
      var place = autocomplete.getPlace();
      //panto = 맵의 중심을 지정된 것으로 변경합니다
      map.panTo(place.geometry.location);
      //markers[]배열값을 줌
      markers[0] = new google.maps.Marker({
         position: place.geometry.location,
         map: map
      });

      iw = new google.maps.InfoWindow({
         content: getIWContent(place)
      });
      iw.open(map, markers[0]);
   }

   function search() {
      var type;
      for (var i = 0; i < document.controls.type.length; i++) {
         if (document.controls.type[i].checked) {
            type = document.controls.type[i].value;
         }
      }
        //좌표이동시 getBounds 이용 화면내 마커만 표시
      autocomplete.setBounds(map.getBounds());
      var search = {
         bounds: map.getBounds()
      };
      //예측이 속한 배열의 유형 = establishment
      if (type != 'establishment') {
         search.types = [type];
      }
      places.search(search, function (results, status) {
         if (status == google.maps.places.PlacesServiceStatus.OK) {
            clearResults();
            clearMarkers();
            for (var i = 0; i < results.length; i++) {
               markers[i] = new google.maps.Marker({
                  position: results[i].geometry.location,
                  animation: google.maps.Animation.DROP
               });
               google.maps.event.addListener(markers[i], 'click', getDetails(results[i], i));
               setTimeout(dropMarker(i), i * 100);
               addResult(results[i], i);
            }
         }
      });
   }

   function clearMarkers() {
      for (var i = 0; i < markers.length; i++) {
         if (markers[i]) {
            //setMap = 지정된지도에서 지형지물을 렌더링합니다. map이 null로 설정된 경우 지형지물 이지도에서 삭제됩니다.
            markers[i].setMap(null);
            markers[i] == null;
         }
      }
   }

   function dropMarker(i) {
      return function () {
         markers[i].setMap(map);
      }
   }
//라디오버튼중 선택 하였을시 creatElement를 이용하여 리스트모양을 만들고 appendChild를 이용하여 안에 내용을 넣어줌
   function addResult(result, i) {
      var results = document.getElementById('results');
      var tr = document.createElement('tr');
      tr.style.backgroundColor = (i % 2 == 0 ? '#F0F0F0' : '#FFFFFF');
      tr.onclick = function () {
         google.maps.event.trigger(markers[i], 'click');
      };
      var iconTd = document.createElement('td');
      var nameTd = document.createElement('td');
      var icon = document.createElement('img');
      icon.src = result.icon.replace('http:', '');
      icon.setAttribute('class', 'placeIcon');
      //TextNode 생성하여 안에 결과.네임으로 값을 넣어준걸   변수  name 으로 지정
      var name = document.createTextNode(result.name);
      iconTd.appendChild(icon);
      nameTd.appendChild(name);
      tr.appendChild(iconTd);
      tr.appendChild(nameTd);
      results.appendChild(tr);
   }
//결과창에서 자식노드 제거하는 함수
   function clearResults() {
      var results = document.getElementById('results');
      while (results.childNodes[0]) {
         results.removeChild(results.childNodes[0]);
      }
   }
//getDetails = 장소의 세부정보 알려줌 
   function getDetails(result, i) {
      return function () {
         places.getDetails({
            reference: result.reference
         }, showInfoWindow(i));
      }
   }
//정보창 안에 들어갈 지역정보 같은 값을 설정해줌
   function showInfoWindow(i) {
      return function (place, status) {
         if (iw) {
            iw.close();
            iw = null;
         }
         if (status == google.maps.places.PlacesServiceStatus.OK) {
            iw = new google.maps.InfoWindow({
               content: getIWContent(place)
            });
            iw.open(map, markers[i]);
         }
      }
   }
//정보창 에 나오는 형태 설정
   function getIWContent(place) {
      var content = '<table style="border:0"><tr><td style="border:0;">';
      content += '<img class="placeIcon" src="' + place.icon + '"></td>';
      content += '<td style="border:0;"><b><a href="' + place.url + '">' + place.name + '</a></b>';
      content += '</td></tr></table>';
      return content;
   }
   google.maps.event.addDomListener(window, 'load', initialize);
   </script>
   <style type="text/css">
   
   
      html, body {
         margin: 0;
         padding: 0;
         height: 100%;
         font-family: arial;
         font-size: 20px;
         overflow: hidden;
      }
      #map_canvas {
         float: left;
         width: 70%;
         height: 100%;
      }
      #listing {
         
         margin-left: 0px;
         width: 30%;
         height: 100%;
         overflow: auto;
         cursor: pointer;
            
      }
      #controls {
         padding: 10px;
      }
#controls input{
    font-family: sans-serif;
    
    
}
      .placeIcon {
         width: 30px;
         height: 30px;
         margin: 2px;
      }
      #results {
         border-collapse: collapse;
         width: 100%;
            height: 100%;
      }
      #locationField {
         margin-left: 1px;
            font-family: 
      }
      #autocomplete {
         width: 100%;
            height: 30px;
         border: 1px solid #ccc;
      }
   
   </style>
   <% String address = (String)session.getAttribute("address"); %>
   <div id="locationField">
      <input id="autocomplete" type="text" value= <%=address %>/>
   </div>
   <div id="map_canvas"></div>
   <div id="controls">
      <form name="controls">
            <input type="radio" name="type" value="car_repair" onclick="search()" checked="checked"  />
Car Repair Shop
         
         <input type="radio" name="type" value="gas_station" onclick="search()" />Gas Station</form>
   </div>
   <div id="listing">
      <table id="results"></table>
   </div>
   

 <jsp:include page="../bottombanner.jsp" />
</body>

</html>