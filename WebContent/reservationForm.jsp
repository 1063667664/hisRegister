<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%-- <%@ taglib prefix="sj" uri="/struts-jquery-tags"%> --%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%-- <s:head theme="ajax"/> --%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>预约表单</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/jquery-ui.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#datepicker").datepicker();
	});
	/* $(function () {
		var enum = document.getDocumentById("reservationForm");
		console.log(enum);
	}) */
	window.onload = function() {
		/* var enum = document.getElementById("h2"); */
		console.log(1);
	}
</script>
<sx:head />
<sb:head />
<style type="text/css">
.control-group {
	margin-bottom: 10px;
	display: inline-block;
	width: 100%;
}

.control-label {
	width: 72px;
	display: inline-block;
	float: left;
	line-height: 30px;
}

.label {
	width: 72px;
	display: inline-block;
	float: left;
	line-height: 30px;
	background-color: #fff;
	color: #000;
	font-size: 14px;
	font-weight: normal;
	font-style: normal;
}

input[type="submit"] {
	display: block;
}

body {
	background-image: url("images/bg.png");
	background-size: cover;
}
</style>
</head>
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
				</ul>
			</div>
		</div>
		<!-- end span3 -->
		<div class="span9">
			<div class="container-fluid">
				<h2 id="">影像检查预约表</h2>
				<s:form id="reservationForm" action="reservation.action"
					theme="bootstrap">

					<s:textfield label="患者ID：" name="form.patientID"></s:textfield>
					<s:select label="申请医院：" name="form.historyID" list="historyMap"></s:select>
					<s:select label="检查部位：" name="form.examPointID" list="examPointMap"></s:select>
					<s:select label="检查类型：" name="form.examItemID" list="examItemMap"></s:select>
					<sx:datetimepicker label="预约时间" name="form.dateForReservation"
						displayFormat="yyyy-MM-dd" value="today" />
					<s:submit value="预约" cssClass="btn" />
				</s:form>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
</body>
</html>