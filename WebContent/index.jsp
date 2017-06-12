<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>home page</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
<style type="text/css">
.navbar {
  min-height: 40px;
}
.nav > li > a {
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
						<%-- 欢迎： <a 
							href="${pageContext.request.contextPath }/showUserInfo.action">${sessionScope.user.username }</a> --%>
						<a class="btn" href="${pageContext.request.contextPath }/loginForm.action">登录</a>
					</p>
				</div>
			</div>
			<!-- end container-fluid -->
		</div>
	</div>
	<!-- end navbar -->

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span2">
				<div class="well sidebar-nav">
				<li class="nav-header">HIS_Register</li>
				<p class="wjjp">
					<a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/getNotice.action">了解详情</a>
				</p>
				<p class="wjjp">
					<a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/userRegisterForm.action">用户注册</a>
				</p>
				<p class="wjjp">
					<a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/loginForm.action">用户登录</a>
				</p>
				<p class="wjjp">
					<a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/doctorLoginForm.action">医生登录</a>
				</p>
				<!-- 
					<ul class="nav nav-list">
						<li class="nav-header">HIS_Register</li>
						<li><a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/getNotice.action">对您要进行的检查有任何不了解的信息，请点击查看浏览</a></li>
						<br>
						<li><a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/userRegisterForm.action">用户注册</a></li>
						<br>
						<li>
							<a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/loginForm.action">用户登录</a>
						</li>
						<br>
						<li><a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/doctorLoginForm.action">医生登录</a></li>
					</ul>
				-->
				</div>
			</div>
			<!-- end span3 -->
			<div class="span9">
				<div class="row-fluid">
					<div class="span2"></div>
					<div class="span6">
						<div class="span5">
							<p>
								<img alt="doctor"
									src="${pageContext.request.contextPath }/images/doctor.jpg">
								<a class="btn btn-success btn-block btn-large" role="button"
									href="${pageContext.request.contextPath }/doctor.jsp">医生</a>
							</p>
							<h3>
								<small>提示：</small>
							</h3>
							<p class="text-info ">
								放射科医生，根据病人的信息，进行医学影像拍摄登记。请<strong>务必遵循相关规定</strong>，合理合法操作.
							</p>
						</div>
						<!--/span-->
						
						<!-- <div class="span2"></div> -->
						
						 
						<div class="span5">
							<p>
								<img alt="patient"
									src="${pageContext.request.contextPath }/images/patient.jpg">
								<a class="btn btn-primary btn-block btn-large" role="button"
									href="${pageContext.request.contextPath }/user.jsp">用户</a>
							</p>
							<h3>
								<small>提示：</small>
							</h3>
							<p class="text-info ">影像拍摄需要进行实名制认证，如果有任何不明白的，请移步左侧导航栏，查看。进行预约操作需要先行注册.</p>
						</div>
						<!--/span-->
					</div>
					<div class="span2"></div>
				</div>

			</div>
			<!-- end span9 -->
		</div>
	</div>


	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
</body>
</html>