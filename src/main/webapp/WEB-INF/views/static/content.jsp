<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/bootstrap.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/grid.less" />" rel="stylesheet">
<link href="<c:url value="/resources/css/navbar.less" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-3.3.1.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.js" />"></script>
<title>Insert title here</title>
</head>
<body style="background-color: #f3f3f3;">

	<jsp:include page="header.jsp" />
	<div class="container">
		<div class="jumbotron" 
			style="background-color: #f3f3f3; padding-left: 0px; padding-right: 0px;">
			<jsp:include page="./../${contentView}" />
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>