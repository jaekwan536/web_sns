<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8"); // 한글 처리
	Connection conn = null;
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	
	Class.forName("com.mysql.jdbc.Driver"); //mysql 드라이버 로딩
	String jdbcUrl = "jdbc:mysql://localhost:3306/jsp2021?useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	String dbId = "jspid";
	String dbPass = "jsppass";
	
	request.setCharacterEncoding("utf-8"); // 한글 처리
	conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);