<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "chap14.Employee" %>
    <%request.setCharacterEncoding("utf-8");%>
    
<%
String eno = request.getParameter("eno");
String sql = "SELECT e.eno, e.ename, e.hiredate, e.salary, d.dname, e.job, s.grade, DECODE(ma.ename, null, e.ename, ma.ename) "
            +"FROM employee e, employee ma, department d, salgrade s "
            +"WHERE e.dno = d.dno AND e.eno = ? "
            +"AND e.salary BETWEEN s.losal AND s.hisal "
            +"AND e.manager = ma.eno(+)";

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

stmt.setInt(1, Integer.parseInt(eno)); //? 채워놓고

//4. 쿼리 실행
ResultSet rs = stmt.executeQuery();
Employee emp = null;

//5. 쿼리 실행 결과 사용
int co = 1; 
while (rs.next()) {
	emp = new Employee();
	
    emp.setEno(rs.getInt(co++));
	emp.setEname(rs.getString(co++));
	emp.setHireDate(rs.getTimestamp(co++).toLocalDateTime());
	emp.setSalary(rs.getInt(co++));
	emp.setDname(rs.getString(co++));
	emp.setJob(rs.getString(co++));
	emp.setGrade(rs.getInt(co++));
	emp.setManager(rs.getString(co++));

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
<div class="container">
  <h1>사원 정보 <%=emp.getEname() %></h1>
  	<ul>
    	<li>사번 : <%=emp.getEno() %></li>
    	<li>이름 : <%=emp.getEname() %></li>
    	<li>입사일 : <%=emp.getHireDate() %></li>
    	<li>월급 : <%=emp.getSalary() %></li>
    	<li>부서 : <%=emp.getDname() %></li>
    	<li>직급 : <%=emp.getJob() %></li>
    	<li>등급 : <%=emp.getGrade() %></li>
    	<li>담당매니저 : <%=emp.getManager() %></li>
  	</ul>
</div>
</body>
</html>