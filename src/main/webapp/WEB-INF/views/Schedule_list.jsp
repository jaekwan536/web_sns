<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6375ed17a9c86d1c61f9cc019d14d54b"></script>
	<div class="width_1200 schedule_list">
		<div class="schedule_list_box">
			<button class="btn"> 스케줄 1 <span class="trash_box">
				<img src = "Test_Images/trash.png" id="trash_img"/></span></button>
			<button class="btn"> 스케줄 2 <span class="trash_box">
				<img src = "Test_Images/trash.png" id="trash_img"/></span></button>	
			<button class="btn"> 스케줄 3 <span class=trash_box>
				<img src = "Test_Images/trash.png" id="trash_img"/></span></button>
				
			<button class="share"> 공유하기 </button>
			<button class="btn2"> 참고하기 </button>
		</div>
	
		<div class="schedule_list_map">
				<div id="map" style="width:400px;height:500px;"></div>
		</div>
	</div>
	
	<script>
		var container = document.getElementById('map'); //지도를 표시할 div
		var options = {
			center: new kakao.maps.LatLng(37.57771692182155, 126.97699632644022), //지도의 중심 좌표
			level: 3 //지도 확대 레벨
		};

		var map = new kakao.maps.Map(container, options); //지도 생성
	</script>

	
