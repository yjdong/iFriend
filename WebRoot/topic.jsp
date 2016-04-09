<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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

      <p>Find your friends here</p><br>

    </div>

    <!-- begin pages -->

    <ul class="pages">

      <li><a href="index1.jsp">Home</a></li>
      <li><a href="she.jsp">交友社区</a></li>
    

    </ul>

    <!-- end pages -->

    <!-- begin categories -->
    <!-- end categories -->
  </div>
  <!-- END header -->

  <!-- BEGIN content -->

  <div id="content">

    <!-- begin post -->
    <!-- end post -->
<div id="comments">

      <div id="respond">

        <h2>Contact Form</h2>

        <form action="ComposeServlet" method="post" id="commentform">

          <p>
            <textarea name="content" id="comment" cols="100%" rows="10" tabindex="4"></textarea>

          </p>

          <p>

            <button name="submit" type="submit" id="submit">Submit</button>

          </p>

        </form>

      </div>

    </div>

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

    <p class="l">Copyright &copy; 7#410 </p>

  </div>
</div>

<!-- END footer -->

</body>

</html>

