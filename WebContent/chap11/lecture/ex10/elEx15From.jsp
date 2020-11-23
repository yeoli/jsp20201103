<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*" %>
    <%request.setCharacterEncoding("utf-8");%>
<%
pageContext.setAttribute("pageAttr1", "pageValue1");

request.setAttribute("req Attr1", "req Value1");
request.setAttribute("reqAttr2", "req Value2");

session.setAttribute("sesAttr2", "sesAttr2");
session.setAttribute("reqAttr2", "ses Value2");

application.setAttribute("reqAttr2", "app value2");
application.setAttribute("appAttr1", "app value1");
application.setAttribute("app Attr3", "app value3");
%>

<jsp:forward page="elEx15To.jsp"></jsp:forward>
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

</body>
</html>