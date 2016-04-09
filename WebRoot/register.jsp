<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>iFriends register</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/stylesforregister.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="main">
  <div id="header">
    <h1>&nbsp;</h1>
    <h1>&nbsp;</h1>
    <h1>iFriends<span class="green">Online</span></h1>
    <div class="footLinks">  _____________________________________________________________________________<a href="index.jsp" class="space">返回首页</a></div>
    <p>&nbsp;</p>
  </div>
  <div id="conts">
    <div id="leftCol">
      <div id="banner">
        <h1 class="green">Find your friends Here</h1>
        <p>&nbsp;</p>
      </div>
      <div id="welcomeBlock-left">
        <h3> Welcome </h3>
        <p>海内存知己，天涯若比邻。即使在遥远的距离，一个南，一个北，但是电脑前的互相鼓励，互相立下志向，使得我们之间的心贴得更近，使平静的心情变得激昂。每一句话都显出如此的直率和毫无目的。就是这样，从网络上的泛泛之交，变成了无事不谈的好友，这不是一朝一夕，这是路遥知马力，日久见人心 </p>
        <p class="style1">&nbsp;</p>
        <div id="menu">
          <h4>Tips</h4>
          <div class="menuBox">
            <div class="menuText">
              <p class="head">我们要相信网上交友，但也要注意自身的安全。</p>
            </div>
            <div class="menu1"></div>
          </div>
          <div class="menuBox">
            <div class="menuText">
              <p class="head">交友时不要把自己的私人秘密告诉自己不太熟悉的人</p>
              </div>
            <div class="menu2"></div>
          </div>
        </div>
      </div>
      <form name="userRegisterForm" method="post" action="RegisterServlet" onsubmit="return checkForm(this)">
      <div id="onlineBlock-right">
        <h3>填写个人信息</h3>
        <div class="bookingBox">
          <div class="box">
            <p>用户名</p>
            <input type="text" name="name" id="uid" />
          </div>
          <div class="box">
            <p>密码</p>
            <input type="password" name="password" id="upassword"/>
          </div>
		  <div class="box">
            <p>真实姓名</p>
            <input type="text" name="realname" id="realname" />
          </div>
		  <div class="box">
            <p>性别</p>
            <select name="gender"><option selected>请选择性别</option>
             <option value=1>男</option><option value=2>女</option></select>
          </div>
          <div class="box">
            <p>年龄</p>
            <input type="text" name="age"  id="age"/>
          </div>
          <div class="box">
            <p>生日</p>
            <input type="text" name="birthday"  id="birthday"/>
          </div>
		   <div class="box">
            <p>居住地</p>
            <input type="text" name="area"  id="area"/>
          </div>
		   <div class="box">
            <p>Email</p>
            <input type="text" name="email"  id="email"/>
          </div>
          <div class="box">
            <p>专业</p>
            <input type="text" name="work"  id="work"/>
          </div>
          <div class="box">
            <p>兴趣爱好</p>
            <input type="text" name="hobby" id="hobby"/>
          </div>
          <div class="box">
            <p>&nbsp;</p>
            <input name="regostersubmit" type="submit" value="下一步" />
            <img src="images/drop.gif" alt="" /></div>
        </div>
        
        </form>
      
        <div id="mesg">
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
        </div>
      </div>
    </div>
    <div id="rightCol">
      <div class="top"><img src="images/menu.gif" alt="" /></div>
      <div class="bottom">
        <h3>交友online</h3>
        <p>随着互联网的发展，网上交友网站也变得越来越普及。网上交友网站也日益进步。 <br />
网上交友的好处也十分明显。  首先，网上交流可以减少情感上的波动，无论是你是主动方还是被动方，被拒绝都不会让你感到尴尬或受伤。  其次，当自己心里有好多话想对某个人说,但又不想跟认识的人说,所以就想到在上网找网友聊天,网友可以帮你提意见,可以当你的心理医生,内心的知音.对现实中的不满,可以对网友诉说。再者，当你烦恼的时候,难过的时候,哪怕网友发过来的一句&quot;吃饭了吗&quot;,&quot;最近好吗&quot;,&quot;过得好吗&quot;都是一句贴心,感人的话......</p>
      </div>
    </div>
  </div>
  <div id="footer">
    <div class="footLinks"> </div>
  </div>

</body>
</html>

<script language="javascript">
	function checkForm(form){
		if(isEmpty(form.uid.value) || isEmpty(form.upassword.value)|| (form.gender.value != 1 && form.gender.value !=2)
		 || isEmpty(form.realname.value) || isEmpty(form.email.value) || isEmpty(form.work.value) || isEmpty(form.hobby.value) || isEmpty(form.age.value) || isEmpty(form.area.value) || isEmpty(form.birthday.value)){
			alert("请将必填项填写完整!");
			return false;
		}
		if(form.upassword.value.length<6 || form.upassword.value.length>16){
			alert("密码长度不得少于6个字符，不得多于16个字符！");
			return false;
		}
		return true;
	}
	function isEmpty(str){
		if(str==null || str.length==0)
			return true;
		else 
			return false;
	}
	function checkUid(){
		var name=document.userRegisterForm.uid.value;
		if(name.length>0){
			window.open("checkUid.jsp?uid=" +name ,"检查用户名","toolbar=no, location=no,status=no,menubar=no, scrollbars=no,resizable=no,width=300,height=200");
		}
	}
</script>