<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	/* body, 좌, 우 background: green; background:pink; background:blue; */
	.Schedule_list_body{margin:0 auto; width:1000px; height:1200px; padding-top: 50px; text-align:center;}
	.left{width:50%; height:520px;  float:left; position: relative;}
	.Right{width:50%; height:50%; float:left; }
	
	/* Left 스케줄 */
	.btn{background-color: white; border:1px solid black; border-radius:5px; color: black; text-align:center; 
			width:300px; height:40px; font-size:15px; margin:10px; position: relative;}
	.btn:hover {background: skyblue; color: black;}
	
	/* 휴지통 이미지 */
	.trash{position: absolute; top: 5px; right: 16px; width:20px; height:30px;}
	#trs{width:100%; height:100%;}
	
	/* 공유, 참고 버튼 */
	.btn2{width: 100px; height:35px; border-radius: 5px; background-color: #D1B2FF; 
			position: absolute; bottom: 70px;; right: 20px;}
	.btn3{width: 100px; height:35px; border-radius: 5px; background-color: #D1B2FF; 
			position: absolute; bottom: 20px;; right: 20px;}
	
</style>
</head>
<body>
	<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=fgesmtv3s1"></script>



	<div class="Schedule_list_body">
		<div class="left">
		<button class="btn"> 스케줄 1 
			<span class="trash">
				<img src = "Test_Images/trash.png" id="trs"/></span></button>
		<button class="btn"> 스케줄 2 
			<span class="trash">
				<img src = "Test_Images/trash.png" id="trs"/></span></button>	
		<button class="btn"> 스케줄 3 
			<span class="trash">
				<img src = "Test_Images/trash.png" id="trs"/></span></button>
				
		<button class="btn2"> 공유하기 </button>
		<button class="btn3"> 참고하기 </button>
		</div>
	
	 
		<div class="Right">
			<!-- <jsp:include page="#" flush="false"/>-->
				<div id="map" style="width:400px;height:500px;"></div>
	<script>
		var container = document.getElementById('map'); //지도를 표시할 div
		var mapOptions = {
			    center: new naver.maps.LatLng(35.854721, 128.482413),
			    zoom: 16
			};
			var map = new naver.maps.Map('map', mapOptions);
			 
			var marker = new naver.maps.Marker({
			    position: new naver.maps.LatLng(35.854721, 128.482413),
			    title: '계명대출판부\n보산관 105호',
			    map: map
			});
			 
			var contentString = [
			        '<div style="padding:4px 4px;">',
			        '   <div style="font-weight:bold;padding-bottom:3px;">계명대출판부</div>',
			        '   <p>보산관 105호<p>',
			        '</div>'
			    ].join('');
			 
			var infowindow = new naver.maps.InfoWindow({
			    content: contentString
			});
			 
			naver.maps.Event.addListener(marker, "click", function(e) {
			    if (infowindow.getMap()) {
			        infowindow.close();
			    } else {
			        infowindow.open(map, marker);
			    }
			});
			 
			infowindow.open(map, marker);
	</script>
	</div>
	</div>
</body>
</html>