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
            $(".xzgg").click(function(){
                window.location.href = "<%=basePath %>/page/GG/addGg.jsp";
            });
            $(".del").click(function(){
                window.location.href = "<%=basePath %>/page/GG/delGg.jsp";
            });
        })
    </script>
</head>

<body>

<form class="form-horizontal container col-md-12 " role="form" style="border-radius: 15px;padding-top: 25px;padding-bottom: 15px;background-color: aliceblue;" >
 <h3 style="color: blue;width:400px;text-align: center;">公告信息管理</h3>
    <button type="button" class="btn btn-info xzgg" style="margin-right: 3px">新增公告</button>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>公告标题</th>
            <th>公告内容</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>

            <c:forEach var="list" items="${list}">
            <tr>
                <td><c:out value="${list.title}" /></td>
                <td><c:out value="${list.main}" /></td>
                <td><button type="button" class="btn btn-info del" style="margin-right: 3px">删除</button></td>
            </tr>
            </c:forEach>

        </tbody>
    </table>
</form>
</body>
</html>
