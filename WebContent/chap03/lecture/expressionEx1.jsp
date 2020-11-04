<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<h1>Lorem ipsum dolor.</h1>
<%
String name = "java";
%>

<%= name %>
<h1 />
<%
java.util.List<String> list = new java.util.ArrayList<>();
list.add("adg");
list.add("ahghr");
list.add("rhh");
list.add("hnnn");
%>

<ul>
<%
for(String item : list) {
%>
	<li><%= item %></li>
<%
}
%>
</ul>
</body>

<hr/>

<%
String status = "danger";
%>

<h1 class="text-<%=status %>">Lorem ipsum dolor.</h1>
</html>