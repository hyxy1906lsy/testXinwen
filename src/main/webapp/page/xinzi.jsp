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
    <script>
        $(function(){
            $("#log").click(function(){
                $.ajax({
                    url:"http://localhost:8080/login/UpX",
                    data:{name1:$("#name1").val(),money:$("#money").val(),moneyjj:$("#moneyjj").val(),moneygz:$("#moneygz").val(),moneyk:$("#moneyk").val()},
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

<form class="form-horizontal container col-md-12 " role="form" style="border-radius: 15px;padding-top: 25px;padding-bottom: 15px;background-color: aliceblue;" >
 <h3 style="color: blue;width:400px;text-align: center;">薪资管理</h3>
  <div class="form-group">
    <label for="firstname" class="col-md-4  control-label">用户账户：</label>
    <div class="col-md-6 ">
      <input type="text" class="form-control " id="name1" placeholder="请输入账户">
    </div>
  </div>
  
      <div class="form-group">
    <label for="lastname" class="col-md-4  control-label">基本工资：</label>
    <div class="col-md-6 ">
      <input type="text" class="form-control" id="money" placeholder="请输入基本工资">
    </div>
  </div>
  <div class="form-group">
    <label for="lastname" class="col-md-4  control-label">奖&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;金：</label>
    <div class="col-md-6 ">
      <input type="text" class="form-control" id="moneyjj" placeholder="请输入该员工的奖金">
    </div>
  </div>
   <div class="form-group">
    <label for="lastname" class="col-md-4  control-label">加班工资：</label>
    <div class="col-md-6 ">
      <input type="text" class="form-control" id="moneygz" placeholder="请输入加班工资">
    </div>
  </div>
   <div class="form-group">
    <label for="lastname" class="col-md-4  control-label">违规扣费：</label>
    <div class="col-md-6 ">
      <input type="text" class="form-control" id="moneyk" placeholder="请输入违规扣费的金额">
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-offset-2 col-md-12 ">
        <a href="###" id="log" class="btn btn-primary col-md-8 ">提交</a>
    </div>
     
  </div>
</form>
</body>
</html>
