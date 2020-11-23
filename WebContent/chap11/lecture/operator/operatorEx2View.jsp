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
<h1>더한값 : ${param.num1 + param.num2}</h1>
<h1>뺀값 : ${param.num1 - param.num2}</h1>
<h1>곱한값 : ${param.num1 * param.num2}</h1>
<h1>나눈값 : ${param.num1 / param.num2}</h1>
<h1>나눈값 : ${param.num1 div param.num2}</h1>
<h1>나머지값 : ${param.num1 % param.num2}</h1>
<h1>나머지값 : ${param.num1 mod param.num2}</h1>
</body>
</html>