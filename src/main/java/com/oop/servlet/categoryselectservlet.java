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
 * Servlet implementation class categoryselectservlet
 */
@WebServlet("/categoryselectservlet")
public class categoryselectservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get value from categorybtn
		String category=request.getParameter("categorybtn");
		//System.out.println(category);
		//Declare array list
		List<item> itemlist;
		try {
			//assign getcatogerylist method return value to itemlist 
			itemlist = itemDBUtil.getCatogeryList(category);
			request.setAttribute("itemlist", itemlist);
		} catch (SQLException e) {
	
			e.printStackTrace();
		}
		
		
		//redirect to itemcategory page and send itemlist arry list
		RequestDispatcher dispatcher = request.getRequestDispatcher("itemcategory.jsp");
		dispatcher.forward(request,response);
		
	}

}
