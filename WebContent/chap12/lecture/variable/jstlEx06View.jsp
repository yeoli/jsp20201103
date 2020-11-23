<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*" %>
    <%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%request.setCharacterEncoding("utf-8");%>
    
<c:set var="ok" value="${param.id ne param.pw }" scope="request" />

<jsp:forward page="jstlEx06Forward.jsp" />