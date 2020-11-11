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
<h1>pageContext methods</h1>
<% pageContext.setAttribute("pageAttr1", "pageVal1");
   request.setAttribute("reqAttr1", "reqVal1");
   session.setAttribute("sesAttr1", "sesVal1");
   application.setAttribute("appAttr1", "appVal1");
%>

<%= pageContext.getAttribute("pageAttr1") %> <!--  pageContext영역에서 --> <br />
<%= pageContext.getAttribute("reqAttr1", PageContext.REQUEST_SCOPE) %> <br />
<%= pageContext.getAttribute("sesAttr1", PageContext.SESSION_SCOPE) %> <br />
<%= pageContext.getAttribute("appAttr1", PageContext.APPLICATION_SCOPE) %>
</body>
</html>