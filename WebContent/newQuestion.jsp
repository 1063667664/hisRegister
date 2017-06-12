<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>填写常识知识</title>
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
.wjjbtn{
	
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
						登录 <a href="#">username</a>
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
				<div class="container-fluid span2">
					<s:form action="/addQuestion.action" method="post"
						cssClass="form-horizontal" theme="bootstrap">
						<s:textfield label="问题" name="notice.question"></s:textfield>
						<s:textarea label="回答" name="notice.answer" cols="6" rows="6"></s:textarea>
						<s:submit value="立即添加" cssClass="btn"/>
					</s:form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
</body>
</html>