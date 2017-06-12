<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>处理预约</title>
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
<sx:head />
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
					</ul>
				</div>
			</div>
			<!-- end span3 -->
			<div class="span9">
				<div class="row-fluid">
					<div class="input-group col-md-3"
						style="margin-top: 0px positon:relative">
						<%-- <sx:datetimepicker label="预约时间" name="dateForReservation" 
						displayFormat="yyyy-MM-dd" value="today" />--%>
						<input type="text" class="form-control" placeholder="请输入"/ >
						<span class="input-group-btn">
							<button class="btn btn-success">查找</button>
						</span>
					</div>
					<table class="table table-hover   ">
						<thead>
							<tr>
								<th>序号</th>
								<th>预约人</th>
								<th>预约时间</th>
								<th>预约项目</th>
								<th>状态</th>
								<th>操作</th>
							<tr>
						</thead>
						<tbody>
							<s:iterator value="rfList" var="form" status="stat">
								<tr>
									<td>${ stat.index + 1}</td>
									<td>${form.patientID }</td>
									<td>${form.dateForReservation }</td>
									<td>${form.examItemID }</td>
									<td>${form.status }</td>
									<td><a class="btn btn-success" id="changeStatus"
										href="${pageContext.request.contextPath }/acceptReservation.action?id=${form.id}">接受申请</a>
										 <a class="btn btn-success" href="${pageContext.request.contextPath }/doneWithReservation.action?id=${form.id}">完成拍摄</a> 
										  <a class="btn btn-success" href="${pageContext.request.contextPath }/checkReservationForm.action?id=${form.id}">详细内容</a></td>
								</tr>
							</s:iterator>
						</tbody>
					</table>
					<%-- ${form.id }--${form.dateForReservation }--${form.status }<a
							id="changeStatus"
							href="${pageContext.request.contextPath }/acceptReservation.action?id=${form.id}">接受申请</a>
						<br> --%>

				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
</body>
</html>