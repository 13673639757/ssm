<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme() + "://"  
            + request.getServerName() + ":" + request.getServerPort()  
            + path + "/";  
%>  
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>编辑用户</title>

<script type="text/javascript">
    function updateUser() {
        var form = document.forms[0];
        form.action = "<%=basePath %>user/updateUser.action";
        form.method = "post";
        form.submit();
    }
</script>

</head>
<body style="padding-top:10%;">
   <div style="border:1px red solid;width:300px;height:300px;margin:auto;background: #5BC0DE">
    <h1>修改用户</h1>
    <form action="" name="userForm">
           <input type="hidden" name="id" value="${user.id }" /> 
    <table>
       <tr>
          <td>姓名：</td>
          <td><input type="text" name="name" value="${user.name }" /> </td>
       </tr>
       <tr>
          <td>年龄：</td>
          <td><input type="text" name="age" value="${user.age }" /> </td>
       </tr>
       <tr>
          <td> 密码：</td>
          <td> <input type="text" name="password" value="${user.password }" /> </td>
       </tr>
       <tr>
          <td colspan="2" align="center"> <input type="button"value="保存" onclick="updateUser()" />    <input type="button" onclick="history.go(-1)" value="取消"></td>
       </tr>
    </table>        
            
            
                  
        
    </form>
    </div>
</body>

</html>