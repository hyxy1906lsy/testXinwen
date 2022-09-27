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
<link rel="stylesheet" href="<%=basePath%>/css/zz.css">
<script src="<%=basePath%>/jq/jquery.min.js"></script>
<script src="<%=basePath%>/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<script>
	$(function(){
        $(".x").click(function(){
            $(".x").css({background:"aliceblue"});
            $(".x").css({color:"black"});
        });
		$(".x1").click(function(){
			$(".x1").css({background:"skyblue",color:"white"});
            $("#tp").attr("src","http://localhost:8080/page/user/upU.jsp");
         });
		$(".x2").click(function(){
            $(".x2").css({background:"skyblue",color:"white"});
            $("#tp").attr("src","http://localhost:8080/page/subReq.jsp");

         });
		$(".x3").click(function(){
            $(".x3").css({background:"skyblue",color:"white"});
            $("#tp").attr("src","http://localhost:8080/login/AllX");
         });
		$(".x4").click(function(){
            $(".x4").css({background:"skyblue",color:"white"});
            $("#tp").attr("src","http://localhost:8080/page/school/schoolReq.jsp");
         });
		$(".x5").click(function(){
            $(".x5").css({background:"skyblue",color:"white"});
            $("#tp").attr("src","http://localhost:8080/gg/AllGgu");
         });
		$(".x6").click(function(){
            $(".x6").css({background:"skyblue",color:"white"});
            $("#tp").attr("src","<%=basePath%>/page/fankui.jsp");
         });
    })
</script>
<style>
	body{
		background-image: url("<%=basePath%>/images/2003218.jpg");
	}
	</style>
</head>

<body>
<header>
<img src="<%=basePath%>images/logoo.png" alt="">
	<nav>
		<ol><li style="width:200px">欢迎您，用户：${user}</li>
			<li class="aa5">切换系统
				<ul>
					<li><a href="http://localhost:8080/">管理员</a></li>
					<li><a href="http://localhost:8080/">会员</a></li>
				</ul>
			</li>
		</ol>
	</nav>
</header>
<main>
	 <aside>
	 	<dl>
	 		<dt>用户管理</dt>
	 		<dd><a href="###" class="x1 x">用户信息修改</a></dd>
	 		<dt>物资管理</dt>
	 		<dd><a href="###" class="x2 x">物资采购申请</a></dd>
	 		<dt>后勤管理</dt>
	 		<dd><a href="###" class="x3 x">信息汇总查询</a></dd>
	 		<dt>设施管理</dt>
	 		<dd><a href="###" class="x4 x">设施报修申请</a></dd>
	 		<dt>综合管理</dt>
	 		<dd><a href="###" class="x5 x">公告查看</a></dd>
	 		<dd><a href="###" class="x6 x">信息反馈</a></dd>
	 	</dl>
	 </aside>
	 <article class="a1">
	 	<iframe src="" frameborder="0" width="700" height="700" id="tp"></iframe>
	 </article>
</main>
<footer>
	学校后勤管理系统
</footer>
</body>
</html>