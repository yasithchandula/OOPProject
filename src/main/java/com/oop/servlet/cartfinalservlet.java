package com.oop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.service.Cartservice;

/**
 * Servlet implementation class cartfinalservlet
 */
@WebServlet("/cartfinalservlet")
public class cartfinalservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		float total=Float.parseFloat(request.getParameter("cartend"));
		
		Cartservice.cartfinal(total);
		
		RequestDispatcher dis=request.getRequestDispatcher("cart.jsp");
		dis.forward(request, response);
		
		
	}

}
