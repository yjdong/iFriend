package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Classes.Try;

public class ComposeServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ComposeServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("textml;charset=UTF-8");
		String newsString = request.getParameter("content");
		String newsauthor = request.getSession().getAttribute("name").toString();
		Date now = new Date();
	    Calendar cal = Calendar.getInstance();
	     
	    DateFormat d1 = DateFormat.getDateInstance(); //默认语言（汉语）下的默认风格（MEDIUM风格，比如：2008-6-16 20:54:53）
	      String str1 = d1.format(now);
	      DateFormat d2 = DateFormat.getDateTimeInstance();
	      String str2 = d2.format(now);
	    Try try1 = new Try();
	    try1.writeNew(newsauthor, str2, newsString);
	    request.getRequestDispatcher("/she.jsp").forward(request,response);

	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
