<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="s" uri="/struts-tags" %>
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
						<li class="active"><a href="${pageContext.request.contextPath }/index.jsp">首页</a></li>
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
						<a class="btn btn-success btn-block btn-large" href="${pageContext.request.contextPath }/getReservationList.action">处理预约</a>
					</p>
					<p class="wjjp">
						<a class="btn btn-success btn-block btn-large" href="${pageContext.request.contextPath }/registrationList.action">处理申请</a>
					</p>
					<p class="wjjp">
						<a class="btn btn-success btn-block btn-large" href="${pageContext.request.contextPath }/addQuestionForm.action">添加科普问题</a>
					</p>
					<!-- jackdan9WriteEnd -->
					<%-- 
					<ul class="nav nav-list">
						<li class="nav-header">HIS_Register</li>
						
						<li><a class="btn btn-success"
							href="${pageContext.request.contextPath }/registerForm.action">填写申请表</a></li><br>
						<li><a class="btn btn-success" href="${pageContext.request.contextPath }/getReservationList.action">处理预约</a></li><br>
						<li><a class="btn btn-success" href="${pageContext.request.contextPath }/addQuestionForm.action">添加科普问题</a></li>
					</ul> 
					--%>
				</div>
			</div>
			<!-- end span3 -->
			<div class="span9">
				<div class="row-fluid">

					<table class="table-striped ">
						<caption>影像科检查常见注意事项</caption>
						<thead>
							<tr>
								<th class="wjjth">序号</th>
								<th class="wjjth">内容</th>
							<tr>
						</thead>
						<tbody>
							<tr>
								<td class="wjjth">1</td>
								<td>孕妇检查前请告知X线检查人员。</td>
							</tr>
							<tr>
								<td class="wjjth">2</td>
								<td>若为复查，最好带上旧片（DR、CT、MRI片）、病历等相关资料。</td>
							</tr>
							<tr>
								<td class="wjjth">3</td>
								<td><ul>
										<li>影像检查程序：1）门诊：医生开检查单-->缴费-->放射科护士站交发票和排号-->对应检查室等待-->检查-->等待结果。</li>
										<li>2）住院：医生开检查单-->放射科护士站交检查单-->对应检查室等待-->检查-->回病房（检查结果出来后会送到医生那里）。</li>
									</ul></td>
							</tr>
							<tr>
								<td class="wjjth">4</td>
								<td><ul><li>影像检查顺序：1）先将需要预约的检查提前预约，并记录好相关注意事项，如CT、MRI及其增强检查。</li>
								<li>2）先检查需要空腹并不需要喝药的检查，再去检查需要吃药的检查项目。3）如果要做MRI检查、动态血压或动态心电图，应该先做MRI，然后再做动态血压或动态心电图。</li>
								</ul></td>
							</tr>
							<tr>
								<td class="wjjth">5</td>
								<td>DR检查前的注意事项：穿棉质衣服，去除拍摄部位可能造成伪影或造成遮挡的事物，以免妨碍影像学诊断。比如：胸片时应该去除项链、玉佩、纽扣、拉链、胸罩，换去有装饰的衣服；骨盆片时应该去除纽扣、皮带。</td>
							</tr>
							<tr>
								<td class="wjjth">6</td>
								<td>
									<ul>
									<li>CT检查前得注意事项：1)首先，去除可能造成伪影的物品，比如：假牙、发卡等；</li>
									<li>2)其次，腹部检查前一周内不能做胃肠钡剂造影检查，若近期内做过钡剂造影检查要提前告诉医生，确认排泄完后再检查，以免产生伪影影响诊断；</li>
									<li>3）上腹部检查如果不是急诊，最好是早上空腹做检查，检查前要按医生要求喝胃肠道造影剂或者水，而且根据检查部位要等15-30min后才可进行检查；</li>
									<li>4）若为盆腔CT检查，检查前最好使膀胱充盈。</li>
									</ul>
								</td>
							</tr>
							<tr>
								<td class="wjjth">7</td>
								<td>
									<ul>
										<li>MRI检查前注意事项：1）提前取下随身携带的金属物品、磁卡等，以免造成不必要的损失。</li>
										<li>2）确定检查前身体内无金属物品，如心脏起搏器、金属支架等，如果以前做过手术，不能确定植入物能否做检查的请与手术医生联系确认后再做，以免造成危险。</li>
										<li>3）不能合作的病人及幼儿应给予镇静剂制动。</li>
										<li>4）急危重病人应在临床医生陪同下做检查，并要准备抢救器械和药品在检查室外，病床、输液架等金属物品不能进入检查室。</li>
									</ul>
								</td>
							</tr>
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