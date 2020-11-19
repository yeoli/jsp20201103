<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*" %>
    <%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="car" class="chap08.Car"/>
<%
/* car.setName(request.getParameter("carName"));
car.setSpeed(Integer.valueOf(request.getParameter("carSpeed"))); */
%>
<jsp:setProperty name="car" property="name" param="carName"/>
<jsp:setProperty name="car" property="speed" param="carSpeed"/>
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
<jsp:getProperty property="name" name="car"/>
<jsp:getProperty property="speed" name="car"/>
</body>
</html>