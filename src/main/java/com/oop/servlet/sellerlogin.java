package com.oop.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oop.service.CustomerDBUtil;
import com.oop.service.sellerDBUtil;

/**
 * Servlet implementation class sellerlogin
 */
@WebServlet("/sellerlogin")
public class sellerlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		boolean isTrue;
		
		isTrue = sellerDBUtil.validate(userName, password);
		
		if (isTrue == true) {
			
			
			RequestDispatcher dis = request.getRequestDispatcher("seller.jsp");
			dis.forward(request, response);
			
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='sellerlogin.jsp'");
			out.println("</script>");
		}
	}

}
