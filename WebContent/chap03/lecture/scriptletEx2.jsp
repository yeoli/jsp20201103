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
<%
for(int i=0; i<5; i++) {	
%>
<h1>Lorem ipsum dolor.</h1>
<%}%>

<%
java.util.List<String> list = new java.util.ArrayList<>();
list.add("java");
list.add("dfd");
list.add("hhf");
list.add("mkl");
%>

<ul>
<%
for(String item : list) {
%>
<li>
<% out.print(item); %>
</li>
<%
}%>
</ul>

<% boolean danger = false; %>
<% if(danger) { %>
<h1 class = "text-danger">Danger!!</h1>
<% } else { %>
<h1 class = "text-info">INFO~~~~</h1>
<%
}%>

<%for(int i=0; i<5; i++) { 
 for(int j=-1; j<i; j++) {
	out.print("*"); 
 }%>
   <br>
 <% } %>
 
 <br>
 
<% for(int i=0; i<5; i++) { 
 for(int j=5; j>i; j--) {
 	out.print("*");
 	}%>
 	<br>
 <% } %>
 
<% for(int i=1; i<6; i++) {
	for(int j=1; j<i+1; j++) {
	out.print(" ");}%>
	<br>
<% } out.print("*"); %>

</body>
</html>