<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%String a=request.getAttribute("pp").toString();
 
 %>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>请选择上传的图片</title>
</head> 
<body>
<table border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="45" align="center" valign="middle">
    <form action="uploadimage.jsp?pp=<%=a%>" method="post" enctype="multipart/form-data" name="form1">
    请选择上传的图片<input type="file" name="file" >
      <input type="submit" name="Submit" value="上传">
    </form>
    </td>
  </tr>
</table>
<p align="center"><img src="images/checkimg.jpg" > ifriends </p>
</body>
</html>

