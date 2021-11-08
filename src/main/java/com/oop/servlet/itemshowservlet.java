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


@WebServlet("/itemServlet")
public class itemshowservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get data from the database(model)
		try {
			List<item> itemlist = itemDBUtil.getItemList();
			request.setAttribute("itemlist", itemlist);
			//redirect to the view
			RequestDispatcher dispatcher = request.getRequestDispatcher("itemshow.jsp");
			dispatcher.forward(request,response);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		

	}

}
