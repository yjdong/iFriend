package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Classes.Try;


public class RegisterServlet extends HttpServlet {


	public RegisterServlet() {
		super();
	}

	public void destroy() {
		super.destroy();
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("textml, charset = UTF-8");
		String name = request.getParameter("name");

		String password = request.getParameter("password");
		String realName = request.getParameter("realname");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String sage = request.getParameter("age");
		int age =  Integer.parseInt(sage);
		String work = request.getParameter("work");
		String area = request.getParameter("area");
		String hobby = request.getParameter("hobby");
		String birthday = request.getParameter("birthday");
		
		
		Try user = new Try();
		boolean isExist=user.isExist(name);
		if(isExist == true)
		{
			try {
				request.getRequestDispatcher("checkUid2.jsp").forward(request,
					response);
			} catch (Throwable t) {
				getServletContext().log(t.getMessage());
			}
		}
		else{
			
		try {
			request.setAttribute("pp",name);
			user.regist(name, password, realName, gender, email, age, work, area, hobby, birthday);
			request.getRequestDispatcher("checkimage.jsp?").forward(request,
					response);
		} catch (Throwable t) {
			getServletContext().log(t.getMessage());
		}
		}
	}

	public void init() throws ServletException {
		// Put your code here
	}

}

