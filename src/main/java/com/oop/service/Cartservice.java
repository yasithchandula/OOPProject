package com.oop.service;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.oop.util.DBConnect;
import java.sql.PreparedStatement;
import com.oop.model.item;


public class Cartservice {
	
	
	private static Connection con=null;
	private static Statement stat=null;
	private static ResultSet rs=null;
	
	
	
	
	
	
	public static void addtocart(String cid) throws SQLException{
		
		//ArrayList<item> item1 = new ArrayList<>();
		
		
		//connection
		con = DBConnect.getConnection();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("SELECT id,name,size,type,price FROM item WHERE id="+cid+"");
		
		while(rs.next()) {
			
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String size=rs.getString(3);
			String type=rs.getString(4);
			float price=rs.getFloat(5);
			
			int amount=1;
			
			
			PreparedStatement pstat1=con.prepareStatement("INSERT INTO cart VALUES ("+id+",'"+name+"','"+size+"','"+type+"',"+amount+","+price+")");
			pstat1.executeLargeUpdate();
		}
		
		//return item1;
		
	}
	
	
	
	public static List<item> getcartItemList() throws SQLException{
		
		ArrayList<item> item = new ArrayList<>();
		
		//connection
		con = DBConnect.getConnection();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("SELECT * FROM cart");
		
		while(rs.next()) {
			
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String size=rs.getString(3);
			String type=rs.getString(4);
			int qty=rs.getInt(5);
			float price=rs.getFloat(6);
			
			
			
			item i = new item(id,name,size,type,qty,price);
			item.add(i);
		}
		
		return item;
		
		
	}
	
	public static void delitmfromcart(int id) {
		
		con=DBConnect.getConnection();
		try {
			PreparedStatement pstat=con.prepareStatement("Delete from cart where id="+id+"");
			pstat.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	
	public static void edititmfromcart(int id, int qty) {
		
		con=DBConnect.getConnection();
		try {
			PreparedStatement pstat=con.prepareStatement("Update cart SET quantity="+qty+" where id="+id+"");
			pstat.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	
	public static void cartfinal(float total) {
		
		con=DBConnect.getConnection();
		try {
			PreparedStatement pstat=con.prepareStatement("Insert into oopweb.order Values(0,"+total+")");
			pstat.executeUpdate();
			System.out.println(total);
			
			PreparedStatement pstat1=con.prepareStatement("DELETE FROM cart");
			pstat1.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	
	

}
