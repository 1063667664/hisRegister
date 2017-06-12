<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>doctor home</title>
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
						<s:if test="%{doctor != null}">
							欢迎你：${sessionScope.doctor.doctorName }  <s:a href="#">退出系统</s:a>
						</s:if>
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
					<!-- jackdan9WriteStart -->
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
							href="${pageContext.request.contextPath }/registrationList.action">处理申请</a>
					</p>
					<p class="wjjp">
						<a class="btn btn-success btn-block btn-large"
							href="${pageContext.request.contextPath }/addQuestionForm.action">添加科普问题</a>
					</p>
					<!-- jackdan9WriteEnd -->
					
				</div>
			</div>
			<!-- end span3 -->
			<div class="span9">
				<div class="row-fluid">

					<table class="table table-hover   ">
						<thead>
							<tr>
								<th>序号</th>
								<th>检查号</th>
								<th>病人编号</th>
								<th>病人姓名</th>
								<th>检查类型</th>
								<th>状态</th>
								<th>完成</th>
							<tr>
						</thead>
						<tbody>
							<s:iterator value="registerations" var="form" status="stat">
								<tr>
									<td>${ stat.index + 1}</td>
									<td>${form.checkNum }</td>
									<td>${form.patientID }</td>
									<td>${form.patName }</td>
									<td>${form.examItemName }</td>
									<td>${form.flag }</td>
									<td><a class="btn-success" id="changeStatus"
										href="${pageContext.request.contextPath }/inspected.action?checkNum=${form.checkNum}">结束</a>
									</td>
								</tr>

							</s:iterator>
						</tbody>

					</table>

				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
</body>
</html>