<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*" %>
     <%@ taglib prefix="my" tagdir="/WEB-INF/tags/lecture" %>
    <%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
<div class="container">
<h1>방명록</h1>
<form action="<%= request.getContextPath() %>/sample3/post/add" method = "post">
제목 : <input type="text" name="title" />
<br />
<textarea name="body" id="" cols="30" rows="5"></textarea>
<br />
<input type="submit" class="btn btn-primary" value="등록"/>
</form>
</div>
<hr />
<div class="container">
  <table class="table">
   <thead>
  	<tr>
  		<th>번호</th>
  		<th>제목</th>
  	</tr>
   </thead>
   <tbody>
   	  <c:forEach items="${ posts}" var="post">
   	    <tr>
   	      <td><a href="<%= request.getContextPath() %>/sample3/post/detail?id=${post.id}">
   	      ${post.id }</a></td>
   	      <td>${post.title }</td>
   	    </tr>
   	  </c:forEach>
   </tbody>
  </table>
</div>
<div class="container">
  <textarea name="body2" id="" cols="30" rows="5">${post.body}</textarea>
</div>
</body>
</html>