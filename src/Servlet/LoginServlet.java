package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class for Servlet: LoginServlet
 */
public class LoginServlet extends javax.servlet.http.HttpServlet implements
		javax.servlet.Servlet {
	/*
	 * (non-Java-doc)
	 * 
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
	}

	/*
	 * (non-Java-doc)
	 * 
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request,
	 *      HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/*
	 * (non-Java-doc)
	 * 
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request,
	 *      HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("textml;charset=UTF-8");
		String result = "";

		// 获取提交的用户名：
		String strUserName = request.getParameter("name");
		// 获取提交的密码：
		String strPassword = request.getParameter("password");

		// 创建数据库连接对象：
		request.getSession(true).setAttribute("name", strUserName);
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
	    String driver = "net.sourceforge.jtds.jdbc.Driver";
	    String url = "jdbc:jtds:sqlserver://localhost:1833;DatabaseName=ifriends";
	     String u1="sa";
	     String u2="123";

		try {
			Class.forName(driver);
    		conn=DriverManager.getConnection(url,u1,u2);
			// sql语句：
			String sql = "select * from userstable where name='"
					+ strUserName + "' and password='" + strPassword + "'";
			// 创建数据记录集对象：
			stmt = conn.createStatement();
			// 执行sql语句，返回一个记录集到rs：
			rs = stmt.executeQuery(sql);
			
			// 如果记录集为非空，表明有相匹配的用户名和密码，登录成功：
			if (rs.next()) {
				// 登录成功时,把strUserName设成session变量UserName
				request.getSession(true).setAttribute("userName", strUserName);
				response.sendRedirect("index1.jsp");
			} else {
				// 否则（记录集为空），表明失败：
				request.setAttribute("error", "登录失败");
				try {
					request.getRequestDispatcher("/error.jsp").forward(request,response);
				} catch (Throwable t) {
					getServletContext().log(t.getMessage());
				}
			}
		} catch (SQLException sqlExc) {
			sqlExc.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 关闭连接，释放数据库资源：
			try {
				if (rs != null) {
					rs.close();
				}
				if (stmt != null) {
					stmt.close();
				}
				if(conn != null)
				{
					conn.close();
				}
			} catch (SQLException sqlExc) {
				sqlExc.printStackTrace();
			}
		}
	}
}
