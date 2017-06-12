<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>doctor login</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
<style type="text/css">
.wjjsubmit {
	margin: 10px auto;
	margin-left: 100px;
}
body {
	background-image: url("images/bg.png");
	background-size: cover;
}
</style>
<sb:head />
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
						<a class="btn" href="${pageContext.request.contextPath }/doctorLoginForm.action">登录</a>
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
							<a class="btn btn-success btn-block btn-large"
								href="${pageContext.request.contextPath }/registerForm.action">填写申请表</a>
						</p>
						<p class="wjjp">
							<a class="btn btn-success btn-block btn-large"
								href="${pageContext.request.contextPath }/getReservationList.action">处理预约</a>
						</p>
						<p class="wjjp">
							<a class="btn btn-success btn-block btn-large"
								href="${pageContext.request.contextPath }/addQuestionForm.action">添加科普问题</a>
						</p>
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
								<h1 class="text-center text-primary">医生登录</h1>
							</div>
							<div class="modal-body">
								<s:form class="container" id="loginForm"
									action="doctorLogin.action" cssClass="form-horizontal"
									theme="bootstrap">

									<s:textfield label="用户名" name="doctor.doctorName"></s:textfield>
									<s:password label="密码" name="doctor.password"></s:password>
									<s:submit value="登录" cssClass="btn btn-primary wjjsubmit" ></s:submit>

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
</body>
</html>