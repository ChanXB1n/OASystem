package controller.newsinfo;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.contentinfo.ContentInfoDAO;
import bean.newsinfo.NewsInfoDAO;

import java.sql.*;

import utils.DBConn;

/**
 * Servlet implementation class AddNewsAction
 */
public class AddNewsAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNewsAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setHeader("content-type", "text/html;charset=UTF-8");  
		response.setCharacterEncoding("UTF-8");  
		request.setCharacterEncoding("UTF-8"); 
		String title=request.getParameter("title");  
        String unit=request.getParameter("unit");  
        String content=request.getParameter("content");
        String action=request.getParameter("action");
        String id=request.getParameter("id");
        
        if(action.equals("insert")){
            NewsInfoDAO nid=new NewsInfoDAO();
            boolean isNewsInfo=nid.insert(title,unit);
            ContentInfoDAO cid=new ContentInfoDAO();
            boolean isContentInfo=cid.insert(title,content);
        //System.out.print(title+unit+content+addtime);
//        try {
//        	DBConn db=new DBConn();
//    		Connection con=db.getConn();
//    		Statement state=null;
//    		Statement state1=null;
//    		ResultSet rs=null;
//			state=con.createStatement();
//			String sql="insert into notyinfo(title,unit,content,addtime)values('"+title+"','"+unit+"','"+content+"','"+addtime+"')";
//			state.executeUpdate(sql);
//			state.close();
//			con.close();
//		} catch (SQLException e) {
//			bool=false;
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
        
            if(isNewsInfo==true&&isContentInfo==true){
        //if(isNewsInfo==true){
            	String a = URLEncoder.encode("发布成功！", "UTF-8");  
        	    out.print("<script>alert(decodeURIComponent('"+a+"') );window.location.href='managerUI.jsp'</script>");
            }
            else{
        	    String a = URLEncoder.encode("未知错误！", "UTF-8");  
        	    out.print("<script>alert(decodeURIComponent('"+a+"') );history.back()</script>");
            }
        }
        else if(action.equals("delete")){
        	NewsInfoDAO nid=new NewsInfoDAO();
            boolean isNewsInfo=nid.delete(title);
            ContentInfoDAO cid=new ContentInfoDAO();
            boolean isContentInfo=cid.delete(title);
            if(isNewsInfo==true&&isContentInfo==true){
                String a = URLEncoder.encode("删除成功！", "UTF-8");  
                out.print("<script>alert(decodeURIComponent('"+a+"') );window.location.href='managerUI.jsp'</script>");
            }
            else{
                String a = URLEncoder.encode("未知错误！", "UTF-8");  
                out.print("<script>alert(decodeURIComponent('"+a+"') );history.back()</script>");
                }
        }
        else if(action.equals("change")){
        	NewsInfoDAO nid=new NewsInfoDAO();
        	boolean isNewsInfo=nid.update(id, title, unit);
        	ContentInfoDAO cid=new ContentInfoDAO();
        	boolean isContentInfo=cid.update(id, title, content);
        	if(isNewsInfo==true&&isContentInfo==true){
        		String a = URLEncoder.encode("更改成功！", "UTF-8");  
                out.print("<script>alert(decodeURIComponent('"+a+"') );window.location.href='managerUI.jsp'</script>");
           	}
        	else{
                String a = URLEncoder.encode("未知错误！", "UTF-8");  
                out.print("<script>alert(decodeURIComponent('"+a+"') );history.back()</script>");        		
        	}
        }
	}
}
