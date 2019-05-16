<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme() + "://"  
            + request.getServerName() + ":" + request.getServerPort()  
            + path + "/";  
%>  
<html>
<title>添加用户</title>
</head>
<body style="padding-top:10%;">
     <div style="border:1px red solid;width:300px;height:300px;margin:auto;background: #5BC0DE">
    <h1>添加用户</h1>
	    <form action="" name="userForm">
	    <table >
	        <tr>
	          <td>姓名： </td>
	          <td> <input type="text" name="name"></td>
	        </tr>
	         <tr>
	          <td>年龄： </td>
	          <td> <input type="text" name="age"></td>
	        </tr> 
	        <tr>
	          <td>密码： </td>
	          <td><input type="text" name="password"> </td>
	        </tr>
	         
	        <tr>
	          <td colspan="2" align="center"><input type="button" value="添加"onclick="addUser()">    <input type="button" onclick="history.go(-1)" value="取消"></td>
	        </tr> 
	    </table>
	         
	         
	             
	        
	    </form>
   </div>
    <script type="text/javascript">
        function addUser() {
            var form = document.forms[0];
            form.action = "<%=basePath %>user/addUser.action";
            form.method = "post";
            form.submit();
        }
    </script>
</body>
</html>