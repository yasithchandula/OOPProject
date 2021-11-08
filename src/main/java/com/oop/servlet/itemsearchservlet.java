package com.oop.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.model.item;
import com.oop.service.itemDBUtil;

/**
 * Servlet implementation class itemsearchservlet
 */
@WebServlet("/itemsearchservlet")
public class itemsearchservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get value of the scontent and assign it to name
		String name=request.getParameter("scontent");
		
		try {
			//denote itemlist and assign return value of getSearchresult
			List<item> itemlist = itemDBUtil.getSearchResult(name);
			
			request.setAttribute("itemlist", itemlist);
			//redirect to searchresult.jsp and send itemlist
			RequestDispatcher dispatcher = request.getRequestDispatcher("searchresult.jsp");
			dispatcher.forward(request,response);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
 
}
