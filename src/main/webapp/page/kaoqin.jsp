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
    <script>
        $(function(){
            $("#log").click(function(){
                $.ajax({
                    url:"http://localhost:8080/login/UpK",
                    data:{name1:$("#name1").val(),bt:$("#bt").val(),ot:$("#ot").val(),bumen:$("#bumen").val(),zhuangtai:$("#zhuangtai").val()},
                    success:function(data){
                        if(data=="Y"){
                            alert("提交成功");
                        }else if(data=="N"){
                            alert("提交失败");
                        }
                    },
                    dataType:"text"
                })
            });
        })
    </script>
</head>

<body>

<form class="form-horizontal container col-md-4 " role="form" style="border-radius: 15px;padding-top: 25px;padding-bottom: 15px;background-color: aliceblue" >
 <h3 style="color: blue;width:400px;text-align: center;">考勤管理</h3>
  <div class="form-group">
    <label for="firstname" class="col-md-4  control-label">用户账户：</label>
    <div class="col-md-6 ">
      <input type="text" class="form-control" id="name1" placeholder="请输入账户">
    </div>
  </div>
  
      <div class="form-group">
    <label for="lastname" class="col-md-4  control-label">开始时间：</label>
    <div class="col-md-6 ">
      <input type="text" class="form-control" id="bt" placeholder="请输入开始时间">
    </div>
  </div>
  <div class="form-group">
    <label for="lastname" class="col-md-4  control-label">结束时间：</label>
    <div class="col-md-6 ">
      <input type="text" class="form-control" id="ot" placeholder="请输入结束时间">
    </div>
  </div>
   <div class="form-group">
    <label for="lastname" class="col-md-4  control-label">部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;门：</label>
    <div class="col-md-6 ">
      <select name="" id="bumen" style="height: 30px;border-radius: 5px;border: 1px solid #ccc">
      	<option value="行政部">&nbsp;&nbsp;行政部</option>
          <option value="执行部">&nbsp;&nbsp;执行部</option>
          <option value="财务部">&nbsp;&nbsp;财务部</option>
      </select>
    </div>
  </div>
 <div class="form-group">
    <label for="lastname" class="col-md-4  control-label">状&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;态：</label>
    <div class="col-md-6 ">
      <select name="" id="zhuangtai" style="height: 30px;border-radius: 5px;border: 1px solid #ccc">
      	<option value="正常">&nbsp;&nbsp;正常&nbsp;&nbsp;&nbsp;&nbsp;</option>
          <option value="休息">&nbsp;&nbsp;休息&nbsp;&nbsp;&nbsp;&nbsp;</option>
          <option value="请假">&nbsp;&nbsp;请假&nbsp;&nbsp;&nbsp;&nbsp;</option>
      </select>
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-offset-2 col-md-12 ">
        <a href="###" class="btn btn-primary col-md-8 " id="log">提交</a>
    </div>
     
  </div>
</form>
</body>
</html>
