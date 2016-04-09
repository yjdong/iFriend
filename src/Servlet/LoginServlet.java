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

		// ��ȡ�ύ���û�����
		String strUserName = request.getParameter("name");
		// ��ȡ�ύ�����룺
		String strPassword = request.getParameter("password");

		// �������ݿ����Ӷ���
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
			// sql��䣺
			String sql = "select * from userstable where name='"
					+ strUserName + "' and password='" + strPassword + "'";
			// �������ݼ�¼������
			stmt = conn.createStatement();
			// ִ��sql��䣬����һ����¼����rs��
			rs = stmt.executeQuery(sql);
			
			// �����¼��Ϊ�ǿգ���������ƥ����û��������룬��¼�ɹ���
			if (rs.next()) {
				// ��¼�ɹ�ʱ,��strUserName���session����UserName
				request.getSession(true).setAttribute("userName", strUserName);
				response.sendRedirect("index1.jsp");
			} else {
				// ���򣨼�¼��Ϊ�գ�������ʧ�ܣ�
				request.setAttribute("error", "��¼ʧ��");
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
			// �ر����ӣ��ͷ����ݿ���Դ��
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
