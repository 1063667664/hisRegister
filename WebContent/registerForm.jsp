<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登记表</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
<style type="text/css">
.wjjp {
	margin-top: 20px;
}

.table-striped caption {
	margin-bottom: 20px;
}

.wjjth {
	text-align: center;
	min-width: 60px;
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
						<a href="#">登录</a>
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
						<a class="btn btn-success btn-block btn-large" href="${pageContext.request.contextPath }/getReservationList.action">处理预约</a>
					</p>
					<p class="wjjp">
						<a class="btn btn-success btn-block btn-large" href="${pageContext.request.contextPath }/addQuestionForm.action">添加科普问题</a>
					</p>
				</div>
			</div>
			<!-- end span3 -->
			<div class="span9">
				<div class="row-fluid">
					<div class="container-fluid">
						<h2>影像检查登记表</h2>
						<s:form id="registrationForm" action="register.action"
							theme="bootstrap" cssClass="form-horizontal">
							<s:textfield label="患者编号" name="form.patientID"></s:textfield>
							<s:textfield label="患者姓名" name="form.patName"></s:textfield>
							<s:radio label="性别" name="form.patGender" list="genderMap"></s:radio>
							<s:textfield label="年龄" name="form.age"></s:textfield>
							<s:select label="年龄类型" name="form.ageType" list="ageTypeMap"></s:select>
							<s:select label="检查项目" name="form.examItemName"
								list="examItemMap"></s:select>
							<s:submit value="申请" cssClass="btn" />
						</s:form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
</body>
</html>