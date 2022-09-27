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
            $(".p").click(function(){
                window.location.href = "http://localhost:8080/page/shenpi.jsp";
            });

        })
    </script>
</head>

<body>

<form class="form-horizontal container col-md-12 " role="form" style="border-radius: 15px;padding-top: 25px;padding-bottom: 15px;background-color: aliceblue;" >
 <h3 style="color: blue;width:400px;text-align: center;">物资信息管理</h3>
    <table class="table table-striped">
        <%--<caption>条纹表格布局</caption>--%>
        <thead>
        <tr>
            <th>物资</th>
            <th>数量</th>
            <th>理由</th>
            <th>金额</th>
            <th>申请人</th>
            <th>是否批准</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>

            <c:forEach var="list" items="${list}">
            <tr>
                <td><c:out value="${list.sub}" /></td>
                <td><c:out value="${list.count}" /></td>
                <td><c:out value="${list.reson}" /></td>
                <td><c:out value="${list.money}" /></td>
                <td><c:out value="${list.people}" /></td>
                <td><c:out value="${list.YN}" /></td>
                <td><button type="button" class="btn btn-info p" style="margin-right: 3px">审批</button></td>
            </tr>
            </c:forEach>

        </tbody>
    </table>
</form>
</body>
</html>
