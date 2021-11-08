package com.oop.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oop.model.Customer;
import com.oop.service.CustomerDBUtil;

/**
 * Servlet implementation class afterlogin
 */
@WebServlet("/afterlogin")
public class afterlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String userName=(String)session.getAttribute("username");
		System.out.println(userName);
		
		List<Customer> cusDetails = CustomerDBUtil.getCustomer(userName);
		request.setAttribute("cusDetails", cusDetails);
		
		RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
		dis.forward(request, response);
		
	}

}
