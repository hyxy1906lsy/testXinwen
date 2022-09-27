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
</head>

<body>

<form class="form-horizontal container col-md-12 " role="form" style="border-radius: 15px;padding-top: 25px;padding-bottom: 15px;background-color: aliceblue;" >
 <h3 style="color: blue;width:400px;text-align: center;">用户信息管理</h3>
    <table class="table table-striped">
        <%--<caption>条纹表格布局</caption>--%>
        <thead>
        <tr>
            <th>账户</th>
            <th>开始时间</th>
            <th>结束时间</th>
            <th>部门</th>
            <th>状态</th>
            <th>基本工资</th>
            <th>奖金</th>
            <th>加班工资</th>
            <th>违规扣款</th>
        </tr>
        </thead>
        <tbody>

            <c:forEach var="list" items="${list}">
            <tr>
                <td><c:out value="${list.name}" /></td>
                <td><c:out value="${list.bt}" /></td>
                <td><c:out value="${list.ot}" /></td>
                <td><c:out value="${list.bumen}" /></td>
                <td><c:out value="${list.zhuangtai}" /></td>
                <td><c:out value="${list.money}" /></td>
                <td><c:out value="${list.moneyjj}" /></td>
                <td><c:out value="${list.moneygz}" /></td>
                <td><c:out value="${list.moneyk}" /></td>
            </tr>
            </c:forEach>

        </tbody>
    </table>
</form>
</body>
</html>
