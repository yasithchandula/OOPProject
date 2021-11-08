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



public class itemDBUtil {
	
	//declare connection variable as null
	private static Connection con=null;
	private static boolean isSuccess;
	
	
	//Method declaration for insert item to item table
	
	public static boolean insertitem(item newitem) throws SQLException{
		
		
		
		con=DBConnect.getConnection();
		PreparedStatement pstat=con.prepareStatement("INSERT INTO item VaLUES "+" (?,?,?,?,?,?,?,?)");
		
		try {
		pstat.setInt(1, newitem.getId());
		pstat.setString(2,newitem.getName());
		pstat.setString(3,newitem.getType());
		pstat.setString(4, newitem.getSize());
		pstat.setFloat(5, newitem.getPrice());
		pstat.setString(6,newitem.getDescription());
		pstat.setInt(7, newitem.getAvailable_qty());
		pstat.setInt(8, newitem.getSold_qty());
		
		long rs1=pstat.executeLargeUpdate();
		
		if (rs1>0) {
			isSuccess=true;
		}
		
		else {
			isSuccess=false;
		}
		
		
		
	}catch(SQLException e) {
		
	}
		return isSuccess;
		
	}
	
	
	//Method declaration for get all item list from item table
	
	public static List<item> getItemList() throws SQLException{
		
		ArrayList<item> item = new ArrayList<>();
		
		//connection
		con = DBConnect.getConnection();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("SELECT * FROM item");
		
		while(rs.next()) {
			
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String type=rs.getString(3);
			String size=rs.getString(4);
			float price=rs.getFloat(5);
			String description=rs.getString(6);
			int available_qty=rs.getInt(7);
			int sold_qty=rs.getInt(8);
			
			
			
			item i = new item(id,name,type,size,price,description,available_qty,sold_qty);
			item.add(i);
		}
		
		return item;
		
		
	}
	
	//Method declaration for get searched item list from item table
	
	public static List<item> getSearchResult(String sname) throws SQLException{
		
		ArrayList<item> item1 = new ArrayList<>();
		
		
		//connection
		con = DBConnect.getConnection();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("SELECT * FROM item WHERE name LIKE '%"+sname+"%'");
		
		while(rs.next()) {
			
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String type=rs.getString(3);
			String size=rs.getString(4);
			float price=rs.getFloat(5);
			String description=rs.getString(6);
			int available_qty=rs.getInt(7);
			int sold_qty=rs.getInt(8);
			
			
			
			item i = new item(id,name,type,size,price,description,available_qty,sold_qty);
			item1.add(i);
		}
		
		return item1;
		
}
	
	//Method declaration for get items from item table according to category
	
	public static List<item> getCatogeryList(String category) throws SQLException{
		
		ArrayList<item> item = new ArrayList<>();
		
		//connection
		con = DBConnect.getConnection();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("SELECT * FROM item WHERE type='"+category+"'");
		
		while(rs.next()) {
			
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String type=rs.getString(3);
			String size=rs.getString(4);
			float price=rs.getFloat(5);
			String description=rs.getString(6);
			int available_qty=rs.getInt(7);
			int sold_qty=rs.getInt(8);
			
			
			
			item i = new item(id,name,type,size,price,description,available_qty,sold_qty);
			item.add(i);
		}
		
		return item;
		
		
	}
	
	//Method declaration for delete an item from item table
	public static void deleteItem(String id) throws SQLException {
		
		int newid=Integer.parseInt(id);
		
		con=DBConnect.getConnection();
		PreparedStatement pstat=con.prepareStatement("Delete from item where id="+newid+"");
		pstat.executeUpdate();
		
	}
	
	
	
	//Method declaration for edit and item from item table
	public static List<item> edititem(String iid) throws SQLException {
		
		ArrayList<item> item = new ArrayList<>();
		
		int newid=Integer.parseInt(iid);
		
		con=DBConnect.getConnection();
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("SELECT * FROM item WHERE id="+newid+"");
		
		
		while(rs.next()) {
			
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String type=rs.getString(3);
			String size=rs.getString(4);
			float price=rs.getFloat(5);
			String description=rs.getString(6);
			int available_qty=rs.getInt(7);
			int sold_qty=rs.getInt(8);
			
			
			
			item i = new item(id,name,type,size,price,description,available_qty,sold_qty);
			item.add(i);
		}
		
		return item;
		
		
	}
	
	
	//Method declaration for update an edited item
	public static boolean updateitem(item newitem) {
		System.out.println(newitem.getId()+newitem.getName()+newitem.getAvailable_qty());
		
		try {
			
		
		
		con = DBConnect.getConnection();
		PreparedStatement stmt = con.prepareStatement("UPDATE item SET name=?,type=?,size=?,price=?,description=?,qty_in_hand=? WHERE id="+newitem.getId()+"; ");
		
		
		stmt.setString(1,newitem.getName());
		stmt.setString(2,newitem.getType());
		stmt.setString(3, newitem.getSize());
		stmt.setFloat(4, newitem.getPrice());
		stmt.setString(5,newitem.getDescription());
		stmt.setInt(6, newitem.getAvailable_qty());
		//String sql="UPDATE item SET name='"+name+"',type='"+type+"',size='"+size+"',price="+price+",description='"+description+"',qty_in_hand="+available_qty+" WHERE id="+id+"; ";
		//System.out.println(id+name+type+size+price+description+available_qty);
		long rs = stmt.executeLargeUpdate();
		
		
		if(rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
		}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
		
		return isSuccess;
		
		
	}
	

 


}
