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
관리자 번호를 입력하면 사번 목록 출력<br />
<form action="joinEx6View.jsp">
<input type="number" name="manager" />
<br />
<select name="job" id="">
	<option value="CLERK">CLERK</option>
	<option value="SALESMAN">SALESMAN</option>
	<option value="PRESIDENT">PRESIDENT</option>
	<option value="MANAGER">MANAGER</option>
	<option value="ANALYST">ANALYST</option>
</select>
<input type="submit" value="찾기" />
</form>
</body>
</html>