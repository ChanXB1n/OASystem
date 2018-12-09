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
    <script type="text/javascript">
var currentpage = 1;
var pagesize = 10;
function goPage(num){
	var table = document.getElementById("Noties");
	var rows = table.rows.length-1;
	currentpage = num;
	if (currentpage == 0) currentpage = 1;
	if (currentpage == parseInt(rows/pagesize)+2) currentpage = parseInt(rows/pagesize)+1;
	for(var a=1;a<rows+1;a++){
		var row = document.getElementById(a.toString());
		if( a<=pagesize*(currentpage-1) || a>pagesize*currentpage ){row.style.display = "none"}
		else row.style.display = "table-row";
	}
}
	</script>
</head>
<body onload="goPage(1);">
    <div id="head">
        <div class="container">
            <div class="row">

                <div class="col-lg-4 col-md-4 col-sm-4">
                    <a href="homepage.jsp">
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
                 
                   <h3>通知栏</h3>
                     <div class="hr-div"> <hr /></div>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="Noties" >
                                    <thead>
                                        <tr>
                                            <th width="9%"> <div align="center">ID</div></th>
                                            <th width="18%"><div align="center">标题</div></th>
                                            <th width="38%"><div align="center">发布单位</div></th>
                                            <th width="21%"><div align="center">发布日期</div></th>
                                            <th width="14%"><div align="center">VIEW</div></th>      
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%
										Statement state=null;
										ResultSet rs=null;
										Connection conn=null;
										try {
											DBConn db=new DBConn();
											conn=db.getConn();
											state=conn.createStatement();
											rs=state.executeQuery("select *from notyinfo order by id desc");
											int count=0;
											while(rs.next()){
												String title=rs.getString("title");
												String unit=rs.getString("unit");
												String addtime=rs.getString("addtime");
											    String id=rs.getString("id");
									%>
                                        <tr id="<%=++count%>" >
                                            <td><div align="center"><%=count%></div></td>
                                            <td class="td<%=count%>"><div align="center"><span class="label label-danger"><%=title%></span></div></td>
                                            <td class="td<%=count%>"><%=unit %></td>
                                            <td class="td<%=count%>"><%=addtime %></td>
                                            <td><div align="center"><a href='notyContent.jsp?id=<%=id%>' target ='_blank' class="label label-success">Details <i class="fa fa-forward"></i></a></div></td>
                                        </tr>
                                      <%
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
                            		</tbody>
                                </table>                             
                            	<button  onclick="goPage(currentpage-1);">上一页</button>
                            	<button  onclick="goPage(currentpage+1);">下一页</button>
                            </div>                                           
                    </div>
                <div class="col-lg-3 col-md-3 col-sm-3">
<div class="list-group">
  <a href="chooseUserType.jsp" class="list-group-item active">
    管理员登陆
  </a>
  <a href="selectNoty.jsp" class="list-group-item">以关键字查询</a>
  <a href="homepage.jsp" class="list-group-item">返回首页</a>
</div>   
            </div>

        </div>

    </div>
    <!--  Jquery Core Script -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!--  Core Bootstrap Script -->
    <script src="assets/js/bootstrap.js"></script>
</section>
</body>
</html>
