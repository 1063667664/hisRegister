<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>科普问答</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
<style type="text/css">
	.wjjp {
		margin-top: 20px;
	}
	.table th {
		text-align: center;
	}
	.wjjth {
		min-width: 60px;
	}
	.table td {
		min-width: 60px;
		text-align: center;
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
						<li class="active"><a href="${pageContext.request.contextPath }/index.jsp">首页</a></li>
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
					<%-- 
					<ul class="nav nav-list">
						<li class="nav-header">HIS_Register</li>
						<li><a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/getNotice.action">了解详情</a></li>
						<br>
						<li><a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/showUserInfo.action">个人信息</a></li>
						<li><a class="btn btn-primary btn-block btn-large"
							href="${pageContext.request.contextPath }/reservationForm.action">进行预约</a></li>
					</ul> 
					--%>
				</div>
			</div>
			<!-- end span3 -->
			<div class="span9">
				<table class="table ">
					<thead>
						<tr>
							<th class="wjjth">序号</th>
							<th class="wjjth">问题</th>
							<th class="wjjth">回答</th>
						</tr>
					</thead>
					<tbody>
						<s:iterator value="notices" var="notice" status="noticeStatus">
							<tr>
								<td class="wjjtd">${noticeStatus.index +1 }</td>
								<td>${notice.question }</td>
								<td>${notice.answer }</td>
							</tr>
						</s:iterator>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
</body>
</html>