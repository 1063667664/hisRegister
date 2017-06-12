<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>预约详情</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
<sb:head />
<style type="text/css">
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
						<li><a class="btn btn-success"
							href="${pageContext.request.contextPath }/registerForm.action">填写申请表</a></li>
						<br>
						<li><a class="btn btn-success"
							href="${pageContext.request.contextPath }/getReservationList.action">处理预约</a></li>
						<br>
						<li><a class="btn btn-success"
							href="${pageContext.request.contextPath }/addQuestionForm.action">添加科普问题</a></li>
					</ul>
				</div>
			</div>
			<!-- end span3 -->
			<div class="span9">
				<div class="row-fluid">

					<table class="table table-hover table-boder">
						<tr>
							<td>患者ID:</td>
							<td><s:property value="form.patientID"/></td>
						</tr>
						<tr>
							<td>医院:</td>
							<td><s:property value="form.historyID" /></td>
						</tr>
						<tr>
							<td>检查部位:</td>
							<td><s:property value="form.examPointID"/></td>
						</tr>
						<tr>
							<td>检查类型:</td>
							<td><s:property value="form.examItemID"/></td>
						</tr>
						<tr>
							<td>预约时间:</td>
							<td><s:property value="form.dateForReservation"/></td>
						</tr>
						<tr>
							<td>预约状态:</td>
							<td><s:property value="form.status"/></td>
						</tr>
					</table>
					<%-- <s:form id="checkReservationForm" action="checkReservation.action"  method="post">
						<s: value="form.patientID"/><br>
						<s:property value="form.historyID" /><br>
						<s:property value="form.examPointID"/><br>
						<s:property value="form.examItemID"/><br>
						<s:property value="form.dateForReservation"/><br>
						<s:property value="form.status"/><br>
						<s:submit value="接受预约"></s:submit>
					</s:form> --%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>