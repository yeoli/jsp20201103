<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*" %>
    <%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="myCar" class="chap08.Car">
  <jsp:setProperty name="myCar" property="name" value="kia" />
</jsp:useBean>

<%
Map<String, String> map = new HashMap<>();
map.put("myKey1", "my value1");
pageContext.setAttribute("myMap", map);
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
${myCar.name } <br />
${myMap.myKey1 } <br />

<c:set target="${myCar }" property="name" value="benz"/>
<c:set target="${myMap }" property="myKey1" value="변경된 값"/>
<c:set target="${myMap }" property="myKey1" value="추가된 값"/>

<hr />

${myCar.name } <br />
${myMap.myKey1 } <br />
${myMap.myKey2 } <br />
</body>
</html>