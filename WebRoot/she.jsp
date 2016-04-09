<%@ page language="java" import="java.util.*,Classes.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>ifriends</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="styleforindex.css" />
<!--[if lte IE 6]><link rel="stylesheet" type="text/css" href="ie.css" /><![endif]-->
</head>
<body>
i<!-- BEGIN wrapper -->
<div id="wrapper">
  <!-- BEGIN header -->
  <div id="header">
    <!-- begin logo -->
    <div class="logo">
      <h1>ifriends</h1>
      <p>Find your friends here</p>
    </div>
    <ul class="pages">
      <li><a href="index1.jsp">Home</a></li>
      <li><a href="topic.jsp">发消息</a></li>
    </ul>
    <!-- end pages -->
    <!-- begin categories -->
    <!-- end categories -->
  </div>
  <!-- END header -->
  <!-- BEGIN content -->
  <div id="content">
    <!-- begin post -->
    <div class="single">
     
    <p>最新动态：</p>
    </div>
     <%
      String ie="";
      int iCount=0;
      info2 in=new info2();get g=new get();int iNum=g.iNumnew(1);
      for(int i=iNum;i>0;i--)
      {
       in=g.SelectNew(i);
       ie="<div class="+"single"+">"+"<p>"+in.getname()+":"+in.getnews()+"------发表于"+in.getdates()+"</p>"+"</div>";
       out.println(ie);
       iCount++;
       if(iCount==30)
       {
        i=-1;
       }
      }
    %>
    <!-- end post -->
  </div>
  <!-- END content -->
  <!-- BEGIN sidebar -->
  <div id="sidebar">
    <!-- begin sponsors -->
    <!-- end sponsors -->
    <!-- begin search -->
    <!-- end search -->
    <!-- begin popular posts -->
    <!-- end popular posts -->
    <!-- begin flickr photos -->
    <!-- end flickr photos -->
    <!-- begin featured video -->
    <!-- end featured video -->
    <!-- begin tag cloud -->
    <!-- end tag cloud -->
    <!-- BEGIN half sidebars -->
    <!-- END half sidebars -->
</div>
  <!-- END sidebar -->
</div>
<!-- END wrapper -->
<!-- BEGIN footer -->
<div id="footer">
  <div class="wrapper">
    <p class="l">Copyright &copy;7#410</p>
  </div>
</div>
<!-- END footer -->
</body>
</html>
