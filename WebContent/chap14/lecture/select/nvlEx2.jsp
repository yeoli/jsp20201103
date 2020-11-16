<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%request.setCharacterEncoding("utf-8");%>
<%
class Emp {
  private String ename;
  private int sal;
  
  public void setEname(String ename) {
	  this.ename = ename;
  }
  
  public void setSal(int sal) {
	  this.sal = sal;
  }
  
  public String getEname() {
	  return this.ename;
  }
  
  public int getSal() {
	  return this.sal;
  }
}

String sql = "SELECT ename, salary*12+NVL(commission, 0) "
			 +" FROM employee";

List<Emp> list = new ArrayList<>();

Class.forName("oracle.jdbc.driver.OracleDriver");

//2. 데이터베이스 커넥션 구함
Connection con = null;
Statement stmt = null;
ResultSet rs = null;

String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

con = DriverManager.getConnection(url, id, pw);
//3. 쿼리 실행을 위한 statement 객체 생성
stmt = con.createStatement();

//4. 쿼리 실행
rs = stmt.executeQuery(sql);

//5. 쿼리 실행 결과 사용
String name = "없음";
int sal = 0;

while(rs.next()) {
  Emp e = new Emp();
  
  name = rs.getString(1);
  sal = rs.getInt(2);
  
  e.setEname(name);
  e.setSal(sal);
  
  list.add(e);
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
<h1>이름 / 연봉</h1>
<ul>
<%
for (Emp e : list) {
%>
  <li><%= e.getEname() %> : <%= e.getSal() %></li>
<%
}
%>
</ul>
</body>
</html>