<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*" %>
    <%request.setCharacterEncoding("utf-8");%>
<%
List<String> list = new ArrayList<>();

if(request.getParameter("cur").equals("normal")) {
	list.add("ㅁㄹㅇ");
	list.add("ㅁㅁㅇㄹ");
	list.add("ㅁㅁㅇㅇㅇㄹ");
} else {
	list.add("ㅇㅎㅎ");
	list.add("ㅇㅇㄹㅇㅎㅎ");
	list.add("ㅇㅇㅎㅎㅎ");
}%>

<div class="card-deck">
<%for(String item:list) { %>
	<div class="card">
		<div class="card-body">
			<h5 class="card-title">
			<%=item %>
			</h5>
		</div>
	</div>
<%
}
%>
</div>