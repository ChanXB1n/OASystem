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
</head>
<body>
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
        <div class="container" >
		<div style="width:500px;margin:auto">                   
			<h3 align="center">修改普通管理员密码</h3>
  		<div class="hr-div"> <hr /></div>
    	<div>
                       <form action="SuperResetServlet" method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" name="username" required="required" placeholder="输入要修改的用户名" />
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" name="password" required="required" placeholder="修改密码" />
                        </div>
						<div class="form-group">
                            <input type="password" class="form-control" name="passwordConf" required="required" placeholder="再次输入" />
                        </div>
                        <div class="form-group">
                            <div align="center"><input type="submit" value="修改" class="btn btn-primary"/></div>
                        </div>
                        <div class="form-group">
                            <div align="center"><input type="button" value="取消修改" onclick="javascript:window.location.href='MainPage.html';" class="btn btn-primary"/></div>
                        </div>
                    </form>
                    
                          
                    
      </div>
        </div>
    <!--  Jquery Core Script -->
<script src="assets/js/jquery-1.10.2.js"></script>
    <!--  Core Bootstrap Script -->
    <script src="assets/js/bootstrap.js"></script>

</body>
</html>
