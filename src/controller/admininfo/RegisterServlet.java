package controller.admininfo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.admininfo.AdminInfo;
import bean.admininfo.AdminInfoDAO;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
		response.setContentType("text/html");  
        //设置响应所采用的编码方式  
        response.setCharacterEncoding("utf-8");  
        AdminInfo user=new AdminInfo();
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String passwordConf=request.getParameter("passwordConf");
        PrintWriter out=response.getWriter();
        boolean bool=false;
        if(password.equals(passwordConf)){
        	user.setUsername(username);
            user.setPassword(password);
            AdminInfoDAO aid=new AdminInfoDAO();
            bool=aid.registerAdmin(user);
        }
        
		

        String forward;
        if(bool==true){
        	RequestDispatcher rd;
        	out.flush();
        	out.println("<script>");
        	out.println("alert('注册成功');");
        	out.println("window.location.href='SuperManagerUI.jsp.jsp'");
        	out.println("</script>");
//        	forward="Admin.jsp"
//        	RequestDispatcher rd=request.getRequestDispatcher(forward);
//          rd.forward(request, response);
        }
        else{
        	out.flush();
        	out.println("<script>");
        	out.println("alert('两次密码不一样');");
        	out.println("history.back();");
        	out.println("</script>");
        }
	}
}
