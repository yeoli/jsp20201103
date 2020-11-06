<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*" %>
<%@ page import ="chap07.User" %>
<%request.setCharacterEncoding("utf-8");%>
<%
List<User> userList = new ArrayList<>();
userList.add(new User("ironman", "ny", 50));
userList.add(new User("cap", "seoul", 40));
userList.add(new User("spider", "la", 30));
userList.add(new User("hulk", "jeju", 33));
userList.add(new User("thor", "asgard", 22));
userList.add(new User("panther", "busan", 11));

request.setAttribute("users", userList);
%>

<jsp:forward page="subEx4.jsp" />