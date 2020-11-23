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
${3 == 3 } <br />
${3 eq 3 } <br />

<hr />
${3 != 4 } <br />
${3 ne 4 } <br />

<hr />
${3 < 4 } <br />
${3 lt 4 } <br /> <!--less than  --> 

<hr />
${4 > 3 } <br />
${4 gt 3 } <br /> <!--greater than  --> 

<hr />
${3 <= 4 } <br />
${3 le 4 } <br /> <!--less equal --> 

<hr />
${4 >= 3 } <br />
${3 ge 4 } <br /> <!--greater equal than  --> 

</body>
</html>