<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户主页</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
<style type="text/css">
.navbar {
	min-height: 40px;
}

.nav>li>a {
	padding: 8px 15px;
}

.navbar-brand {
	padding: 8px 15px;
}

.row-fluid .span2 {
	width: 19%;
}

.row-fluid .span5 {
	margin-left: 50px;
}

.wjjp {
	margin-top: 20px;
}
body{
	background-image: url("images/bg.png");
	background-size: cover;	
}
</style>
</head>
<body>
	<div class="navbar navbar-default" role="navigation">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a>
				<div class="nav-collapse">
					<ul class="nav">
						<li class="active"><a
							href="${pageContext.request.contextPath }/index.jsp">首页</a></li>
						<li><a href="#about">关于</a></li>
						<li><a href="#contact">联系我们</a></li>
					</ul>
					<p class="navbar-text pull-right">
						欢迎： <a
							href="${pageContext.request.contextPath }/showUserInfo.action">${sessionScope.user.username }</a>
						<a href="${pageContext.request.contextPath }/logout.action">退出</a>
					</p>
				</div>
			</div>
			<!-- end container-fluid -->
		</div>
	</div>
	<!-- end navbar -->
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span3">
				<div class="well sidebar-nav">
					<ul class="nav nav-list">
						<li class="nav-header">HIS_Register</li>
						<p class="wjjp">
							<a class="btn btn-primary btn-block btn-large"
								href="${pageContext.request.contextPath }/getNotice.action">了解详情</a>
						</p>
						<p class="wjjp">
							<a class="btn btn-primary btn-block btn-large"
								href="${pageContext.request.contextPath }/showUserInfo.action">个人信息</a>
						</p>
						<p class="wjjp">
							<a class="btn btn-primary btn-block btn-large"
								href="${pageContext.request.contextPath }/reservationForm.action">进行预约</a>
						</p>
						<p class="wjjp">
							<a class="btn btn-primary btn-block btn-large" href="#">查看预约状态</a>
						</p>
						<p class="wjjp">
							<a class="btn btn-primary btn-block btn-large"
								href="${pageContext.request.contextPath }/loginForm.action">用户登录</a>
						</p>
						<p class="wjjp">
							<a class="btn btn-primary btn-block btn-large"
								href="${pageContext.request.contextPath }/userRegisterForm.action">用户注册</a>
						</p>
					</ul>
				</div>
			</div>
			<!-- end span3 -->
			<div class="span9" >
				<!-- <img alt="s" src="images/welcome.png" > -->
						<h2 class="text-info" align="justify">欢迎您使用我们的网站！</h2>
						<p>使用指南：</p>
						<ul>
							<li>信息查询功能全用户开放，<a href="${pageContext.request.contextPath }/getNotice.action">点击这里</a>提前了解拍摄影像需要注意的事项。</li>
							<li>预约功能需要进行<a href="${pageContext.request.contextPath }/loginForm.action">登录</a></li>
							<li>若无账号，请进行<a href="${pageContext.request.contextPath }/userRegisterForm.action">注册</a></li>
						</ul>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
</body>
</html>