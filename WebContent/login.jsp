<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/jquery-ui.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery.struts2.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery.subscribe.min.js"></script>
	
<sb:head />
<sj:head/>
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
body {
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
						<p class="wjjp"><a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/getNotice.action">了解详情</a></p>
						<p class="wjjp"><a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/showUserInfo.action">个人信息</a></p>
						<p class="wjjp"><a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/reservationForm.action">进行预约</a></p>
						<p class="wjjp"><a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/loginForm.action">用户登录</a></p>
						<p class="wjjp"><a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/userRegisterForm.action">用户注册</a></p>
					</ul>
				</div>
			</div>
			<!-- end span3 -->
			<div class="span9">


				<div id="loginModal" class="modal show">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close">x</button>
								<h1 class="text-center text-primary">患者登录</h1>
							</div>
							<div class="modal-body">
								<s:form class="container" id="loginForm" action="login.action" cssClass="form-horizontal" theme="bootstrap">

									<s:textfield label="用户名" name="user.username"></s:textfield>
									<s:password label="密码" name="user.password"></s:password>
									<s:submit value="登录"
										cssClass="btn btn-primary "></s:submit>
									<%-- <span><a href="#">找回密码</a></span>
									<span><a href="#" class="pull-right">注册</a></span> --%>
								</s:form>
							</div>
						</div>
						<div class="modal-footer"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
</body>
</html>