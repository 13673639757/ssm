<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>

<html>



<head>
<title>登录2</title>

<form action="/ssm/user/login.action" method="post">
<label>账号：</label>
<input type="text" id="name" name="name" placeholder="请输入账号" /><br/>
<label>密码：</label>
<input type="password" id="password" name="password" placeholder="请输入密码" /><br/>
<input type="submit" value="提交" />
<input type="reset" value="重置" />
</form>
</body>
</html>