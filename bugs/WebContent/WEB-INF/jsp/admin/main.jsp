
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<title>DMS缺陷管理系统</title>

<meta name="keywords" content="DMS缺陷管理系统">
<meta name="description"
	content="DMS">

<!--[if lt IE 8]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->

<link rel="shortcut icon" href="favicon.ico">
<link
	href="${pageContext.request.contextPath }/css/bootstrap.min.css-v=3.3.5.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/css/font-awesome.min.css-v=4.4.0.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/animate.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/css/style.min.css-v=4.0.0.css"
	rel="stylesheet">
</head>
<body class="fixed-sidebar full-height-layout gray-bg"
	style="overflow: hidden">
	
	<div id="wrapper">
		<!--左侧导航开始-->
		<nav class="navbar-default navbar-static-side" role="navigation">
		<div class="nav-close">
			<i class="fa fa-times-circle"></i>
		</div>
		<div class="sidebar-collapse">
			<ul class="nav" id="side-menu">
				<li class="nav-header">
					<div class="dropdown profile-element">
						<span></span>
						<a data-toggle="dropdown" class="dropdown-toggle" href="#"> <span
							class="clear"> 
							<img alt="image" class="img-circle" id="myPic"
							src="" style="width: 100px;height: 100px;" /><span class="block m-t-xs"><strong
									class="font-bold">super-admin</strong></span> <span
								class="text-muted text-xs block">超级管理员<b class="caret"></b></span>
						</span>
						</a>
						<ul class="dropdown-menu animated fadeInRight m-t-xs">
							<li><a class="J_menuItem"
								href="http://www.zi-han.net/theme/hplus/form_avatar.html"
								tppabs="http://www.zi-han.net/theme/hplus/form_avatar.html">修改头像</a>
							</li>
							<li class="divider"></li>
							<li><a href="login.html"
								tppabs="http://www.zi-han.net/theme/hplus/login.html">安全退出</a></li>
						</ul>
					</div>
					<div class="logo-element">web</div>
				</li>
				<li><a href="#"> <i class="fa fa-home"></i> <span
						class="nav-label">友情链接</span> <span class="fa arrow"></span>
				</a>
					<ul class="nav nav-second-level">
						<li><a class="J_menuItem" href="https:www.google.com"
							data-index="0">谷歌首页</a></li>
						<li><a class="J_menuItem" href="https:www.baidu.com"
							data-index="0">百度首页</a></li>
								<li><a class="J_menuItem" href="https:www.so.com"
							data-index="0">360首页</a></li>
								<li><a class="J_menuItem" href="https:www.sogou.com"
							data-index="0">搜狗首页</a></li>
					</ul></li>
				<li><a href="#"><i class="fa fa-cutlery"></i> <span
						class="nav-label">用户管理</span><span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a class="J_menuItem"
							href="${pageContext.request.contextPath}/admin/userlist">用户列表</a>
						</li>
						<li><a class="J_menuItem"
							href="${pageContext.request.contextPath}/admin/common">查看用户</a>
						</li>
						<li><a  target="_blank"
							href="${pageContext.request.contextPath}/user/login">普通用户</a></li>
					</ul></li>

				<li><a href="#"> <i class="fa fa fa-bar-chart-o"></i> <span
						class="nav-label">统计图表</span> <span class="fa arrow"></span>
				</a>
					<ul class="nav nav-second-level">
						<li><a class="J_menuItem"
							href="${pageContext.request.contextPath }/admin/statistics"
							tppabs="http://www.zi-han.net/theme/hplus/graph_echarts.html">用户图表</a>
						</li>
						<li><a class="J_menuItem"
							href="${pageContext.request.contextPath }/bug/statistics"
							tppabs="http://www.zi-han.net/theme/hplus/graph_flot.html">查看缺陷</a>
						</li>

					</ul></li>
				<li><a href="#"><i class="fa fa-table"></i> <span
						class="nav-label">项目管理</span><span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a class="J_menuItem"
							href="${pageContext.request.contextPath }/project/selectProject">查看项目</a>
						</li>
						
					</ul></li>
				<li><a class="J_menuItem"
					href="${pageContext.request.contextPath }/bug/selectBug"
					tppabs="http://www.zi-han.net/theme/hplus/css_animation.html"><i
						class="fa fa-magic"></i> <span class="nav-label">缺陷管理</span></a></li>
				<li><a href="#"><i class="fa fa-cutlery"></i> <span
						class="nav-label">缺陷严重级别管理</span><span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a class="J_menuItem"
							href="${pageContext.request.contextPath}/ponderance/selectponderance"
							tppabs="http://www.zi-han.net/theme/hplus/form_builder.html">查看严重级别</a>
						</li>
					</ul></li>
					
						<li><a href="#"><i class="fa fa-cutlery"></i> <span
						class="nav-label">小组管理</span><span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a class="J_menuItem"
							href="${pageContext.request.contextPath}/Team/selectTeam">小组管理</a>
						</li>
					</ul></li>
					
				<li><a href="#"><i class="fa fa-cutlery"></i> <span
						class="nav-label">缺陷处理结果</span><span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a class="J_menuItem"
							href="${pageContext.request.contextPath}/result/selectresult"
							tppabs="http://www.zi-han.net/theme/hplus/form_builder.html">查看缺陷结果</a>
						</li>
					</ul></li>

			</ul>
		</div>
		</nav>
		<!--左侧导航结束-->
		<!-- <!--右侧部分开始-->
		<div id="page-wrapper" class="gray-bg dashbard-1">
			<div class="row border-bottom">
				<nav class="navbar navbar-static-top" role="navigation"
					style="margin-bottom: 0">
				<div class="navbar-header">
					<a class="navbar-minimalize minimalize-styl-2 btn btn-primary "
						href="#"><i class="fa fa-bars"></i> </a>
					<form role="search" class="navbar-form-custom" method="post"
						action="">
						<div class="form-group">
							<!--  <span class="form-control" name="top-search" id="top-search"> 软件测试</span> -->
							<input type="text" placeholder="软件测试实验室缺陷管理" class="form-control"
								name="top-search" id="top-search" disabled="disabled">
						</div>
					</form>
				</div>
				<ul class="nav navbar-top-links navbar-right">

					<li class="dropdown hidden-xs"><a class="right-sidebar-toggle"
						aria-expanded="false"> <i class="fa fa-tasks"></i> 主题
					</a></li>
				</ul>
				</nav>
			</div>
			<div class="row content-tabs">
				<button class="roll-nav roll-left J_tabLeft">
					<i class="fa fa-backward"></i>
				</button>
				<nav class="page-tabs J_menuTabs">
				<div class="page-tabs-content">
					<a href="${pageContext.request.contextPath}/admin/hello"
						class="active J_menuTab" target="iframe0">首页</a>
				</div>
				</nav>
				<button class="roll-nav roll-right J_tabRight">
					<i class="fa fa-forward"></i>
				</button>
				<div class="btn-group roll-nav roll-right">
					<button class="dropdown J_tabClose" data-toggle="dropdown">
						关闭操作<span class="caret"></span>

					</button>
					<ul role="menu" class="dropdown-menu dropdown-menu-right">
						<li class="J_tabShowActive"><a>定位当前选项卡</a></li>
						<li class="divider"></li>
						<li class="J_tabCloseAll"><a>关闭全部选项卡</a></li>
						<li class="J_tabCloseOther"><a>关闭其他选项卡</a></li>
					</ul>
				</div>
				<a href="login.html"
					tppabs="http://www.zi-han.net/theme/hplus/login.html"
					class="roll-nav roll-right J_tabExit"><i
					class="fa fa fa-sign-out"></i> 退出</a>
			</div>
			<div class="row J_mainContent" id="content-main">
				<iframe class="J_iframe" name="iframe0" width="100%" height="100%"
					src="${pageContext.request.contextPath}/admin/hello"
					tppabs="http://www.zi-han.net/theme/hplus/index_v1.html?v=4.0"
					frameborder="0" data-id="index_v1.html" seamless></iframe>
			</div>
			<div class="footer">
				<div class="pull-right">
					&copy; 2017 敖海洋</a>
				</div>
			</div>
		</div>
		<!--右侧部分结束-->
		<!--右侧边栏开始-->
		<div id="right-sidebar">
			<div class="sidebar-container">

				<ul class="nav nav-tabs navs-3">

					<li class="active"><a data-toggle="tab" href="#tab-1"> <i
							class="fa fa-gear"></i> 主题
					</a></li>

					<div class="tab-content">
						<div id="tab-1" class="tab-pane active">
							<div class="sidebar-title">
								<h3>
									<i class="fa fa-comments-o"></i> 主题设置
								</h3>
								<small><i class="fa fa-tim"></i>
									你可以从这里选择和预览主题的布局和样式，这些设置会被保存在本地，下次打开的时候会直接应用这些设置。</small>
							</div>
							<div class="skin-setttings">
								<div class="title">主题设置</div>
								<div class="setings-item">
									<span>收起左侧菜单</span>
									<div class="switch">
										<div class="onoffswitch">
											<input type="checkbox" name="collapsemenu"
												class="onoffswitch-checkbox" id="collapsemenu"> <label
												class="onoffswitch-label" for="collapsemenu"> <span
												class="onoffswitch-inner"></span> <span
												class="onoffswitch-switch"></span>
											</label>
										</div>
									</div>
								</div>
								<div class="setings-item">
									<span>固定顶部</span>

									<div class="switch">
										<div class="onoffswitch">
											<input type="checkbox" name="fixednavbar"
												class="onoffswitch-checkbox" id="fixednavbar"> <label
												class="onoffswitch-label" for="fixednavbar"> <span
												class="onoffswitch-inner"></span> <span
												class="onoffswitch-switch"></span>
											</label>
										</div>
									</div>
								</div>
								<div class="setings-item">
									<span> 固定宽度 </span>
									<div class="switch">
										<div class="onoffswitch">
											<input type="checkbox" name="boxedlayout"
												class="onoffswitch-checkbox" id="boxedlayout"> <label
												class="onoffswitch-label" for="boxedlayout"> <span
												class="onoffswitch-inner"></span> <span
												class="onoffswitch-switch"></span>
											</label>
										</div>
									</div>
								</div>
								<div class="title">皮肤选择</div>
								<div class="setings-item default-skin nb">
									<span class="skin-name "> <a href="#" class="s-skin-0">
											默认皮肤 </a>
									</span>
								</div>
								<div class="setings-item blue-skin nb">
									<span class="skin-name "> <a href="#" class="s-skin-1">
											蓝色主题 </a>
									</span>
								</div>
								<div class="setings-item yellow-skin nb">
									<span class="skin-name "> <a href="#" class="s-skin-3">
											黄色/紫色主题 </a>
									</span>
								</div>
							</div>
						</div>
						<div id="tab-2" class="tab-pane">

							<script
								src="${pageContext.request.contextPath }/js/jquery.min.js-v=2.1.4"
								tppabs="http://www.zi-han.net/theme/hplus/js/jquery.min.js?v=2.1.4"></script>
							<script
								src="${pageContext.request.contextPath }/js/bootstrap.min.js-v=3.3.5"
								tppabs="http://www.zi-han.net/theme/hplus/js/bootstrap.min.js?v=3.3.5"></script>
							<script
								src="${pageContext.request.contextPath }/js/plugins/metisMenu/jquery.metisMenu.js"
								tppabs="http://www.zi-han.net/theme/hplus/js/plugins/metisMenu/jquery.metisMenu.js"></script>
							<script
								src="${pageContext.request.contextPath }/js/plugins/slimscroll/jquery.slimscroll.min.js"
								tppabs="http://www.zi-han.net/theme/hplus/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
							<script
								src="${pageContext.request.contextPath }/js/plugins/layer/layer.min.js"
								tppabs="http://www.zi-han.net/theme/hplus/js/plugins/layer/layer.min.js"></script>
							<script
								src="${pageContext.request.contextPath }/js/hplus.min.js-v=4.0.0"
								tppabs="http://www.zi-han.net/theme/hplus/js/hplus.min.js?v=4.0.0"></script>
							<script type="text/javascript"
								src="${pageContext.request.contextPath }/js/contabs.min.js"
								tppabs="http://www.zi-han.net/theme/hplus/js/contabs.min.js"></script>
							<script
								src="${pageContext.request.contextPath }/js/plugins/pace/pace.min.js"
								tppabs="http://www.zi-han.net/theme/hplus/js/plugins/pace/pace.min.js"></script>
</body>

</html> 