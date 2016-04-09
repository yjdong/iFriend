<%@ page language="java" import="java.util.*,Classes.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%       
          int iNum=0;    
          int currentpage=0;
          int pages=0;
          int currentsite1=0;
          int currentsite2=0;
          int currentsite3=0;
          int currentsite4=0;
          int currentsite5=0;
          int currentsite6=0;
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>iFriends</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="styleforindex.css" />
</head>
<body>
<!-- BEGIN wrapper -->
<div id="wrapper">
  <!-- BEGIN header -->
  <div id="header">
    <!-- begin logo -->
    <div class="logo">
      <h1>ifriends</h1>
      <p>find your friends here </p>
    </div>
    <!-- end logo -->
    <!-- begin advertisement -->
    <div class="ad"><img src="images/hand.jpg" alt="" /></div>
    <!-- end advertisement -->
    <!-- begin pages -->
    <ul class="pages">
      <li><a href="index1.jsp">Home</a></li>
	  <li><a href="register.jsp">注册</a></li>
	  <li><a href="she.jsp">交友社区</a></li>
      
       <%
          get s=new get(); pages=s.iP(1);iNum=s.iNum(1);
          if(request.getParameter("current")!=null){
          String c=request.getParameter("current");
          if(c.equals("f"))
          {
             currentpage=0;
          }
          else if(c.equals(""+pages))
          {
             out.println("<script>alert(\"已经是最后一页\");history.back();</script>");
          }
          else if(c.equals(""+-1))
          {
             out.println("<script>alert(\"已经是第一页\");history.back();</script>");
          }
          else{
          currentpage=Integer.parseInt(request.getParameter("current"));}
          
         }
         %>
        
       <li>当前是第 <%out.println(""+(currentpage+1));%>页</li>
       <li> <a href="index1.jsp?current=<%="f" %>"> 首页</a></li>
       <li> <a href="index1.jsp?current=<%=""+(currentpage+1)%>"> 下一页</a></li>
       <li> <a href="index1.jsp?current=<%=""+(currentpage-1)%>"> 上一页</a></li>
    </ul>
    <!-- end pages -->
    <!-- begin categories -->
    <ul class="categories">
      <li></li>
      <li></li>
      <li></li>
      <li></li>
      <li></li>
      <li><br /></li>
    </ul>
    <!-- end categories -->
  </div>
  <!-- END header -->
  <!-- BEGIN content -->
  <div id="content">
    <!-- begin featured news -->
    <!-- end featured news -->
    <!-- begin post -->
    <%
         info1 in1=new info1();
         get g1=new get();
         currentsite1=0+6*currentpage;
         in1=g1.Select(currentsite1);
     %>
