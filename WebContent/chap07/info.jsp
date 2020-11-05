<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*" %>
    <%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>INFO</title>
</head>
<body>
<table width = "100%"  border = "1" cellpadding="0">
<tr>
	<td>제품번호</td>
	<td>XXXX</td>	
</tr>
<tr>
	<td>가격</td>
	<td>10,000원</td>
</tr>
</table>

<jsp:include page = "infoSub.jsp" flush="false">
	<jsp:param name="type" value="A"></jsp:param>
</jsp:include>
</body>
</html>