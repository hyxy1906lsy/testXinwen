<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta charset="utf-8">
	<title>无标题文档</title>
	<%
		String path = request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
	%>
	<link rel="stylesheet" href="<%=basePath%>/bootstrap-3.3.7-dist/css/bootstrap.css">
	<script src="<%=basePath%>/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
	<script src="<%=basePath%>/js/jquery.min.js"></script>
</head>
<script>
    $(function(){
        $("#log").click(function(){
            $.ajax({
                url:"http://localhost:8080/login/UpU",
                data:{name1:$("#name1").val(),name2:$("#name2").val(),psw:$("#psw").val(),sex:$("#sex").val(),year:$("#year").val(),phone:$("#phone").val()},
                success:function(data){
                    if(data=="Y"){
                        alert("修改成功");
                        window.location.href ="<%=basePath%>/login/AllUser";
                    }else if(data=="N"){
                        alert("修改失败");
                    }
                },
                dataType:"text"
            })
        });
    })
</script>
<body>

<form class="form-horizontal container col-md-12 " role="form" style="border-radius: 15px;padding-top: 25px;padding-bottom: 15px;background-color: aliceblue;" action="">
	<h3 style="color: blue;width:400px;text-align: center;">修改个人信息</h3>
	<div class="form-group">
		<label for="firstname" class="col-md-4  control-label">原账户名：</label>
		<div class="col-md-6 ">
			<input type="text" class="form-control " id="name1" placeholder="请输入账户">
		</div>
	</div>
	<div class="form-group">
		<label for="firstname" class="col-md-4  control-label">新账户名：</label>
		<div class="col-md-6 ">
			<input type="text" class="form-control " id="name2" placeholder="请输入账户">
		</div>
	</div>
	<div class="form-group">
		<label for="lastname" class="col-md-4  control-label">密码：</label>
		<div class="col-md-6 ">
			<input type="text" class="form-control" id="psw" placeholder="请输入密码">
		</div>
	</div>
	<div class="form-group">
		<label for="lastname" class="col-md-4  control-label">性别：</label>
		<div class="col-md-6 ">
			<input type="text" class="form-control" id="sex" placeholder="请输入性别">
		</div>
	</div>
	<div class="form-group">
		<label for="lastname" class="col-md-4  control-label">年龄：</label>
		<div class="col-md-6 ">
			<input type="text" class="form-control" id="year" placeholder="请输入年龄">
		</div>
	</div>
	<div class="form-group">
		<label for="lastname" class="col-md-4  control-label">电话：</label>
		<div class="col-md-6 ">
			<input type="text" class="form-control" id="phone" placeholder="请输入电话">
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-md-12 ">
			<a href="###"  class="btn btn-primary col-md-8" id="log">提交</a>
		</div>

	</div>
</form>
</body>
</html>