<div class="uneven post">
      <img src="<% if(in1!=null){out.println(in1.getpicmin());}else{ out.println("images/xu.jpg");} %>" />
      <p> <%if(in1!=null)
            {
               out.println("我叫"+in1.getname()+"，来自"+in1.getarea());
               out.println(in1.getage()+"岁");
            }
            else
            {
               out.println("虚位以待，期待您的加入");
            }   
           %></p>
      <p class="category"><a href="detail.jsp?num=<%=currentsite1%>">了解TA</a></p>
      
    </div>
    <!-- end post -->
    <!-- begin post -->
     <%
         info1 in2=new info1();
         get g2=new get();
         currentsite2=1+6*currentpage;
         in2=g2.Select(currentsite2);
     %>
    <div class="post">
      <img src="<% if(in2!=null){out.println(in2.getpicmin());}else{out.println("images/xu.jpg");} %>" />
      <p> <%if(in2!=null)
            {
               out.println("我叫"+in2.getname()+"，来自"+in2.getarea());
               out.println(in2.getage()+"岁");
            }
            else
            {
               out.println("虚位以待，期待您的加入");
            }   
           %></p>
       <p class="category"><a href="detail.jsp?num=<%=currentsite2%>">了解TA</a></p>
    </div>
    <!-- end post -->
    <!-- begin post -->
    <%
         info1 in3=new info1();
         get g3=new get();
         currentsite3=2+6*currentpage;
         in3=g3.Select(currentsite3);
     %>
    <div class="uneven post">
      <img src="<%if(in3!=null){out.println(in3.getpicmin());}else{out.println("images/xu.jpg");};%>" alt="" />
      <p> <%if(in3!=null)
            {
               out.println("我叫"+in3.getname()+"，来自"+in3.getarea());
               out.println(in3.getage()+"岁");
            }
            else
            {
               out.println("虚位以待，期待您的加入");
            }   
           %></p>
      <p class="category"><a href="detail.jsp?num=<%=currentsite3%>">了解TA</a></p>
    </div>
    <!-- end post -->
    <!-- begin post -->
    <%
         info1 in4=new info1();
         get g4=new get();
         currentsite4=3+6*currentpage;
         in4=g4.Select(currentsite4);
     %>
    <div class="post">
      <img src="<%if(in4!=null){out.println(in4.getpicmin());}else{out.println("images/xu.jpg");}; %>" />
      <p> <%if(in4!=null)
            {
               out.println("我叫"+in4.getname()+"，来自"+in4.getarea());
               out.println(in4.getage()+"岁");
            }
            else
            {
               out.println("虚位以待，期待您的加入");
            }   
           %></p>
       <p class="category"><a href="detail.jsp?num=<%=currentsite4%>">了解TA</a></p>
    </div>
    <!-- end post -->
    <!-- begin post -->
     <%
         info1 in5=new info1();
         get g5=new get();
         currentsite5=4+6*currentpage;
         in5=g5.Select(currentsite5);
     %>
    <div class="uneven post">
    <img src="<%if(in5!=null){out.println(in5.getpicmin());}else{out.println("images/xu.jpg");}; %>" />
     <p> <%if(in5!=null)
            {
               out.println("我叫"+in5.getname()+"，来自"+in5.getarea());
               out.println(in5.getage()+"岁");
            }
            else
            {
               out.println("虚位以待，期待您的加入");
            }   
           %></p>
       <p class="category"><a href="detail.jsp?num=<%=currentsite5%>">了解TA</a></p>
    </div>
	<div class="post">
	<%
         info1 in6=new info1();
         get g6=new get();
         currentsite6=5+6*currentpage;
         in6=g6.Select(currentsite6);
     %>
    <img src="<%if(in6!=null){out.println(in6.getpicmin());}else{out.println("images/xu.jpg");}; %>" />
     <p> <%if(in6!=null)
            {
               out.println("我叫"+in6.getname()+"，来自"+in6.getarea());
               out.println(in6.getage()+"岁");
            }
            else
            {
               out.println("虚位以待，期待您的加入");
            }   
           %></p>
       <p class="category"><a href="detail.jsp?num=<%=currentsite6%>">了解TA</a></p>
    </div>
    <!-- end post -->

    <!-- end post -->
  </div>
  <!-- END content -->
  <!-- BEGIN sidebar -->
  <div id="sidebar">

    <div class="box">
      <h2>关于ifriends</h2>
      <ul class="popular">
        <li>
          <p>iFriends就是这样一个真实的社交网络，加入她你可以： <br />
            结识新朋友 <br />
            寻找老朋友 <br />
            联络朋友，了解他们的最新动态 <br />
            用照片和心情记录生活的点点滴滴 <br />
            和朋友分享你的快乐 <br />
            分享朋友的快乐 <br />
            找一个人倾诉或者听听朋友的倾诉 </p>
        </li>
      </ul>
    </div>
    <!-- end popular posts -->
    <!-- begin flickr photos -->
    <div class="box">
      <h2>&nbsp;</h2>
      <p>海内存知己，天涯若比邻。即使在遥远的距离，一个南，一个北，但是电脑前的互相鼓励，互相立下志向，使得我们之间的心贴得更近，使平静的心情变得激昂。每一句话都显出如此的直率和毫无目的。就是这样，从网络上的泛泛之交，变成了无事不谈的好友，这不是一朝一夕，这是路遥知马力，日久见人心 </p>
      <p class="flickr"> </p>
    </div>
    <!-- end flickr photos -->
    <!-- begin featured video -->
    <!-- end featured video -->
    <!-- begin tag cloud -->
<div class="box">
      <h2>交友心语</h2>
      <div class="tags"> 愿我的网络好友，在电脑的那一端，过得幸福快乐。 </div>
    </div>
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
    <p class="l">Copyright 7#410 </p>
  </div>
</div>
<!-- END footer -->
</body>
</html>