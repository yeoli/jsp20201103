package chap17.sample3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;
import chap20.lecture.DBUtil;

/**
 * Servlet implementation class RemoveServlet
 */

/* 선생님 꺼는 이름에 2 가 붙음 */
@WebServlet("/sample3/post/remove")
public class RemoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		// delete jdbc code
		remove(id);
		
		response.sendRedirect(request.getContextPath() + "/sample3/post/main");
		
	}

	private void remove(String id) {
		String sql = "DELETE FROM post WHERE id=?";
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	    String user = "c##mydbms"; // mydb00
	    String password = "admin"; // adminAdmin12
	
	    try {
			// 1.드라이버로딩
			//Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2.연결생성
			//Connection con = DriverManager.getConnection(url, user, password);
			// 3.statement생성
	    	Connection con = DBUtil.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, Integer.valueOf(id));
			
			// 4.쿼리 실행
			pstmt.executeUpdate();
			// 5.결과 처리
			
			// 6. statement, 연결 닫기
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
