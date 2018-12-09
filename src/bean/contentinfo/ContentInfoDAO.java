package bean.contentinfo;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import utils.DBConn;

public class ContentInfoDAO {
	public boolean insert(String title,String content){
		try {
        	DBConn db=new DBConn();
    		Connection con=db.getConn();
    		Statement state=null;
			state=con.createStatement();
			String sql="insert into notycontent(title,content)values('"+title+"','"+content+"')";
			state.executeUpdate(sql);
			state.close();
			con.close();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	public boolean delete(String title){
		try{
			DBConn db=new DBConn();
			Connection con=db.getConn();
			Statement state=null;
			state=con.createStatement();
			String sql="delete from notycontent where title='"+title+"'";
			state.executeUpdate(sql);
			state.close();
			con.close();
			return true;
		}catch(SQLException e){
			e.printStackTrace();
		}
		return false;
	}
	public boolean update(String id,String title,String content){
		try{
			DBConn db=new DBConn();
			Connection con=db.getConn();
			Statement state=null;
			state=con.createStatement();
			String sql="update notycontent set title='"+title+"',content='"+content+"' where id='"+id+"'";
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
