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
<form action="processJoining.jsp" method="post">
<table border="1" cellpading="0" cellspacing="0">
<tr>
  <td>아이디</td>
  <td colspan="3"><input type="text" name="id" size="10"/></td>
</tr>
<tr>
  <td>이름</td>
  <td><input type="text" name="name" size="10"/></td>
  <td>이메일</td>
  <td><input type="text" name="email" size="10"/></td>
</tr>
<tr>
  <td colspan="4" align="center">
  <input type="submit" value="회원가입"/>
  </td>
</tr>
</table>
</form>
</body>
</html>