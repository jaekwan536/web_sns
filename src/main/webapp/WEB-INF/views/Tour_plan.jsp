<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="sql_open.jsp" %>

<%	
	int seq= (Integer)session.getAttribute("seq");  // 세션 값 가져오기 
	String place_name = "";
	
	String sql = "select * from tour, cart where tour.seq = cart.tour_seq and cart.member_seq = ?";	
	pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, seq);
	rs = pstmt.executeQuery();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	/* body, 좌, 우 background: green; background:pink; background:blue; */
	.Tour_plan_body{margin:0 auto; width:1000px; height:1200px; padding-top: 50px;}
	.middle{clear:both;}
	.left_reviewlist{text-align:center; width:50%; height:600px; float:left; background:purple;}
	.right_map{width:40%; height:600px; float:left;
			margin: 0 50px; background: #747474; line-height:500px; color:white;}
	
	.left_reviewlist a{text-decoration:none; color:black;} 
	.left_reviewlist a:hover{text-decoration:underline;}
	
	.float li{float: left; background:gray; width:100px; height:50px; margin: 0 20px 0 0;  position:relative;}
	
	/* 설명 박스 */
	.plan_mini_box{width:80px; height:80px; background:skyblue; padding:10px; float:left;}
	
	
	/* 하단 박스 */
	.ps{position: relative; clear:both;}
	
	/* 스케줄 짜는 박스 (가로-패딩: 1000px-20px-20px), 높이도 마찬가지 */
	.plan_box{width:860px;; height:60px; background:pink; padding:20px; float:left;}
	
	/* 저장 버튼 */
	.save_btn{position: absolute; right:206px; top:0px;}
	
	/* 칼럼 */
	.portlet-header{width:100%;height:100%;text-align:center;}
	
	/* 넘버 자식 */
	.ord{position: absolute; left:13px; top:11px;}
	
</style>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
	  $( function() {
	    $( ".column" ).sortable({
	      connectWith: ".column",
	      handle: ".portlet-header",
	      
		   /* 드래그 멈췄을 때 값 */
	      stop:function(event, ui) {	    	 
	    	  $('.column li span.ord').remove(); //삭제
	    	  $('.plan_box li').each(function() { //each = 반복문
	    		  $(this).append("<span class='ord'>"+($(this).index()+1)+"</span>");	    		
	    	  });
	      }
	    });
	      
	      $( ".portlet" )
	      .addClass( "ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" )
	      .find( ".portlet-header" )
	        .addClass( "ui-widget-header ui-corner-all" )
	        .prepend( "<span class='ui-icon ui-icon-minusthick portlet-toggle'></span>");
	    });
	  
	 </script>
</head>
<body>
	<div class="Tour_plan_body">
		<div class="middle">
			<ul class="left_reviewlist column">
				<% while(rs.next()) { %>
					<li class ="portlet">
						<div class="portlet-header">
							<%=rs.getString("tour.place_name")%>					
							<input type="hidden" name="cart_no" value="<%=rs.getInt("cart.tour_seq")%>"/>
						</div>
					</li>
				<% } %>
			</ul>
			
			<div class="right_map">지도</div>
		</div>
		
		<form method ="post" action="Save_Action.jsp">
			<input type="hidden" name="member_seq" value="<%=seq%>"/>
			<div class="ps">
				<div class="plan_mini_box">
					스케줄 <br> 짜기
				</div>
			
				 <ul class="plan_box float column">
				 		<!-- 칼럼 -->
				 </ul>
	
				<button type="submit" class="save_btn">저장하기</button>
			</div>
		</form>
	
	</div>	
	
<% pstmt.close(); conn.close(); %>
</body>
</html>
