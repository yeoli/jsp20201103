package chap14.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class DetailServlet
 */
@WebServlet("/sample3/post/detail")
public class DetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Post post = getPost(id);
		List<Post> posts = getPosts();
		
		String path = "/WEB-INF/view/chap17/main.jsp";
		request.setAttribute("post", post);
		request.setAttribute("posts", posts);
		request.getRequestDispatcher(path).forward(request, response);
		
	}
	
	private List<Post> getPosts() {
		List<Post> list = new ArrayList<>();
		
		String sql = "SELECT id, title FROM post ORDER BY id";
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	    String user = "c##mydbms"; // mydb00
	    String password = "admin"; // adminAdmin12
	
		try {
			// 1.드라이버로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2.연결생성
			Connection con = DriverManager.getConnection(url, user, password);
			// 3.statement생성
			Statement stmt = con.createStatement();
			// 4.쿼리 실행
			ResultSet rs = stmt.executeQuery(sql);
			// 5.결과 처리
			while (rs.next()) {
			 Post p = new Post();
			 p.setId(rs.getInt(1));
			 p.setTitle(rs.getString(2));
			 list.add(p);
			}
			// 6. statement, 연결 닫기
			stmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return list;
	}

	private Post getPost(String id) {
        Post p = null;
		String sql = "SELECT body FROM post WHERE id = ?";
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	    String user = "c##mydbms"; // mydb00
	    String password = "admin"; // adminAdmin12
	
		try {
			// 1.드라이버로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2.연결생성
			Connection con = DriverManager.getConnection(url, user, password);
			// 3.statement생성
			PreparedStatement stmt = con.prepareStatement(sql);
			
			stmt.setInt(1, Integer.parseInt(id));
			// 4.쿼리 실행
			ResultSet rs = stmt.executeQuery();
			// 5.결과 처리
			String text = "없음";
			
			while (rs.next()) {
			  p = new Post();
			  p.setBody(rs.getString(1));
			}
			// 6. statement, 연결 닫기
			stmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return p;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("main");
	}

}
