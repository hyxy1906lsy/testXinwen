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
<style>
	body{
		width: 700px;
		height: 500px;
	}
	
</style>
    <script>
        $(function(){
            $(".xiu").click(function(){
                //window.location.href = "<%=basePath%>/page/user/upU.jsp";
                var c=$(this).parent().prev().prev().prev().prev().prev().prev().html();

            });
            $(".del").click(function(){
                var c=$(this).parent().prev().prev().prev().prev().prev().prev().html();
                var r=confirm("确定删除吗？")
                if (r==true){
                    $.ajax({
                        url:"http://localhost:8080/login/DelU",
                        data:{name1:c},
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
                }
            });
            $("#quanxuan").click(function(){
                if($("#quanxuan").is(':checked')){
                    $("input[name='Fruit']").attr("checked","true");
                }else{
                    $("input[name='Fruit']").removeAttr("checked");
                }
            });
        })
    </script>
</head>

<body>

<form class="form-horizontal container col-md-12 " role="form" style="border-radius: 15px;padding-top: 25px;padding-bottom: 15px;background-color: aliceblue;" >
 <h3 style="color: blue;width:400px;text-align: center;">用户信息管理</h3>
    <table class="table table-striped">
        <%--<caption>条纹表格布局</caption>--%>
        <thead>
        <tr>
            <th><input type="checkbox" id="quanxuan">全选</th>
            <th>id</th>
            <th>账户</th>
            <th>密码</th>
            <th>性别</th>
            <th>年龄</th>
            <th>电话</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>

            <c:forEach var="list" items="${list}">
            <tr>
                <td><input type="checkbox" name="Fruit"></td>
                <td><c:out value="${list.id}" /></td>
                <td><c:out value="${list.name}" /></td>
                <td><c:out value="${list.psw}" /></td>
                <td><c:out value="${list.sex}" /></td>
                <td><c:out value="${list.year}" /></td>
                <td><c:out value="${list.phone}" /></td>
                <td><button type="button" class="btn btn-info del" style="margin-right: 3px">删除</button></td>
            </tr>
            </c:forEach>
        </tbody>
    </table>
</form>
</body>
</html>
