<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*" %>
    <%@ page import ="chap07.User" %>
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
<%
List<User> users = (List<User>) request.getAttribute("users");

%>

<div class="container">
  <table class="table table-striped">
    <thead>
    	<tr>
    		<th>#</th>
    		<th>Name</th>
    		<th>Address</th>
    		<th>Age</th>
    	</tr>
    </thead>
    <%
    for (int i = 0; i < users.size(); i++) {
    %>
      <tr>
      	<td><%= i+1 %></td>
      	<td><%= users.get(i).getName() %></td>
      	<td><%= users.get(i).getAddress() %></td>
      	<td><%= users.get(i).getAge() %></td>
      </tr>
    <%  
    }
    %>
  </table>
</div>
</body>
</html>