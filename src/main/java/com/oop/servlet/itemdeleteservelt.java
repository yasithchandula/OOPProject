package com.oop.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.service.itemDBUtil;

/**
 * Servlet implementation class itemdeleteservelt
 */
@WebServlet("/itemdeleteservelt")
public class itemdeleteservelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get the value of deleteitem and assign that value to id
		String id=request.getParameter("deleteitem");
		
		try {
			//call deleteItem method
			itemDBUtil.deleteItem(id);
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		//redirect to selleritemlist.jsp page
		RequestDispatcher dispatcher=request.getRequestDispatcher("selleritemlist.jsp");
		dispatcher.forward(request, response);
		
		
	}

}
