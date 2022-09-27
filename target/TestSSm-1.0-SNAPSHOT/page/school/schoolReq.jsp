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
                url:"http://localhost:8080/school/baoxiu",
                data:{name1:$("#name1").val(),xnum:$("#xnum").val(),reson:$("#reson").val(),name2:$("#name2").val()},
                success:function(data){
                    if(data=="Y"){
                        alert("报修成功");
                    }else if(data=="N"){
                        alert("报修失败");
                    }
                },
                dataType:"text"
            })
        });
    })
</script>
<body>

<form class="form-horizontal container col-md-12 " role="form" style="border-radius: 15px;padding-top: 25px;padding-bottom: 15px;background-color: aliceblue;" action="">
	<h3 style="color: blue;width:400px;text-align: center;">设施报修申请</h3>
	<div class="form-group">
		<label for="firstname" class="col-md-4  control-label">报修设施：</label>
		<div class="col-md-6 ">
			<input type="text" class="form-control " id="name1" placeholder="请输入报修设施">
		</div>
	</div>
	<div class="form-group">
		<label for="lastname" class="col-md-4  control-label">报修数量：</label>
		<div class="col-md-6 ">
			<input type="text" class="form-control" id="xnum" placeholder="请输入报修数量">
		</div>
	</div>
	<div class="form-group">
		<label for="lastname" class="col-md-4  control-label">报修原因：</label>
		<div class="col-md-6 ">
			<input type="text" class="form-control" id="reson" placeholder="请输入报修原因">
		</div>
	</div>
	<div class="form-group">
		<label for="lastname" class="col-md-4  control-label">报修人：</label>
		<div class="col-md-6 ">
			<input type="text" class="form-control" id="name2" placeholder="请输入报修人">
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-md-12 ">
			<%--<button type="submit" class="btn btn-primary col-md-8 " data-toggle="button">提交</button>--%>
			<a href="###"  class="btn btn-primary col-md-8 " id="log">提交</a>
		</div>

	</div>
</form>
</body>
</html>
