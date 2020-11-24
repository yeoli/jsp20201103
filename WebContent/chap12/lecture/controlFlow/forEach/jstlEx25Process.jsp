<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*" %>
    <%@ page import = "chap05.Post" %>
    <%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%request.setCharacterEncoding("utf-8");%>
<%
String title = request.getParameter("title");
String body = request.getParameter("body");

Post post = new Post();
post.setTitle(title);
post.setBody(body);

List<Post> list = (List<Post>) application.getAttribute("list"); 

if (list == null) {
	list = new ArrayList<>();
	application.setAttribute("list", list);
}

list.add(post);

response.sendRedirect("jstlEx25.jsp");
%>