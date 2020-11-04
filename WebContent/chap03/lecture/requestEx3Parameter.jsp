<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*" %>
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
<form action="">
	name : <input type = "text" name = "frame" /><br>
	age : <input type = "number" name = "age" id="" /><br>
	<input type = "submit" value="전송" class="btn btn-primary" />
	gender : 남자 <input type="radio" name = "gender"  value="male" id="" />
			 여자 <input type="radio" name = "gender"  value="female" id="" /><br>
	food : pizza <input type = "checkbox" name="food" value="pizza" id=""/>
		   burger <input type="checkbox" name="food" value="burger" id=""/>
		   icecream <input type="checkbox" name="food" value="icecream" id=""/>
		   water <input type="checkbox" name="food" value="water" id="" /><br>
	</form>

<%String name = request.getParameter("frame"); 
  String age = request.getParameter("age");
  String gender = request.getParameter("gender");
  String[] food = request.getParameterValues("food");
%>
name : <%=name %><br>
age : <%=age %><br>
gender : <%=gender %><br>
food : <%   int i =0;

			if(food != null){
		    for(String item : food){
  			out.print(item);
  		    i++;
  			if(i != food.length)
  			out.print(", ");
  			}
		}%>
<%-- food : <%if(food != null) { 
		for(int i =0; i<food.length; i++) {
			out.print(food[i]);
			if(i != food.length-1){
				out.print(", ");
			}
		 }	
		}%> --%>
		
</body>
</html>