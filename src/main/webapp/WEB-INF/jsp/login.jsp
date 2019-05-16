<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>


<html>

<head>
<title>登录</title>

<link
    href="${path}/static/bootstrap/css/bootstrap.min.css"
    rel="stylesheet">
<script type="text/javascript"
    src="${path}/static/jquery/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
    src="${path}/static/bootstrap/js/bootstrap.min.js"></script>
<body>


<form action="/ssm/user/login.action" method="post" style="width: 300px;
    height: 200px;
    margin: 100px auto;
    text-align: center;
    line-height: 38px;
    background: #5BC0DE;
    border-radius: 4px;" >
    <div class="form-group">
      <h3>登录页面</h3>
    </div>
  <!--  <div class="form-group">
    <label for="name" >账号：</label>
    <div >
      <input type="text" id="name" name="name" placeholder="请输入账号" />
    </div>
  </div>
  <div class="form-group">
    <label for="password" class="col-sm-2 control-label">密码：</label>
    <div class="col-sm-10">
      <input type="password"  id="password" name="password" placeholder="请输入密码" /><br/>
    </div>
  </div>
  -->
  <div class="col-sm-offset-2 col-sm-10">
	  <table class="form-group">
	     <tr>
	       <td>账号：</td>
	       <td><input type="text" id="name" name="name" placeholder="请输入账号" /></td>
	     </tr>
	     <tr>
	       <td>密码：</td>
	       <td> <input type="password"  id="password" name="password" placeholder="请输入密码" /><br/></td>
	     </tr>
	  </table>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">登录</button>
    </div>
  </div>
  
</form>
</body>
</html>