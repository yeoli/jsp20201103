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
<h3>and</h3>
${true && true } <br />
${true && false } <br />
${false && true } <br />
${false && false } <br />
<hr />
${true and true } <br />
${true and false } <br />
${false and true } <br />
${false and false } <br />
<hr />
<h3>or</h3>
${true || true } <br />
${true || false } <br />
${false || true } <br />
${false || false } <br />
<hr />
${true or true } <br />
${true or false } <br />
${false or true } <br />
${false or false } <br />
<hr />
<h3>not</h3>
${! true } <br />
${! false } <br />
<hr />
${not false } <br />
${not true } <br />
</body>
</html>