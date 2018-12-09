package bean.newsinfo;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;


import java.sql.*;
import java.text.SimpleDateFormat;

import utils.DBConn;

public class NewsInfoDAO {
	public boolean insert(String title,String unit){
		try {
        	DBConn db=new DBConn();
    		Connection con=db.getConn();
    		Statement state=null;
			state=con.createStatement();
			java.util.Date utilDate = new java.util.Date();
	        java.sql.Date addtime = new java.sql.Date(utilDate.getTime());
			String sql="insert into notyinfo(title,unit,addtime)values('"+title+"','"+unit+"','"+addtime+"')";
			state.executeUpdate(sql);
			state.close();
			con.close();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return false;
	}
	public boolean delete(String title){
		try{
		   DBConn db=new DBConn();
		   Connection con=db.getConn();
		   Statement state=null;
		   state=con.createStatement();
		   String sql="delete from notyinfo where title='"+title+"'";
		   state.executeUpdate(sql);
		   state.close();
		   con.close();
		   return true;
		}catch(SQLException e){
			e.printStackTrace();
		}
		return false;
	}
	public boolean update(String id,String title,String unit){
		try{
		    DBConn db=new DBConn();
	    	Connection con=db.getConn();
		    Statement state=null;
		    state=con.createStatement();
		    java.util.Date utilDate = new java.util.Date();
            java.sql.Date addtime = new java.sql.Date(utilDate.getTime());
            String sql="update notyinfo set title='"+title+"',unit='"+unit+"',addtime='"+addtime+"' where id='"+id+"'";
            state.executeUpdate(sql);
            state.close();
            con.close();
            return true;
	   }catch(SQLException e){
		   e.printStackTrace();
	   }
		return false;
	}
}
