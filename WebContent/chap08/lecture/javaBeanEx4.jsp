<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*" %>
    <%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id = "member" class = "chap08.member.MemberInfo" scope="request"/>
<%
Object o = request.getAttribute("member");
System.out.println(o);
%>

<jsp:forward page="javaBeanEx4Forward.jsp"></jsp:forward>