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
			<li class="active"><a href="${pageContext.request.contextPath}/admin.jsp">首页</a></li>
			<li><a href="#">个人资料</a></li>
			<li><a href="${pageContext.request.contextPath}/admin_addStudent.jsp">上传学生信息</a></li>
			<li><a href="#">修改个人资料</a></li>
			<li><a href="${pageContext.request.contextPath}/admin_changePassword.jsp">修改密码</a></li>
		</ul>
	</div>
	</div>
</nav>
	
<!-- 搜索 -->
<div class="container-fluid">
	<form class="form-inline" active="#" method="post">
		<div class="form-group">
			<label>学院：</label>
			<select class="form-control input-sm">
				<option>不限</option>
				<option>计算机学院</option>
				<option>数学院</option>
			</select>
		</div>
		<div class="form-group">
			<label>&emsp;性别：</label>
			<select class="form-control input-sm">
				<option>不限</option>
				<option>男</option>
				<option>女</option>
			</select>
		</div>
		<div class="form-group">
			<label>&emsp;</label>
			<input class="form-control input-sm" type="text" placeholder="输入学生或姓名">
			<button type="submit" class="btn btn-info btn-sm">
			  <span class="glyphicon glyphicon-search"></span>
			</button>
		</div>
	</form>
</div>
	
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

		<!-- 缩略图可以放这-->
		 <!--  <c:forEach items="${stu}" var="student">-->
		<div class="col-md-10">
			<div class="row">
		    	<div class="col-md-2">
		        	<div class="thumbnail" style="width:130px; height:265px;">
		            	<img src="${pageContext.request.contextPath}/img/4.png" style="width:132px; height:160px;">
		            	<h5>姓名</h5>
		          		<p class="h5">学号</p>
		         		<a class="btn btn-info" href="${pageContext.request.contextPath}/admin_detail.jsp">详细</a>
		        	</div>
		        </div>
		        	<div class="col-md-2">
		    		    <div class="thumbnail" style="width:130px; height:265px;">
			            	<img src="${pageContext.request.contextPath}/img/4.png" style="width:132px; height:160px;">
			            	<h5>姓名</h5>
			          		<p class="h5">学号</p>
		         			<a class="btn btn-info" href="${pageContext.request.contextPath}/admin_detail.jsp">详细</a>
			        	</div>
		        	</div>
		        	<div class="col-md-2">
			        	<div class="thumbnail" style="width:130px; height:265px;">
			            	<img src="${pageContext.request.contextPath}/img/4.png" style="width:132px; height:160px;">
			            	<h5>姓名</h5>
			          		<p class="h5">学号</p>
		         			<a class="btn btn-info" href="${pageContext.request.contextPath}/admin_detail.jsp">详细</a>
			        	</div>
		        	</div>
		        	<div class="col-md-2">
			        	<div class="thumbnail" style="width:130px; height:265px;">
			            	<img src="${pageContext.request.contextPath}/img/4.png" style="width:132px; height:160px;">
			            	<h5>姓名</h5>
			          		<p class="h5">学号</p>
		         			<a class="btn btn-info" href="${pageContext.request.contextPath}/admin_detail.jsp">详细</a>
			        	</div>
			        </div>	
			        <div class="col-md-2">
			        	<div class="thumbnail" style="width:130px; height:265px;">
			            	<img src="${pageContext.request.contextPath}/img/4.png" style="width:132px; height:160px;">
			            	<h5>姓名</h5>
			          		<p class="h5">学号</p>
		         			<a class="btn btn-info" href="${pageContext.request.contextPath}/admin_detail.jsp">详细</a>
			        	</div>
			      </div>
			      <div class="col-md-2 ">
		        	<div class="thumbnail" style="width:130px; height:265px;">
		            	<img src="${pageContext.request.contextPath}/img/4.png" style="width:132px; height:160px;">
		            	<h5>姓名</h5>
		          		<p class="h5">学号</p>
		         		<a class="btn btn-info" href="${pageContext.request.contextPath}/admin_detail.jsp">详细</a>
		        	</div>		        	
		    	</div>
		    	<div class="col-md-2 ">
		        	<div class="thumbnail" style="width:130px; height:265px;">
		            	<img src="${pageContext.request.contextPath}/img/4.png" style="width:132px; height:160px;">
		            	<h5>姓名</h5>
		          		<p class="h5">学号</p>
		         			<a class="btn btn-info" href="${pageContext.request.contextPath}/admin_detail.jsp">详细</a>
		        	</div>		        	
		    	</div>
		    	<div class="col-md-2">
			        	<div class="thumbnail" style="width:130px; height:265px;">
			            	<img src="${pageContext.request.contextPath}/img/4.png" style="width:132px; height:160px;">
			            	<h5>姓名</h5>
			          		<p class="h5">学号</p>
		         			<a class="btn btn-info" href="${pageContext.request.contextPath}/admin_detail.jsp">详细</a>
			        	</div>
		        	</div>
		        	<div class="col-md-2">
			        	<div class="thumbnail" style="width:130px; height:265px;">
			            	<img src="${pageContext.request.contextPath}/img/4.png" style="width:132px; height:160px;">
			            	<h5>姓名</h5>
			          		<p class="h5">学号</p>
		         			<a class="btn btn-info" href="${pageContext.request.contextPath}/admin_detail.jsp">详细</a>
			        	</div>
			        </div>	
			        <div class="col-md-2">
			        	<div class="thumbnail" style="width:130px; height:265px;">
			            	<img src="${pageContext.request.contextPath}/img/4.png" style="width:132px; height:160px;">
			            	<h5>姓名</h5>
			          		<p class="h5">学号</p>
		         			<a class="btn btn-info" href="${pageContext.request.contextPath}/admin_detail.jsp">详细</a>
			        	</div>
			      </div>
			      <div class="col-md-2 ">
		        	<div class="thumbnail" style="width:130px; height:265px;">
		            	<img src="${pageContext.request.contextPath}/img/4.png" style="width:132px; height:160px;">
		            	<h5>姓名</h5>
		          		<p class="h5">学号</p>
		         			<a class="btn btn-info" href="${pageContext.request.contextPath}/admin_detail.jsp">详细</a>
		        	</div>		        	
		    	</div>
		    	<div class="col-md-2 ">
		        	<div class="thumbnail" style="width:130px; height:265px;">
		            	<img src="${pageContext.request.contextPath}/img/4.png" style="width:132px; height:160px;">
		            	<h5>姓名</h5>
		          		<p class="h5">学号</p>
		         			<a class="btn btn-info" href="${pageContext.request.contextPath}/admin_detail.jsp">详细</a>
		        	</div>		        	
		    	</div>	   	       	        	      	        
			</div>
			<!--</c:forEach>-->
		</div> 
	</div>
</div>
	



<!-- 分页 -->	

	<div class="text-center footer" style="margin-top:80px;">
		<ul class="pagination">
			共条,当前第
			<span>5</span>
			页
		<li class="active"><a href="#">上一页</a></li>
		<li><a href="#">1</a></li>
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">4</a></li>
		<li><a href="#">5</a></li>
		<li><a href="#">下一页</a></li>
		到第
		<input type="text" style="width:40px;">
		页
		<button class="btn">确定</button>
		</ul>
	</div>
</body>
</html>