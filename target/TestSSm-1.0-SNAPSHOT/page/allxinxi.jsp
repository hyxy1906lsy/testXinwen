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

<body>

<form class="form-horizontal container col-md-12 " role="form" style="border-radius: 15px;padding-top: 25px;padding-bottom: 15px;background-color: aliceblue;" action="">
	<h3 style="color: blue;width:400px;text-align: center;">信息汇总</h3>
	<table class="table table-striped">
		<%--<caption>条纹表格布局</caption>--%>
		<thead>
		<tr>
			<th>账户</th>
			<th>密码</th>
			<th>性别</th>
			<th>年龄</th>
			<th>电话</th>
			<th>部门</th>
			<th>状态</th>
			<th>工资</th>
		</tr>
		</thead>
		<tbody>

		<c:forEach var="list" items="${list}">
			<tr>
				<td><c:out value="${list.name}" /></td>
				<td><c:out value="${list.psw}" /></td>
				<td><c:out value="${list.sex}" /></td>
				<td><c:out value="${list.year}" /></td>
				<td><c:out value="${list.phone}" /></td>
				<td><c:out value="${list.bumen}" /></td>
				<td><c:out value="${list.zhuangtai}" /></td><td>
				<td><c:out value="${list.money}" /></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>

	<table class="table table-striped">
		<thead>
		<tr>
			<th>公告标题</th>
			<th>公告内容</th>
		</tr>
		</thead>
		<tbody>

		<c:forEach var="list1" items="${list1}">
			<tr>
				<td><c:out value="${list1.title}" /></td>
				<td><c:out value="${list1.main}" /></td>
			</tr>
		</c:forEach>

		</tbody>
	</table>

	<table class="table table-striped">
		<%--<button type="button" class="btn btn-info xzgg" style="margin-right: 3px">新增设施</button>--%>
		<%--<caption>条纹表格布局</caption>--%>
		<thead>
		<tr>
			<th>设施名称</th>
			<th>设施数量</th>
			<th>设施价值</th>
			<th>购入年份</th>
		</tr>
		</thead>
		<tbody>

		<c:forEach var="list2" items="${list2}">
			<tr>
				<td><c:out value="${list2.name}" /></td>
				<td><c:out value="${list2.num}" /></td>
				<td><c:out value="${list2.money}" /></td>
				<td><c:out value="${list2.year}" /></td>
			</tr>
		</c:forEach>

		</tbody>
	</table>

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
		</tr>
		</thead>
		<tbody>

		<c:forEach var="list3" items="${list3}">
			<tr>
				<td><c:out value="${list3.sub}" /></td>
				<td><c:out value="${list3.count}" /></td>
				<td><c:out value="${list3.reson}" /></td>
				<td><c:out value="${list3.money}" /></td>
				<td><c:out value="${list3.people}" /></td>
				<td><c:out value="${list3.YN}" /></td>
			</tr>
		</c:forEach>

		</tbody>
	</table>

	<table class="table table-striped">
		<%--<caption>条纹表格布局</caption>--%>
		<thead>
		<tr>
			<th>反馈人</th>
			<th>反馈信息</th>
		</tr>
		</thead>
		<tbody>

		<c:forEach var="list4" items="${list4}">
			<tr>
				<td><c:out value="${list4.name}" /></td>
				<td><c:out value="${list4.main}" /></td>
			</tr>
		</c:forEach>

		</tbody>
	</table>
</form>
</body>
</html>
