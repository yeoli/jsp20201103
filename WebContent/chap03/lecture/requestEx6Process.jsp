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
<%Set<Integer> lotto = new HashSet<>();
List<Integer> selectedList = new ArrayList<>();

 while(lotto.size() < 6) {
	lotto.add((int) (Math.random() * 45 +1));
	}
	out.print("당첨번호: ");
	out.print(lotto);
	out.print("<br>");%>
<%String[] ss = request.getParameterValues("num");
for(String s : ss) {
	selectedList.add(Integer.valueOf(s));
}%>
선택한 번호 : [<% int i =0;

		    for(String item : ss){
  			out.print(item);
  		    i++;
  			if(i != ss.length)
  			out.print(", ");
  			}
		    %>]<br>
<% int count = 0;
   for(Integer r : selectedList) {
	   if(lotto.contains(r))
		   count++;
 }%>
맞춘 개수 : <%= count %>개
</body>
</html>