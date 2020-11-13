<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*" %>
    <%@ page import = "chap14.Department" %>
    <%@ page import = "chap14.EmployeeDao2" %>
    <%request.setCharacterEncoding("utf-8");%>
<%
List<Department> list = EmployeeDao2.listEmployeeName();
Department dep = new Department();
int count = 0;
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
<table border = "1">
	<tr>
		<td>번호</td>
		<td>이름</td>
		<td>지역</td>
	</tr>
	<%
	  for (int i = 0; i < list.size(); i++) {
		  dep = list.get(i);
		  count += dep.getDno();
	%>
	<tr>
		<td><%=dep.getDno() %></td>
		<td><%=dep.getDname() %></td>
		<td><%=dep.getLoc() %></td>
	</tr>
	<% 
	 }
	%>
</table>
<h3>결과 :  <%= count %></h3>
</body>
</html>