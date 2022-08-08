<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>学生信息管理系统</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/bootstrap/js/jquery-3.4.1.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<style type="text/css">
#main-top{ width:100%; height:70px; background:url(${pageContext.request.contextPath}/img/main-top-bg.png) no-repeat right center #2d62a3; border-bottom:1px #245086 solid }

</style>
</head>
<body>
<div id="main-top">
	<div class="text-center">
		<img style="height:100%" src="${pageContext.request.contextPath}/img/logo.png" />
	</div>
</div>


<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid"> 
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#example-navbar-collapse">
			<span class="sr-only">切换导航</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
	</div>

	<div class="collapse navbar-collapse" id="example-navbar-collapse">
		<ul class="nav navbar-nav">
			<li><a href="${pageContext.request.contextPath}/admin.jsp">首页</a></li>
			<li class="active"><a href="${pageContext.request.contextPath}/admin_detail.jsp">学生基础信息</a></li>
	        <li class="dropdown">
	        	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">学生其他信息<span class="caret"></span></a>
		        <ul class="dropdown-menu">
			        <li><a href="#">学籍信息</a></li>
					<li><a href="#">联系信息</a></li>
		           	<li><a href="${pageContext.request.contextPath}/admin_detail_punishAndReward.jsp">奖罚信息</a></li>
		           	<li><a href="${pageContext.request.contextPath}/admin_detail_talk.jsp">谈话记录</a></li>
	         	</ul>
	        </li>
			<li><a href="${pageContext.request.contextPath}/admin_detail_changeStudent.jsp">修改学生信息</a></li>
			<li><a href="${pageContext.request.contextPath}/admin_detail_conversation.jsp">添加谈话</a></li>
			<li><a href="${pageContext.request.contextPath}/admin_detail_addPunishAndReward.jsp">添加奖罚信息</a></li>
		</ul>
	</div>
	</div>
</nav>

<div class="container-fluid">
	<div class="row">
		<br><br><br>
		<div class="col-md-2">
			<div class="panel panel-info ">
			    <div class="panel-heading">
			    
			        <h3 class="panel-title text-center"><span class=" glyphicon glyphicon-list-alt"></span> 登入信息</h3>
			    </div>
			    <div class="panel-body">
					<ul class="list-group">
					    <li class="list-group-item"><span class=" glyphicon glyphicon-user"></span>	 教职工 2020115210</li>
					    <li class="list-group-item"><span class=" glyphicon glyphicon-time"></span></li>
					    <li class="list-group-item"><span class=" glyphicon glyphicon-map-marker"></span></li>
					</ul>
					<a href="${pageContext.request.contextPath}/login.jsp" class="btn btn-primary btn-lg text-center">
						<span class="glyphicon glyphicon-off"></span>
					</a>
			    </div>
			</div>
		</div>

		<div class=" col-md-8 col-md-offset-1">
			<div class="panel panel-info">
			    <div class="panel-heading ">
			        <h3 class="panel-title text-center">学生基础信息</h3>
			    </div>
			    <div class="panel-body">
					<div class="table-responsive">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th class="col-md-2">姓名</th>
									<td class="col-md-3"></td>
									<th class="col-md-2">学号</th>
									<td class="col-md-3"></td>
									<th class="col-md-2">照片</th>
								</tr>
			
								<tr>
									<th>班级</th>
									<td></td>
									<th>学院</th>
									<td></td>
									<th rowspan="5"></th>
								</tr>
								
								<tr>
									<th>出生年月 </th>
									<td></td>
									<th>民族</th>
									<td></td>
								</tr>
								
								<tr>
									<th>政治面貌</th>
									<td></td>
									<th>籍贯</th>
									<td></td>
								</tr>
								
								<tr>
									<th>联系电话 </th>
									<td></td>
									<th>宿舍</th>
									<td></td>
								</tr>
								
								<tr>
									<th>家庭电话</th>
									<td></td>
									<th>家长电话</th>
									<td></td>
								</tr>
								
								<tr>
									<th>是否为独生子女</th>
									<td></td>
									<th>家庭地址</th>
									<td colspan="2"></td>
								</tr>					
			
													
								<tr>
									<th>个人特长</th>
									<td colspan="4"></td>
								</tr>
			
								<tr>
									<th>兴趣爱好</th>
									<td colspan="4"></td>
								</tr>
											
								<tr>
									<th>个人理想与目标:</th>
									<td colspan="4"></td>
								</tr>
								
								<tr>
									<th colspan="5">班主任谈话记录:</th>
								</tr>
							
								<tr>
									<td  colspan="5" >第一次谈话：</td>
								</tr>
			
								<tr>
									<td  colspan="5" >第二次谈话：</td>
								</tr>
			
								<tr>
									<td  colspan="5" >第三次谈话：</td>
								</tr>
							</thead>
						</table>
					</div>  
			</div>	
			    </div>
		</div>

	</div>
</div>

</body>
</html>