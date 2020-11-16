<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%request.setCharacterEncoding("utf-8");%>
<%
String dno = request.getParameter("dno");

String sql = "SELECT MAX(salary), MIN(salary), AVG(salary), "
			+"SUM(salary) FROM employee "
			+"WHERE dno = ?";

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

stmt.setInt(1, Integer.parseInt(dno));

//4. 쿼리 실행
ResultSet rs = stmt.executeQuery();

//5. 쿼리 실행 결과 사용

int max = 0;
int min = 0;
double avg = 0;
int sum = 0;

while(rs.next()) {
	max = rs.getInt(1);
	min = rs.getInt(2);
	avg = rs.getDouble(3);
	sum = rs.getInt(4);
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
<h1>최대 : <%= max %></h1>
<h1>최소 : <%= min %></h1>
<h1>평균 : <%= avg %></h1>
<h1>합계 : <%= sum %></h1>
</body>
</html>