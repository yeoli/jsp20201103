<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*" %>
    <%request.setCharacterEncoding("utf-8");%>
    <%String id = request.getParameter("id");
      String password = request.getParameter("password");
      
      if(id != null && password != null) {
        if(id.equals(password)) {
         	session.setAttribute("id", id);
        } else {
        response.sendRedirect("loginForm.jsp");
        }
      }else {
    	  response.sendRedirect("loginForm.jsp");
       }%>
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
<h1><%= session.getAttribute("id") %>님 반갑습니다.</h1>
<a href="logout.jsp">로그아웃</a>
</body>
</html>