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
	
	td{
		width: 200px;
		padding-top: 10px;
	}
	table{
		text-align: center;
	}
	input{
		width: 180px;
	}
	textarea{
		width: 180px;
	}
	h3{
		color:blue;
	}
</style>
	<script>
        $(function(){
            $("#log").click(function(){
                $.ajax({
                    url:"http://localhost:8080/gg/AddG",
                    data:{name1:$("#name1").val(),main:$("#main").val()},
                    success:function(data){
                        if(data=="Y"){
                            alert("添加成功");
                            window.location.href ="<%=basePath%>/gg/AllGg";
                        }else if(data=="N"){
                            alert("添加失败");
                        }
                    },
                    dataType:"text"
                })
            });
        })
	</script>
</head>

<body>
<form role="form-horizontal container" style="border-radius: 15px;padding-top: 25px;padding-bottom: 15px;background-color: aliceblue;width: 500px" action="">
 <table border="0">
 <tr><td colspan="2"><h3>添加公告</h3></td></tr>
 	<tr>
 		<td>公告标题：</td>
 		<td> <input type="text" id="name1"></td>
 	</tr>
 	<tr>
 		<td>公告内容：</td>
 		<td ><textarea  id="main"></textarea></td>
 	</tr>
 	<tr><td colspan="2">
		<%--<input type="submit" value="提交" class="btn btn-primary">--%>
		<a href="###" id="log" class="btn btn-primary">提交</a>
	</td></tr>
 	
 </table>
 
  
</form>
</body>
</html>
