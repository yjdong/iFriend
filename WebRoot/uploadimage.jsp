<%@ page contentType="text/html;charset=gb2312" language="java" 
import="java.io.*,java.awt.Image,java.awt.image.*,com.sun.image.codec.jpeg.*,java.sql.*,com.jspsmart.upload.*,java.util.*,Classes.*"%>
<%
SmartUpload mySmartUpload =new SmartUpload();
long file_size_max=4000000;
String fileName2="",ext="",testvar="";

String url2="F:\\MyEclipse 8.x1\\ifriends\\WebRoot\\uploadimages\\";
//初始化
mySmartUpload.initialize(pageContext);
//只允许上载此类文件
try {
mySmartUpload.setAllowedFilesList("jpg,gif");
//上载文件 
mySmartUpload.upload();
} catch (Exception e){
%>
  <SCRIPT language=javascript>
   alert("只允许上传.jpg和.gif类型图片文件");
   window.location='upfile.jsp';
  </script>
<%
}
try{

     com.jspsmart.upload.File myFile = mySmartUpload.getFiles().getFile(0);
    if (myFile.isMissing()){
    %>
   <SCRIPT language=javascript>
    alert("请先选择要上传的文件");
    window.location='upfile.jsp';
   </script>
    <%
    }
    else{
      String filename; //取得上载的文件的文件名
    ext= myFile.getFileExt();      //取得后缀名
   int file_size=myFile.getSize();     //取得文件的大小  
    String saveurl="";
   if(file_size<file_size_max){
    //更改文件名，取得当前上传时间的毫秒数值
     Calendar calendar = Calendar.getInstance();
    //filename += String.valueOf(calendar.getTimeInMillis()); 
     //saveurl=request.getRealPath("/")+url;
     saveurl=url2;
     //out.print("window.location='upfile.jsp;'");
     String username=request.getParameter("pp").toString();
     filename=request.getParameter("pp").toString();
     String pic="uploadimages/"+filename+"."+ext;
     saveurl+=filename+"."+ext;          //保存路径
     myFile.saveAs(saveurl,mySmartUpload.SAVE_PHYSICAL);
     //out.print(filename);
//-----------------------上传完成，开始生成缩略图-------------------------    
     java.io.File file = new java.io.File(saveurl);        //读入刚才上传的文件
      String newurl=saveurl+"_min."+ext;  //新的缩略图保存地址
      String picmin=pic+"_min."+ext;
      System.out.println(pic);
      Inserpic in=new Inserpic();
      in.insertpic(username,pic,picmin);
      out.println(username);
      Image src = javax.imageio.ImageIO.read(file);                     //构造Image对象
    float tagsize=200;
    int old_w=src.getWidth(null);                                     //得到源图宽
    int old_h=src.getHeight(null);   
    int new_w=0;
    int new_h=0;                            //得到源图长
    int tempsize;
    float tempdouble; 
    if(old_w>old_h){
      tempdouble=old_w/tagsize;
     }else{
      tempdouble=old_h/tagsize;
     }
     new_w=Math.round(old_w/tempdouble);
     new_h=Math.round(old_h/tempdouble);//计算新图长宽
     BufferedImage tag = new BufferedImage(new_w,new_h,BufferedImage.TYPE_INT_RGB);
     tag.getGraphics().drawImage(src,0,0,new_w,new_h,null);       //绘制缩小后的图
     FileOutputStream newimage=new FileOutputStream(newurl);          //输出到文件流
     JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(newimage);       
     encoder.encode(tag);                                               //近JPEG编码
      newimage.close();    
      
    }
   else{
     out.print("<SCRIPT language='javascript'>");
     out.print("alert('上传文件大小不能超过"+(file_size_max/1000)+"K');");
     out.print("window.location='upfile.jsp;'");
     out.print("</SCRIPT>");
    }
   }
}catch (Exception e){

e.toString();

}
%>
<SCRIPT language=javascript>
   alert("上传成功");
   window.location='login.jsp';
 </script>