<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后勤管理系统</title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css">
    <script src="bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <script src="js/jquery.min.js"></script>
    <style>
        body{
            background-image: url("images/1.jpg");
        }
        .ok{
            width: 100%;
            height: 140px;
            background-color:cadetblue;
            margin-top: 240px;
            position: absolute;
            opacity: 0.5;
        }
        h1{
            position: absolute;
            margin-left: 300px;
            margin-top: 280px;
            color: white;
            opacity: 1;
            z-index: 999;

        }
    </style>
    <script>
        $(function(){
            $("#log").click(function(){
                $.ajax({
                    url:"http://localhost:8080/login/adminlog",
                    data:{name1:$("#name1").val(),psw:$("#psw").val(),sel:$("#sel").val()},
                    success:function(data){
                        if(data=="Y"){
                            alert("管理员登陆成功");
                            window.location.href = "http://localhost:8080/login/adm?name1="+$("#name1").val();
                        }else if(data=="N"){
                            alert("管理员登录失败");
                        }else if(data=="UY"){
                            alert("用户登录成功");
                            window.location.href = "http://localhost:8080/login/use?name1="+$("#name1").val();
                        }else if(data=="UN"){
                            alert("用户登录失败");
                        }


                    },
                    dataType:"text"
                })
            });
        })
    </script>
</head>

<body>
<h1>后勤管理系统</h1>
<div class="ok">

</div>
<form action="" class="form-horizontal container col-md-4 " role="form" style="margin-top: 210px;margin-left: 740px; background-color: aliceblue;border-radius: 15px;padding-top: 25px;padding-bottom: 15px" >
    <div class="form-group">
        <label for="firstname" class="col-md-4  control-label">账户：</label>
        <div class="col-md-6 ">
            <input type="text" class="form-control" id="name1" placeholder="请输入账户">
        </div>
    </div>
    <div class="form-group">
        <label for="lastname" class="col-md-4  control-label">密码：</label>
        <div class="col-md-6 ">
            <input type="password" class="form-control" id="psw" placeholder="请输入密码">
        </div>
    </div>
    <div class="form-group">
        <label for="lastname" class="col-md-4  control-label">身份：</label>
        <div class="col-md-6 ">
            <select id=sel id="" style="height: 30px;border-radius: 5px;border: 1px solid #ccc">
                <option value="1">&nbsp;&nbsp;管理员</option>
                <option value="2">&nbsp;&nbsp;用户</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-md-12 ">
            <%--<input type="submit" class="btn btn-primary col-md-8 " id="lo" value="登录">--%>
                <a href="###" class="btn btn-primary col-md-8 "  id="log">登录</a>
        </div>

    </div>
    <a href="page/zhuce.jsp" style="float: right">没有账号？点击注册</a>
</form>
</body>
</html>