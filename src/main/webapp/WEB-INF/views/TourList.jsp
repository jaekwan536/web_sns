<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String tp2 = request.getParameter("target2"); //target2 읽어와서 tp2에 저장
if (tp2 == null) {
	tp2 = "Knit";
}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 	
<title>Insert title here</title>
<style>
	.Right{width: 1098px; height: 1200px; margin:auto; padding:0; background:red;} /* margin:auto = 가운데정렬  260*/

	
	.right li {float:left; width:250px; height:200px; box-shadow: 0 1px 3px 0 hsla(0,0%,86.3%,.3); border-radius: 4px; border: 1px solid #d9d9d9;
				margin-right:30px; margin-bottom:30px; background: blue;
					}
	.right li:nth-child(4), .right li:nth-child(4){margin-right:0;} /* 4번째 8번째요소 초기화 */
	.right li img{width:100%; height:100%;}
	/* .right p{text-align:center; font-weight:600; font-size:16px; line-height:15px;} */
</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8"); // 한글 처리
	Connection conn = null;
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	String viewtype = null;
	
	Class.forName("com.mysql.jdbc.Driver"); //mysql 드라이버 로딩
	String jdbcUrl = "jdbc:mysql://localhost:3306/jsp2021?useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	String dbId = "jspid";
	String dbPass = "jsppass";
	
	conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);

	String sql = "select * from tour_list";	
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	
	%>
	
	<div class="Right">
	<ul class="right" >
	<% while(rs.next()) { %>
		<li>
			<a href="#">
				<img src="<%=rs.getString("place_img1")%>" >
				<!--  <p><%=rs.getString("place_name") %></p> -->
			</a>
		</li>	
	<% } %>
	</ul>
	</div>
</body>
</html>