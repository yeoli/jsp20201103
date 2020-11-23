<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*" %>
    <%@ page import = "chap08.Car" %>
    <%request.setCharacterEncoding("utf-8");%>
<%
Map<String, Object> map = new HashMap<>();

List<String> list = new ArrayList<>();
list.add("java");
list.add("spring");

Car car = new Car();
car.setName("hyundai");

map.put("cars", list);
map.put("my car", car);

pageContext.setAttribute("map", map);
%>
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
${map.cars[0] } <br />
${map.cars[1] } <br />
${map["my car"].name } <br /> 
</body>
</html>