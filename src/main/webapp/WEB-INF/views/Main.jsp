<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String tp = request.getParameter("target");
//String tp = "TourList";
if (tp == null) {
	tp = "Tour_list";
}
String targetpage = tp + ".jsp";

java.util.Date today = new java.util.Date(); //현재 날짜(변하는 값)
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/CSS/Reset.css" />

<!-- 모든 css -->
<link rel="stylesheet" href="resources/CSS/all.css?v=<%=today%>" />

<title>메인 페이지</title>
<style></style>
</head>
<body>
	<div>
		<jsp:include page="Top.jsp" flush="false" />
	</div>

	<jsp:include page="Menu2.jsp" flush="false" />

	<jsp:include page="<%=targetpage%>" flush="false" />

</body>
</html>