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
                url:"http://localhost:8080/sub/shenpi1",
                data:{name1:$("#name1").val(),YN:'已批准'},
                success:function(data){
                    if(data=="Y"){
                        alert("操作成功");
                        window.location.href ="<%=basePath%>/sub/AllSub";
                    }else if(data=="N"){
                        alert("操作失败");
                    }
                },
                dataType:"text"
            })
        });
        $("#lig").click(function(){
            $.ajax({
                url:"http://localhost:8080/sub/shenpi1",
                data:{name1:$("#name1").val(),YN:'已驳回'},
                success:function(data){
                    if(data=="Y"){
                        alert("操作成功");
                        // window.location.href = "http://localhost:8080/login/use?name1="+$("#name2").val();
                    }else if(data=="N"){
                        alert("操作失败");
                    }
                },
                dataType:"text"
            })
        });
    })
</script>
<body>

<form class="form-horizontal container col-md-12 " role="form" style="border-radius: 15px;padding-top: 25px;padding-bottom: 15px;background-color: aliceblue;" action="">
	<h3 style="color: blue;width:400px;text-align: center;">审批</h3>
	<div class="form-group">
		<label for="firstname" class="col-md-4  control-label">审批物品：</label>
		<div class="col-md-6 ">
			<input type="text" class="form-control " id="name1" placeholder="请输入物品">
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-md-12 ">
			<a href="###"  class="btn btn-primary col-md-8" id="log">批准</a>
			<a href="###"  class="btn btn-primary col-md-8" id="lig">驳回</a>
		</div>

	</div>
</form>
</body>
</html>
