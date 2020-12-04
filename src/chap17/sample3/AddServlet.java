package chap17.sample3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class AddServlet
 */
@WebServlet("/sample3/post/add")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		
		if (title != null && body != null && !title.isEmpty() && !body.isEmpty()) {
			Post post = new Post();
			post.setTitle(title);
			post.setBody(body);
			
			int row = insert(post);
			
			if(row == 1) {
				System.out.println("insert 성공~");
			} else {
				System.out.println("insert 오류.....");
			}
		}
		
		response.sendRedirect("main");
	}
    
	private int insert(Post post) {
		String sql = "INSERT INTO post "
			     +"(title, body) "
				 +"VALUES (?, ?)";
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	    String user = "c##mydbms"; // mydb00
	    String password = "admin"; // adminAdmin12
	
	    int row = 0;
		try {
			// 1.드라이버로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2.연결생성
			Connection con = DriverManager.getConnection(url, user, password);
			// 3.statement생성
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, post.getTitle());
			pstmt.setString(2, post.getBody());
			// 4.쿼리 실행
			row = pstmt.executeUpdate();
			// 5.결과 처리
			
			// 6. statement, 연결 닫기
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	      return row;
    }
}

