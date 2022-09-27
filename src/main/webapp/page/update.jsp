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
                url:"http://localhost:8080/login/UpA",
                data:{name1:$("#name1").val(),oldP:$("#oldP").val(),newP:$("#newP").val(),newP2:$("#newP2").val()},
                success:function(data){
                    if(data=="Y"){
                        alert("修改成功");

                    }else if(data=="N"){
                        alert("修改失败");
                    }else if(data=="NN"){
                        alert("两次输入的密码不一致");
                    }

                },
                dataType:"text"
            })
        });
    })
</script>
<body>

<form class="form-horizontal container col-md-12 " role="form" style="border-radius: 15px;padding-top: 25px;padding-bottom: 15px;background-color: aliceblue;" action="">
	<h3 style="color: blue;width:400px;text-align: center;">更改密码</h3>
	<div class="form-group">
		<label for="firstname" class="col-md-4  control-label">用户账户：</label>
		<div class="col-md-6 ">
			<input type="text" class="form-control " id="name1" placeholder="请输入账户">
		</div>
	</div>

	<div class="form-group">
		<label for="lastname" class="col-md-4  control-label">旧密码：</label>
		<div class="col-md-6 ">
			<input type="text" class="form-control" id="oldP" placeholder="请输入旧密码">
		</div>
	</div>
	<div class="form-group">
		<label for="lastname" class="col-md-4  control-label">新密码：</label>
		<div class="col-md-6 ">
			<input type="text" class="form-control" id="newP" placeholder="请输入新密码">
		</div>
	</div>
	<div class="form-group">
		<label for="lastname" class="col-md-4  control-label">确认密码：</label>
		<div class="col-md-6 ">
			<input type="text" class="form-control" id="newP2" placeholder="请再次输入">
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-md-12 ">
			<a href="###" class="btn btn-primary col-md-8 " id="log">更改</a>
		</div>

	</div>
</form>
</body>
</html>
