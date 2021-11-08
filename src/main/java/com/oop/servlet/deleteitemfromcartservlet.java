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
 * Servlet implementation class deleteitemfromcartservlet
 */
@WebServlet("/deleteitemfromcartservlet")
public class deleteitemfromcartservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id=Integer.parseInt(request.getParameter("delfromcart"));
		
		Cartservice.delitmfromcart(id);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("cart.jsp");
		dispatcher.forward(request, response);
		
	}

}
