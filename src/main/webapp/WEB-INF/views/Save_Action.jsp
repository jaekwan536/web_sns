<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="sql_open.jsp" %>
<%	
	int seq = 0; //shedule seq 초기화/기본값
	int member_seq = Integer.parseInt(request.getParameter("member_seq")); //getParameter는 항상 String 형태로 반환하기 때문에 형변환 필요
	int schedule_seq = 0;
	Timestamp date = new Timestamp(System.currentTimeMillis());
	
	String sql = "insert into schedule (member_seq, schedule_name, plan_date, plan_hit, on_off) values(?, ?, ?, ?, ?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, member_seq); // Tour_plan 에서 받아온 회원 번호
	pstmt.setString(2, "");
	pstmt.setTimestamp(3, date);
	pstmt.setInt(4, 0);
	pstmt.setInt(5, 0);
	
	pstmt.executeUpdate();
	
	sql = "select last_insert_id()"; //첫번째 AUTO_INCREMENT column의 값을 반환
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	if(rs.next()) { schedule_seq = rs.getInt("last_insert_id()"); }
	
	String[] cart_no = request.getParameterValues("cart_no");
	
	//반복문 //  StringBuffer.setLength(0) 사용해보기
	for(int i = 0; i < cart_no.length; i++) {	
		sql = "insert into schedule_detail (schedule_seq, tour_seq, sort) values( ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, schedule_seq);
		pstmt.setString(2, cart_no[i]); //tour_seq
		pstmt.setInt(3, i+1); //sort
		
		pstmt.executeUpdate();
	}
	
	pstmt.close();
	conn.close();
%>
	<script>
		alert("성공적으로 스케줄을 짰습니다.");
		location.href="Main.jsp";
	</script>
