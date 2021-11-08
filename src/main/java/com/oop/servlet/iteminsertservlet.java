package com.oop.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.model.item;
import com.oop.service.itemDBUtil;

/**
 * Servlet implementation class iteminsertservlet
 */
@WebServlet("/iteminsertservlet")
public class iteminsertservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get parameter values
		
		String name=request.getParameter("name");
		String type=request.getParameter("type");
		String size=request.getParameter("size");
		float price=Float.parseFloat(request.getParameter("price"));
		//float price=100;
		String description=request.getParameter("description");
		int available_qty=Integer.parseInt(request.getParameter("available_qty"));
		//System.out.println(price);
		int id=0;
		int qty_sold=0;
		
		boolean isTrue;
		//System.out.println(name+type+size+price);
		//assign above variables to newitem object
		item newitem=new item(id,name,type,size,price,description,available_qty,qty_sold);
		try {
			//call insertitem method using newitem
			isTrue=itemDBUtil.insertitem(newitem);
			//check if query is successfully executed or not
			if (isTrue==true) {
				//redirect to seller.jsp
				RequestDispatcher dis=request.getRequestDispatcher("seller.jsp");
				dis.forward(request, response);
						
			}
			else {
				
				RequestDispatcher dis2=request.getRequestDispatcher("seller.jsp");
				dis2.forward(request, response);
			}
			
		}catch (SQLException throwables) {
			response.sendRedirect("unSuccess.jsp");
			throwables.printStackTrace();
		}
		

			
		
		/*boolean isTrue;
		isTrue=itemDBUtil.insertcustomer(id,name,type,size,price,description,available_qty,qty_sold);
		
		if (isTrue==true) {
			
			RequestDispatcher dis=request.getRequestDispatcher("Success.jsp");
			dis.forward(request, response);
					
		}
		else {
			
			RequestDispatcher dis2=request.getRequestDispatcher("unSuccess.jsp");
			dis2.forward(request, response);
		}
		*/	
		}
}


	

	


