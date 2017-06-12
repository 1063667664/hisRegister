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
<title>用户注册</title>
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
<sx:head />
<style type="text/css">
	input[type="submit"].btn-block, input[type="reset"].btn-block, input[type="button"].btn-block {
		width: 42%;
		margin-left: 178px;
	}
	.wjjp {
		margin-top: 25px;
	}
	.modal {
		margin-left: -200px;
		top: 9.5%;
	}
	body {
	background-image: url("images/bg.png");
	background-size: cover;
}
</style>
</head>
<body>
	<script>
		$(function() {
			$("#datepicker").datepicker();
		});
	</script>
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
						<a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/loginForm.action">用户登录</a>
					</p>
					<p class="wjjp">
						<a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/userRegisterForm.action">用户注册</a>
					</p>
					<%-- <ul class="nav nav-list">
						<li class="nav-header">HIS_Register</li>
						<li><a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/getNotice.action">对您要进行的检查有任何不了解的信息，请点击查看浏览</a></li>
						<br>
						<li><a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/showUserInfo.action">个人信息</a></li>
						<li><a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/reservationForm.action">进行预约</a></li>
						<li><a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/loginForm.action">用户登录</a></li>
						<li><a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/userRegisterForm.action">用户注册</a></li>
					</ul> --%>
				</div>
			</div>
			<!-- end span3 -->
			<div class="span9">
				<div class="container-fluid">
					<div id="loginModal" class="modal show">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close">x</button>
									<h1 class="text-center text-primary">用户注册</h1>
								</div>
								<div class="modal-body">
									<s:form id="userRegisterForm" action="userRegister.action"
										method="post" theme="bootstrap" 
										cssClass="form-horizontal">

										<!-- <p>
							Date: <input type="text" id="datepicker">
						</p> -->

									<%-- 	<sx:datetimepicker name="date2" label="Format (yyyy-MM-dd)"
							displayFormat="yyyy-MM-dd" value="%{'2017-05-03'}" />
										 --%>
						<%-- <sj:datepicker id="datepicker" parentTheme="bootstrap"
							label="Datepicker" tooltip="Tooltip for Datepicker"
							cssClass="form-control" elementCssClass="col-sm-5" showOn="focus"
							inputAppendIcon="calendar" /> --%> 
						

										<s:textfield label="姓名" name="user.username" />
										<s:textfield label="密码" name="user.password" />
										<s:textfield label="邮箱" name="user.email" />
										<s:textfield label="手机号" name="user.tel" />
										<s:textfield label="性别" name="user.gender" />
										<s:textfield label="年龄" name="user.age" />
										<s:submit value="注册" cssClass="btn "></s:submit>
									</s:form>
								</div>
							</div>
							<div class="modal-footer"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
</body>


</html>