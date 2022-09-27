<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <meta charset="utf-8">
  <title>后勤管理系统</title>
  <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
  %>
<link rel="stylesheet" href="<%=basePath%>/bootstrap-3.3.7-dist/css/bootstrap.css">
<script src="<%=basePath%>/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<script src="<%=basePath%>/js/jquery.min.js"></script>
<style>
	body{
		background-image: url("<%=basePath%>/images/1.jpg");
	}
	.ok{
		width: 100%;
		height: 140px;
		background-color:cadetblue;
		margin-top: 240px;
		position: absolute;
		opacity: 0.5;
	}
	h1{
		position: absolute;
		margin-left: 300px;
		margin-top: 280px;
		color: white;
		opacity: 1;
		z-index: 999;
		
	}
	h2{
		position: absolute;
		margin-left: 880px;
		margin-top: 50px;
		color: white;
		opacity: 1;
		z-index: 999;
		
	}
	</style>
  <script>
      $(function(){
          $("#log").click(function(){
              $.ajax({
                  url:"http://localhost:8080/login/zhuce",
                  data:{name1:$("#name1").val(),psw:$("#psw").val(),psw2:$("#psw2").val(),psw:$("#psw").val(),sex:$("#sex").val(),phone:$("#phone").val(),year:$("#year").val()},
                  success:function(data){
                      if(data=="Y"){
                          alert("注册成功");
                          window.location.href ="<%=basePath%>";
                      }else if(data=="N"){
                          alert("注册失败");
                      }else if(data=="NN"){
                          alert("两次输入的密码不一致");
                      }


                  },
                  dataType:"text"
              })
          });
      })
  </script>
</head>

<body>
<h2>新用户注册</h2>
<h1>仓库管理系统</h1>
<div class="ok">
	
</div>
<form class="form-horizontal container col-md-4 " role="form" style="margin-top: 110px;margin-left: 740px; background-color: aliceblue;border-radius: 15px;padding-top: 25px;padding-bottom: 15px" accept-charset="" action="">
  <div class="form-group">
    <label for="firstname" class="col-md-4  control-label">账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;户：</label>
    <div class="col-md-6 ">
      <input type="text" class="form-control" id="name1" placeholder="请输入账户">
    </div>
  </div>
  <div class="form-group">
    <label for="lastname" class="col-md-4  control-label">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
    <div class="col-md-6 ">
      <input type="text" class="form-control" id="psw" placeholder="请输入密码">
    </div>
  </div>
      <div class="form-group">
    <label for="lastname" class="col-md-4  control-label">确认密码：</label>
    <div class="col-md-6 ">
      <input type="text" class="form-control" id="psw2" placeholder="请再次输入密码">
    </div>
  </div>
  <div class="form-group">
    <label for="lastname" class="col-md-4  control-label">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</label>
    <div class="col-md-6 ">
      <input type="text" class="form-control" id="sex" placeholder="请输入性别">
    </div>
  </div>
  <div class="form-group">
    <label for="lastname" class="col-md-4  control-label">电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话：</label>
    <div class="col-md-6 ">
      <input type="text" class="form-control" id="phone" placeholder="请输入电话">
    </div>
  </div>
    <div class="form-group">
    <label for="lastname" class="col-md-4  control-label">年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄：</label>
    <div class="col-md-6 ">
      <input type="text" class="form-control" id="year" placeholder="请输入年龄">
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-offset-2 col-md-12 ">
      <a href="###" class="btn btn-primary col-md-8 " id="log">注册</a>
    </div>
     
  </div>
 <a href="http://localhost:8080/" style="float: right">已有账号？点击直接登录</a>
</form>
</body>
</html>
