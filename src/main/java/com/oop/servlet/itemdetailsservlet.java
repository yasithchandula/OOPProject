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
 * Servlet implementation class itemdetailsservlet
 */
@WebServlet("/itemdetailsservlet")
public class itemdetailsservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get the value of detid and assign that value to id
		String id=request.getParameter("detid");
		//declare itemlist
		List <item> itemlist;
		
		try {
			//assign return value from edititem method to itemlist
			itemlist=itemDBUtil.edititem(id);
			request.setAttribute("itemlist", itemlist);
			
			//redirect to itemdetails.jsp and send itemlist
			RequestDispatcher dispatcher = request.getRequestDispatcher("itemdetails.jsp");
			dispatcher.forward(request,response);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
