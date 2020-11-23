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
<h3>empty</h3>
null : ${empty abc } <br />
"" : ${empty "" } <br /> <!--있어도 빈 스트링이면 true  -->
<%
List list = new ArrayList<>();
pageContext.setAttribute("list", list);
%>
list : ${empty list} <br /> <!-- 있어도 빈 리스트여서 true -->

<%
Map map = new HashMap<>();
pageContext.setAttribute("map", map);
%>
map : ${empty map} <br />

<hr />

${not empty abc } <br />
</body>
</html>