<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*" %>
    <%request.setCharacterEncoding("utf-8");%>
   <% String name = request.getParameter("name");
   	  String value = request.getParameter("value");
   	  
   	  if(name != null && value != null) {
   	  	application.setAttribute(name, value);
   	  }
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
<% if(name != null && value != null) { %>
application 기본 객체의 속성 설정: 
<%= name %> = <%= value %>
<% } else { %>
application 기본 객체의 속성 설정 안함
<% } %>
</body>
</html>