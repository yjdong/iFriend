<%@ page contentType="text/html;charset=gb2312" language="java" 
import="java.io.*,java.awt.Image,java.awt.image.*,com.sun.image.codec.jpeg.*,java.sql.*,com.jspsmart.upload.*,java.util.*,Classes.*"%>
<%
SmartUpload mySmartUpload =new SmartUpload();
long file_size_max=4000000;
String fileName2="",ext="",testvar="";

String url2="F:\\MyEclipse 8.x1\\ifriends\\WebRoot\\uploadimages\\";
//��ʼ��
mySmartUpload.initialize(pageContext);
//ֻ�������ش����ļ�
try {
mySmartUpload.setAllowedFilesList("jpg,gif");
//�����ļ� 
mySmartUpload.upload();
} catch (Exception e){
%>
  <SCRIPT language=javascript>
   alert("ֻ�����ϴ�.jpg��.gif����ͼƬ�ļ�");
   window.location='upfile.jsp';
  </script>
<%
}
try{

     com.jspsmart.upload.File myFile = mySmartUpload.getFiles().getFile(0);
    if (myFile.isMissing()){
    %>
   <SCRIPT language=javascript>
    alert("����ѡ��Ҫ�ϴ����ļ�");
    window.location='upfile.jsp';
   </script>
    <%
    }
    else{
      String filename; //ȡ�����ص��ļ����ļ���
    ext= myFile.getFileExt();      //ȡ�ú�׺��
   int file_size=myFile.getSize();     //ȡ���ļ��Ĵ�С  
    String saveurl="";
   if(file_size<file_size_max){
    //�����ļ�����ȡ�õ�ǰ�ϴ�ʱ��ĺ�����ֵ
     Calendar calendar = Calendar.getInstance();
    //filename += String.valueOf(calendar.getTimeInMillis()); 
     //saveurl=request.getRealPath("/")+url;
     saveurl=url2;
     //out.print("window.location='upfile.jsp;'");
     String username=request.getParameter("pp").toString();
     filename=request.getParameter("pp").toString();
     String pic="uploadimages/"+filename+"."+ext;
     saveurl+=filename+"."+ext;          //����·��
     myFile.saveAs(saveurl,mySmartUpload.SAVE_PHYSICAL);
     //out.print(filename);
//-----------------------�ϴ���ɣ���ʼ��������ͼ-------------------------    
     java.io.File file = new java.io.File(saveurl);        //����ղ��ϴ����ļ�
      String newurl=saveurl+"_min."+ext;  //�µ�����ͼ�����ַ
      String picmin=pic+"_min."+ext;
      System.out.println(pic);
      Inserpic in=new Inserpic();
      in.insertpic(username,pic,picmin);
      out.println(username);
      Image src = javax.imageio.ImageIO.read(file);                     //����Image����
    float tagsize=200;
    int old_w=src.getWidth(null);                                     //�õ�Դͼ��
    int old_h=src.getHeight(null);   
    int new_w=0;
    int new_h=0;                            //�õ�Դͼ��
    int tempsize;
    float tempdouble; 
    if(old_w>old_h){
      tempdouble=old_w/tagsize;
     }else{
      tempdouble=old_h/tagsize;
     }
     new_w=Math.round(old_w/tempdouble);
     new_h=Math.round(old_h/tempdouble);//������ͼ����
     BufferedImage tag = new BufferedImage(new_w,new_h,BufferedImage.TYPE_INT_RGB);
     tag.getGraphics().drawImage(src,0,0,new_w,new_h,null);       //������С���ͼ
     FileOutputStream newimage=new FileOutputStream(newurl);          //������ļ���
     JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(newimage);       
     encoder.encode(tag);                                               //��JPEG����
      newimage.close();    
      
    }
   else{
     out.print("<SCRIPT language='javascript'>");
     out.print("alert('�ϴ��ļ���С���ܳ���"+(file_size_max/1000)+"K');");
     out.print("window.location='upfile.jsp;'");
     out.print("</SCRIPT>");
    }
   }
}catch (Exception e){

e.toString();

}
%>
<SCRIPT language=javascript>
   alert("�ϴ��ɹ�");
   window.location='login.jsp';
 </script>