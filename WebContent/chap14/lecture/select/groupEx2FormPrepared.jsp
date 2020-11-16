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
<title>Insert title here</title>
</head>
<body>
<h1>업무별 최대, 최소, 평균, 합계 봉급 보기</h1>
<form action="groupEx2ViewPrepared.jsp">
<select name="job" id="">
	<option value="CLERK">CLERK</option>
	<option value="SALESMAN">SALESMAN</option>
	<option value="PRESIDENT">PRESIDENT</option>
	<option value="MANAGER">MANAGER</option>
	<option value="ANALYST">ANALYST</option>
</select>
<br />
<input type="submit" value="보기"/>
</form>
</body>
</html>