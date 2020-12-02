<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*" %>
     <%@ taglib prefix="my" tagdir="/WEB-INF/tags/lecture" %>
    <%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
<h1>사원 추가</h1>
<form action="<%= request.getContextPath() %>/lulu/add" method="post">
  사번 : <input type="number" name="eno" id="" />
  <br />
  이름 : <input type="text" name="ename" />
  <br />
  부서 : <select name="dno" id="">
    <option value="10">ACCOUNTING</option>
    <option value="20">RESEARCH</option>
    <option value="30">SALES</option>
    <option value="40">OPERATIONS</option>
  </select>
  <br />
  <input type="submit" value="등록" />
</form>
</body>
</html>