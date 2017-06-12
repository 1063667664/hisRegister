<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
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
						<li class="active"><a href="${pageContext.request.contextPath }/index.jsp">首页</a></li>
						<li><a href="#about">关于</a></li>
						<li><a href="#contact">联系我们</a></li>
					</ul>
					<p class="navbar-text pull-right">
						欢迎： <a href="${pageContext.request.contextPath }/showUserInfo.action">${sessionScope.user.username }</a>
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
						<li><a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/getNotice.action">对您要进行的检查有任何不了解的信息，请点击查看浏览</a></li>
						<br>
						<li><a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/showUserInfo.action">个人信息</a></li>
							<li><a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/reservationForm.action">进行预约</a></li>
							<li><a class="btn btn-primary btn-block btn-large"
							href="#">查看预约状态</a></li>
							<li><a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/loginForm.action">用户登录</a></li>
							<li><a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/userRegisterForm.action">用户注册</a></li>
					</ul>
				</div>
			</div>
			<!-- end span3 -->
			<div class="span9">
				<s:if test="user != null">
					<s:form action="modifyUserInfo.action">
						<s:property value="user.username"/>
						<s:property value="user.email"/>
					</s:form>
				</s:if>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
</body>
</html>