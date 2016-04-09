<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>sorry.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   
<img src="images/sorry1.jpg"  align="center"/>
<table width="300" height="200" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr width="100%">
    <td width="100%" height="119"  ><div align="center"><font color="#F00FF"><strong><font size="4"> </font></strong>             
	<br>
		请先登录！
		<p align="center"> <a href="javascript:history.back();">返回</a>
	</p>
    </font></div><br>
	
	</td>
  </tr>
</table>
<p align="center">&nbsp;</p>
  </body>
</html>
