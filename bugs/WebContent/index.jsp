 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
  <head>
    <!-- Basic Page Needs
    ================================================== -->
    <meta charset="utf-8">
    <!--[if IE]><meta http-equiv="x-ua-compatible" content="IE=9" /><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>DMS缺陷管理系统</title>
    <meta name="description" content="Your Description Here">
    <meta name="keywords" content="bootstrap themes, portfolio, responsive theme">
    <meta name="author" content="ThemeForces.Com">
    
    <!-- Favicons
    ================================================== -->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="img/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="static/img/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="static/img/apple-touch-icon-114x114.png">

    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css"  href="static/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="static/fonts/font-awesome/css/font-awesome.css">

    <!-- Stylesheet
    ================================================== -->
    <link rel="stylesheet" type="text/css"  href="static/css/style.css">
    <link rel="stylesheet" type="text/css" href="static/css/responsive.css">

    <script type="text/javascript" src="static/js/modernizr.custom.js"></script>

    <link href='http://fonts.googleapis.com/css?family=Raleway:500,600,700,100,800,900,400,200,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Playball' rel='stylesheet' type='text/css'>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div id="tf-home">
        <div class="overlay">
            <div id="sticky-anchor"></div>
            <nav id="tf-menu" class="navbar navbar-default">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                      </button>
                      <a class="navbar-brand logo" href="index.html">DMS</a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                      <ul class="nav navbar-nav navbar-right">
                        <li><a href="#tf-home">首页</a></li>
                        <li><a href="#tf-service">关于</a></li>
						<li><a href="${pageContext.request.contextPath}/user/login">登录</a></li>
						<li><a href="${pageContext.request.contextPath}/user/regist">注册</a></li>
                      </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>

            <div class="container">
                <div class="content">
                    <h1>DMS</h1>
                    <h3>DMMS缺陷管理系统</h3>
                    
                </div>
            </div>
        </div>
    </div>

    <div id="tf-service">
        <div class="container">

            <div class="col-md-4">

                <div class="media">
                  <div class="media-left media-middle">
                    <i class="fa fa-motorcycle"></i>
                  </div>
                  <div class="media-body">
                    <h4 class="media-heading">简介</h4>
                    <p>
				缺陷管理系统

BugManager 是一个基于最新 Web 技术的企业级通用缺陷管理系统，可以帮助企业极大的提高测试效率，节省测试成本。
您可以 用BugManager，对缺陷进行实时查看，分配
BugManager 紧贴业务特性，涵盖了大量的常用组件和基础功能。</p>
                  </div>
                </div>

            </div>

            <div class="col-md-4">

                <div class="media">
                  <div class="media-left media-middle">
                    <i class="fa fa-gears"></i>
                  </div>
                  <div class="media-body">
                    <h4 class="media-heading">特点</h4>
                    <p>DMS缺陷管理系统

DMS(Defect Management System) 是一个基于最新 Web 技术的企业级通用缺陷管理系统，可以帮助企业极大的提高测试效率，节省测试成本。
您可以 用DMS，对缺陷进行实时查看，分配
DMS 融合开发，测试，项目经理，提供更多的交互。</p>
                  </div>
                </div>

            </div>

            <div class="col-md-4">

                <div class="media">
                  <div class="media-left media-middle">
                    <i class="fa fa-heartbeat"></i>
                  </div>
                  <div class="media-body">
                    <h4 class="media-heading">优势</h4>
                    <p>DMS缺陷管理系统<br>

 优势一 实时查看缺陷,分配缺陷<br>
 优势二 邮件通知方便快捷<br>
 优势三 流程详细，操作简单<br>
 优势四 开源，方便扩展<br>
 优势五 数据库进行加密，安全</p>
                  </div>
                </div>

            </div>
            
        </div>
    </div>
 

    <div id="tf-portfolio">
        <div class="container">
            <div class="section-title">
                <h3>产品展示</h3>
                <hr>
            </div>

            <div class="space"></div>

            <div class="row">
                <div class="col-md-4">
                    <img src="${pageContext.request.contextPath}/img/login.png" class="img-responsive">
                </div>

                <div class="col-md-4">
                    <img src="${pageContext.request.contextPath}/img/userlist.png" class="img-responsive">
                </div>

                <div class="col-md-4">
                    <img src="${pageContext.request.contextPath}/img/admin.png" class="img-responsive">
                </div>
            </div>

            <div class="row toppadding">
                <div class="col-md-4">
                    <img src="${pageContext.request.contextPath}/img/userpicture.png" class="img-responsive">
                </div>

                <div class="col-md-4">
                    <img src="${pageContext.request.contextPath}/img/buglist.png" class="img-responsive">
                </div>

                <div class="col-md-4">
                    <img src="${pageContext.request.contextPath}/img/updateuser.png" class="img-responsive">
                </div>
            </div>

        </div>
    </div>


   

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="static/js/jquery.1.11.1.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script type="text/javascript" src="static/js/bootstrap.js"></script>

    <!-- Javascripts
    ================================================== -->
    <script type="text/javascript" src="static/js/main.js"></script>

  </body>
</html>