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
<title>1-10까지의 합</title>
</head>
<body>
<% 
int sum = 0;
for(int i=0; i<=10; i++)
sum = sum + i;%>
1부터 10까지의 합은 <%= sum %>입니다.
<br>
<%
int sum2 = 0;
for(int i=11; i<=20; i++) {
sum2 = sum2 + i; }%>
11부터 20까지의 합은 <%= sum2 %>입니다.
</body>
</html>