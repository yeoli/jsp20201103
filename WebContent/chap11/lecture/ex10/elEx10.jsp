<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*" %>
    <%@ page import = "chap08.Car" %>
    <%request.setCharacterEncoding("utf-8");%>
<%
List<Car> list = new ArrayList<>();
for (int i = 0; i < 5; i++) {
	Car car = new Car();
	car.setName("kia" + i);
	list.add(car);
}

pageContext.setAttribute("cars", list);
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
${cars[0].name } <br />
${cars[1]["name"] } <br />
</body>
</html>