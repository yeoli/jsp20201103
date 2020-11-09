<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*" %>
    <%@ page session = "true" %>
    <%@ page import = "java.text.SimpleDateFormat" %>
    <%request.setCharacterEncoding("utf-8");%>
    <%
    	Date time = new Date();
    	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
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
세션ID : <%=session.getId() %> <br />
<%
 time.setTime(session.getCreationTime());
%>
세션생성시간: <%=formatter.format(time) %> <br />
<%
 time.setTime(session.getLastAccessedTime());
%>
최근접근시간: <%=formatter.format(time) %>
</body>
</html>