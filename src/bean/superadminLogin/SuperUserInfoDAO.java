package bean.superadminLogin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import utils.DBConn;
import bean.admininfo.AdminInfo;

public class SuperUserInfoDAO {
	public boolean checkAdmin(SuperUserInfo user){
		ResultSet rs=null;         
		Statement state=null;     
		try {
			DBConn db=new DBConn();
			Connection conn=db.getConn();
			state=conn.createStatement();
			rs=state.executeQuery("select *from superuser");
			while(rs.next()){
				if(user.getUsername().equals(rs.getString("username"))&&user.getPassword().equals(rs.getString("password"))){
					return true;
				}	
			}	
			conn.close();
			state.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}
