<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "chap14.Angg" %>
    <%request.setCharacterEncoding("utf-8");%>
<%
String manager = request.getParameter("manager");
String job = request.getParameter("job");

String sql = "SELECT employees.ename, employees.eno, manager.ename "
			+"FROM employee employees, employee manager "
			+"WHERE employees.manager = manager.eno "
			+"AND employees.manager = ? AND employees.job = ?";

List<Angg> list = new ArrayList<>();

//1. jdbc 드라이버 로딩
Class.forName("oracle.jdbc.driver.OracleDriver");

//2. 데이터베이스 커넥션 구함

String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

Connection con = DriverManager.getConnection(url, id, pw);
//3. 쿼리 실행을 위한 statement 객체 생성
/* stmt = con.createStatement(); */
PreparedStatement stmt = con.prepareStatement(sql);

stmt.setInt(1, Integer.parseInt(manager)); //? 채워놓고
stmt.setString(2, job);

//4. 쿼리 실행
ResultSet rs = stmt.executeQuery();

String mam = "없음";

//5. 쿼리 실행 결과 사용
while (rs.next()) {
	Angg ang = new Angg();
	
    ang.setAs(rs.getString(1));
	ang.setAn(rs.getInt(2));
	mam = rs.getString(3);
	
	list.add(ang);
}
//6. statement 종료
stmt.close();

//7. 데이터베이스 커넥션 종료
con.close();

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
<%=manager %> <%= mam %>가 관리하는 사원들 정보
<%for (int i = 0; i<list.size(); i++) { %>
<ul>
	<li><%=list.get(i).getAs() %> : <%=list.get(i).getAn() %></li>
</ul>
<%
}
%>
</body>
</html>