<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="chap05.Post"%>
<%request.setCharacterEncoding("utf-8");%>

<%
 String id = request.getParameter("id");
 int i = Integer.parseInt(id);

 List<Post> list = (List<Post>) application.getAttribute("list");
 Post post = list.get(i); 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	제목 :
	<input type="text" value="<%= post.getTitle()%>" readonly />
	<br />
	<textarea cols="30" rows="10" readonly><%= post.getBody() %></textarea>
	<br />
	<a href="post.jsp">게시글 작성</a>
</body>
</html>