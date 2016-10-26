<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
	<title>欢迎登陆</title>
	<%@include file="/static/public/jsp/taglibs.jsp"%>

	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes"> 
    
<link href="static/template/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="static/template/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />

<link href="static/template/css/font-awesome.css" rel="stylesheet">
<link href="static/template/css/style.css" rel="stylesheet" type="text/css">
<link href="static/template/css/pages/signin.css" rel="stylesheet" type="text/css">

</head>

<body>
	
	<div class="navbar navbar-fixed-top">
	
	<div class="navbar-inner">
		
		<div class="container">
			
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a>
			
			<a class="brand" href="index.html">
				Bootstrap 登录
			</a>		
			
			<div class="nav-collapse">
				<ul class="nav pull-right">
					<li class="">						
						<a href="signup.html" class="">
							还没注册?
						</a>
					</li>
					
					<li class="">						
						<a href="index.html" class="">
							<i class="icon-chevron-left"></i>
							返回主页
						</a>
						
					</li>
				</ul>
				
			</div><!--/.nav-collapse -->
		</div> <!-- /container -->
	</div> <!-- /navbar-inner -->
</div> <!-- /navbar -->



<div class="account-container">
	<div class="content clearfix">
		<form action="/login/validate" method="post">
			<h1>用户登录</h1>
			<div class="login-fields">
				<p>请提供您的详细信息</p>
				<c:if test="${code eq '500'}">
					${msg}
				</c:if>
				<div class="field">
					<label for="username">Username:</label>
					<input type="text" id="username" name="userName" value="" placeholder="Username" class="login username-field" />
				</div> <!-- /field -->
				<div class="field">
					<label for="password">Password:</label>
					<input type="password" id="password" name="passWord" value="" placeholder="Password" class="login password-field"/>
				</div> <!-- /password -->
			</div> <!-- /login-fields -->
			<div class="login-actions">
				<span class="login-checkbox">
					<input id="Field" name="Field" type="checkbox" class="field login-checkbox" value="First Choice" tabindex="4" />
					<label class="choice" for="Field">保持登录</label>
				</span>
				<button class="button btn btn-success btn-large">登录</button>
			</div> <!-- .actions -->
		</form>
	</div> <!-- /content -->
</div> <!-- /account-container -->



<div class="login-extra">
	<a href="#">密码重置</a>
</div> <!-- /login-extra -->


<script src="static/template/js/jquery-1.7.2.min.js"></script>
<script src="static/template/js/bootstrap.js"></script>
<script src="static/template/js/signin.js"></script>

</body>

</html>
