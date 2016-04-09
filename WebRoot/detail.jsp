<%@ page language="java" import="java.util.*,Classes.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
   int id;
   String num=request.getParameter("num");
   id=Integer.parseInt(num);
   info1 in=new info1();
   get g=new get();
   in=g.Select(id);
   if(in==null)
   {%><script language="javascript"> alert("不存在该用户");history.back();</script>
    <% 
   }
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>iFriends</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="stylefordetail.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="ie"></div>
<div id="wrapper">
  <ul id="nav">
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
  </ul>
  <h1><img src="images/logo.gif" width="135" height="30" alt="logo" /></h1>
  <div id="body">
    <div class="inner">
      <div id="content">
        <div>
          <p><%if(in!=null)out.println("我叫"+in.getname()+"，来自"+in.getarea());%></p>
            <p> <%if(in!=null)out.println(in.getage()+"岁");%></p>
            <p><%if(in!=null)out.print("专业："+in.getmajor()); %></p>
            <p><%if(in!=null)out.print("爱好："+in.gethobby()); %></p>
          </div>
      </div>
      <!-- end content -->
      <div id="page_title">
        <p>This</p>
        <p> is </p>
        <p>me! </p>
      </div>
      <!-- end page_title -->
      <div id="news">
        <div>
          <div>
            <h2>想认识我吗？</h2>
            <p><a href="she.jsp">交友社区</a></p>
            <p> <a href="index1.jsp">返回首页</a></p>
          </div>
        </div>
      </div>
      <!-- end news -->
      <div class="clear"></div>
    </div>
    <!-- end .inner -->
    <div id="footer"> <img src="images/footer.gif" width="435" height="196" alt="tortoise" class="footer" /> <img src="images/footer_ie.gif" width="435" height="196" alt="tortoise" class="footerie" /> </div>
    <!-- end footer -->
  </div>
  <!-- end body -->
  <div id="paper">
    <div class="inner">
      <img src="<%if(in!=null)out.println(in.getpic()); %>" width="180" height="200" alt="picture 1" />
    </div>
    <!-- end .inner -->
  </div>
  <!-- end paper -->
</div>
<!-- end wrapper -->
<!-- Do not remove read http://www.865171.cn/css-templates/ -->
<div style="clear:both;position:relative;display:block;margin-top:530px;" > </div>
</body>
</html>
