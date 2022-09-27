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
                url:"http://localhost:8080/login/DelU",
                data:{name1:$("#name1").val()},
                success:function(data){
                    if(data=="Y"){
                        alert("删除成功");
                        window.location.href ="<%=basePath%>/login/AllUser";
                    }else if(data=="N"){
                        alert("删除失败");
                    }
                },
                dataType:"text"
            })
        });
    })
</script>
<body>

<form class="form-horizontal container col-md-12 " role="form" style="border-radius: 15px;padding-top: 25px;padding-bottom: 15px;background-color: aliceblue;" action="">
	<h3 style="color: blue;width:400px;text-align: center;">删除</h3>
	<div class="form-group">
		<label for="firstname" class="col-md-4  control-label">用户名：</label>
		<div class="col-md-6 ">
			<input type="text" class="form-control " id="name1" placeholder="请输入账户">
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
