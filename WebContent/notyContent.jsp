<%@ page language="java" import="java.sql.*" import="java.util.*" import="utils.DBConn;" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>Support Admin</title>
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- Google	Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Nova+Flat' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css' />
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <title>Insert title here</title>
</head>
<body>
    <div id="head">
        <div class="container">
            <div class="row">

              <div class="col-lg-4 col-md-4 col-sm-4">
                    <a href="homepage.html">
                    <img src="assets/img/logo.png"  />
                </a>
                </div>
            </div>
        </div>
    </div>
    
    <section id="main" >
        <div class="container" >
            <div class="row">
                <div class="col-lg-9 col-md-9 col-sm-9">
 <div class="panel panel-default">
  <div class="panel-body">
	<%
	String _title_id=request.getParameter("id");
	System.out.print(_title_id);
	int title_id=Integer.parseInt(_title_id);
	Statement state=null;
	ResultSet rs=null;
	Connection conn=null;
	try {
		DBConn db=new DBConn();
		conn=db.getConn();
		state=conn.createStatement();
		rs=state.executeQuery("select notyinfo.id,content from notyinfo,notycontent where notyinfo.title=notycontent.title;");
		int count=0;
		while(rs.next()){
			if(title_id==rs.getInt(1)){
				String content=rs.getString("content");

			%>
				<p><%=content %></p>
			<%
			}
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(rs!=null)
				rs.close();
			if(state!=null)
				state.close();
			if(conn!=null)
				conn.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
	
	%>
  </div>
</div>
 </div>
                        <div class="col-lg-3 col-md-3 col-sm-3">
<div class="list-group">
  <a href="chooseUserType.jsp" class="list-group-item active">
    管理员登陆
  </a>
  <a href="homepage.jsp" class="list-group-item">返回首页</a>
</div>   
            </div>

        </div>

    </div>
    </section>
    <!--  Jquery Core Script -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!--  Core Bootstrap Script -->
    <script src="assets/js/bootstrap.js"></script>

</body>
</html>

    