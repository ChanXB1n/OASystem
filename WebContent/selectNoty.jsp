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
    <title>查询</title>
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- Google	Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Nova+Flat' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css' />
    <style>
	</style>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <style>
		.f{
			width:60%;
			margin:auto
			}
	</style>
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
    <section >
        <div class="container">
            <div class="row">
              <div> 
                <div align="center"><img src="assets/img/moniter.png" class="img-responsive img-max-width" align="middle"/>              </div>
              </div>
            </div>

        </div>

    </section>
        <div class="container">
           <div style="width:500px;margin:auto">                   
           <h3 align="center">按关键字查询</h3>
  			<div class="hr-div"> <hr /></div>
             <form action="selectTitle.jsp" method="post">
                  <div style="margin:10px"><input type="text" class="form-control" name="title" required="required" placeholder="以标题查询" /></div>
                  <div align="center"><input type="submit" required="required" value=" 查询 " class="btn btn-primary"></div>
             </form>
             <form action="selectUnit.jsp" method="post">         
             	<div style="margin:10px">
             	<select name="unit" class="form-control" required="required">
										<option value="-1">以发布单位查询</option>										
													<option value="汕头大学"  >汕头大学</option>											
													<option value="党委工作部"  >党委工作部</option>											
													<option value="党委工作部综合办公室"  >党委工作部综合办公室</option>											
													<option value="党委工作部组宣统办公室"  >党委工作部组宣统办公室</option>											
													<option value="本科生院"  >本科生院</option>											
													<option value="本科生院综合办公室"  >本科生院综合办公室</option>											
													<option value="书院总院"  >书院总院</option>											
													<option value="研究生院"  >研究生院</option>											
													<option value="创业学院"  >创业学院</option>											
													<option value="创新创业研究院"  >创新创业研究院</option>											
													<option value="行政事务部综合办公室"  >行政事务部综合办公室</option>
									 </select>
             	</div>
             	<div align="center"><input type="submit" required="required" value=" 查询 " class="btn btn-primary"></div>
             </form>
            <form action="selectTime.jsp" method="post">         
             	<div style="margin:10px"><input type="text" class="form-control" name="addTime" required="required" placeholder="以发布时间查询" /></div>
             	<div align="center"><input type="submit" required="required" value=" 查询 " class="btn btn-primary"></div>
             </form>
            </div>
			</div>
    <!--  Jquery Core Script -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!--  Core Bootstrap Script -->
    <script src="assets/js/bootstrap.js"></script>

</body>
</html>
