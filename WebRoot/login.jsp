<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>iFriends login</title>
<link href="styleforlogin.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.STYLE1 {
	font-size: 18px;
	color: #66FFCC;
}
.STYLE2 {
	font-size: 24px;
	color: #FF0000;
}
.STYLE4 {color: #66CC66}
.STYLE5 {color: #0000FF; font-size: 20px;}
-->
</style>
</head>
<body>
<div id="topPan"><img src="images/logo.gif" title="Green Solutions" alt="Green Solutions" width="204" height="57" border="0"/>
  <ul>
    <li><a href="index.jsp">Home</a></li>
    
    <li><a href="about.html">About us</a></li>

    <li><a href="contact.html">Contact</a></li>
  </ul>
</div>
<div id="headerPan">
  <div id="headerPanleft">
    <div id="ourblog"> </div>
    <div id="possib"> </div>
    <div id="solution"> </div>
  </div>
  <h1>best Fresh Solution</h1>
</div>
<div id="bodyPan">
  <div id="leftPan">
    <div id="leftmemberPan">
      <h2>member <span>login</span></h2>
      <form name="login" id="login" action="LoginServlet" method="post">
        <label>用户名</label>
        <input type="text" name="name" />
        <label class="emailpadding">密码</label>
        <input class="fieldpadding" type="password" name="password" />
        <div id="leftPango">
          <p class="textposition"><a href="register.jsp">Resister now</a></p>
          <input type="submit" class="gobutton" value="Go" />
        </div>
      </form>
    </div>
  </div>
  <div id="rightPan">
    <div id="rightbodyPan">
      <h2 class="STYLE4">Small Tips</h2>
      <p class="STYLE1"><span class="STYLE2">网络有风险，交友请注意 </span><br />
      </p>
      <p class="STYLE5">在网络上交友，得到的不是什么物质帮助，更多的是精神帮助，它像是精神食粮。我们会源源不断的从中得到帮助。但这食粮不能沉迷地贪婪地不节制地去吃，应该有一个节度，有一条底线。如果一旦沉迷，他就变得有害了，像白粉，会使人失去理智。所以，要控制好这个度将来的网络会越来越发达，会逐渐走进千家万户，成为我们生活中不可缺少的一个重要部分，如果每一个人都能多一份信任，那将来的网络世界，会是美好的，和谐的一个新领域。 </p>
    </div>
  </div>
</div>

</body>
</html>