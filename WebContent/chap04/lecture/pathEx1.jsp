<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*" %>
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
<h1>path</h1>
<a href="<%=request.getContextPath()%>/chap04/lecture/contextPathEx2Sub.jsp">lulu</a>
<br />
<a href="contextPathEx2Sub.jsp">other file 2</a><!-- 같은 파일 내 jsp만 가능 -->
<br />
<a href="<%=request.getContextPath() %>/chap04/lecture/subfolder/pathEx1Sub.jsp">절대경로</a>
<br />
<a href="subfolder/pathEx1Sub.jsp">상대경로</a><!-- 그래서 경로 파일 추가함 -->
<a href=""></a>
</body>
</html>