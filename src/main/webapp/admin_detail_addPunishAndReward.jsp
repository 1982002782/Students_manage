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
			<li><a href="${pageContext.request.contextPath}/admin_detail.jsp">学生基础信息</a></li>
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
			<li class="active"><a href="${pageContext.request.contextPath}/admin_detail_addPunishAndReward.jsp">添加奖罚信息</a></li>
		</ul>
	</div>
	</div>
</nav>
		<!-- 用户信息 -->
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
					<a href="${pageContext.request.contextPath}/login2.jsp" class="btn btn-primary btn-lg text-center">
						<span class="glyphicon glyphicon-off"></span>
					</a>
			    </div>
			</div>
		</div>
		<!-- 表单 -->
	<div class="col-md-3 col-md-offset-2" style="position: relative;">
	    <div class="panel panel-primary">
	        <div class="panel-heading">
	            <h3 class="panel-title ">奖惩信息</h3>
	        </div>
				<div class="panel-body">
	       		<form action="#" method="post" enctype="multipart/form-data">
	       		<div class="input-group">
	                    <span  class="input-group-addon">奖惩编号</span>
	                    <input class="form-control" name="id">
	                </div>
	                <br>
	                <div class="input-group">
	                    <span  class="input-group-addon">奖惩日期</span>
	                    <input type="date" class="form-control" name="date">
	                </div>
	  				<br>
	                 <div class="input-group">
	                    <span  class="input-group-addon">奖惩类型</span>
		                <select name="reward_or_punishiment" class="form-control" >
                   			<option value="奖励">奖励</option>
							<option value="惩罚">惩罚</option>
						</select>
		              </div>	                    
	                <br>
	                <div class="input-group">
	                    <span  class="input-group-addon">奖惩原因</span>
	                     <textarea class="form-control" name="content"></textarea>
	                </div>
	                <br>
	                <div class="input-group">
	                    <span  class="input-group-addon">奖惩内容</span>
	                    <textarea class="form-control" name="detail"></textarea>
	                </div>  
					<!-- 模态框（Modal） -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					    <div class="modal-dialog">
					        <div class="modal-content">
					            <div class="modal-header">
					                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					                <h4 class="modal-title" id="myModalLabel">奖惩信息</h4>
					            </div>
					            <div class="modal-body">是否确认提交？</div>
					            <div class="modal-footer">
					                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					                <button type="submit" class="btn btn-primary">确定</button>
					            </div>
					        </div><!-- /.modal-content -->
					    </div><!-- /.modal -->
					</div>
	       		</form>
	       		<br>
	            <!-- 按钮触发模态框 -->
				<button class="btn btn-success btn-sm col-md-offset-9 col-md-3" data-toggle="modal" data-target="#myModal">提交</button> 		
	        </div>	
	       </div>
	      </div>
	   </div>
	  </div>
	   
</body>
</html>