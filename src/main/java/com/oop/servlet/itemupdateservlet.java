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
 * Servlet implementation class itemupdateservlet
 */
@WebServlet("/itemupdateservlet")
public class itemupdateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get parameter values and assign them for relevent variables
		int id=Integer.parseInt(request.getParameter("itemid"));
		String name=request.getParameter("name");
		String type=request.getParameter("type");
		String size=request.getParameter("size");
		float price=Float.parseFloat(request.getParameter("price"));
		//float price=100;
		String description=request.getParameter("description");
		int available_qty=Integer.parseInt(request.getParameter("available_qty"));
		//System.out.println(price);
		
		int qty_sold=0;
		
		boolean isTrue;
		
		//System.out.println(id+name+type+size+price+description+available_qty);
		//assign above variables to newitem object
		item newitem=new item(id,name,type,size,price,description,available_qty);
		//System.out.println(newitem);
		isTrue=itemDBUtil.updateitem(newitem);
		
		if (isTrue==true) {
			//redirect to selleritemlist
			RequestDispatcher dis=request.getRequestDispatcher("selleritemlist.jsp");
			dis.forward(request, response);
					
		}
		else {
			//redirect to itemupdate
			RequestDispatcher dis2=request.getRequestDispatcher("itemupdate.jsp");
			dis2.forward(request, response);
		}
		
		
		
	}

}
