package Classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.io.*;
import java.util.*;

public class get {
	private static String driver = "net.sourceforge.jtds.jdbc.Driver";
    private static String url = "jdbc:jtds:sqlserver://localhost:1833;DatabaseName=ifriends";
    private static String u1="sa";
    private static String u2="123";
		 
		  public info1 Select(int id) {
		        Connection ct = null;
		        PreparedStatement ps = null;
		        ResultSet rs = null;
		        info1 message=new info1();
		       // List list=new ArrayList();
		        try {
		            // 加载驱动类
		            Class.forName(driver);
		            // 得到连接
		            ct = DriverManager.getConnection(url,u1,u2);
		            // 得到预编译的 SQL 语句的对象
		            ps = ct.prepareStatement("select * from userstable where id ='"+id+"'");
		            // 得到结果集
		            rs = ps.executeQuery();
		         
		            if (rs.next()) {
		            	//Message message=new Message();
			       		message.setid(rs.getInt("id"));
			       		message.setname(rs.getString("realname"));
			       		message.setage(rs.getInt("age"));
			       		message.setarea(rs.getString("area"));
			       		message.setpic(rs.getString("pic"));
			       		message.setpicmin(rs.getString("picmin"));
			       		message.sethobby(rs.getString("hobby"));
			       		message.setmajor(rs.getString("work"));
			       		//list.add(message);
			       		System.out.print(message.getname());
			       		//System.out.println(message.getid()+"\t"+message.getname()+"\t"+message.getjudg()+"\t"+message.getaddr()+"\t"+message.getpic()+"\t"+message.getnumber());
			       		return message;
		            }
  
		            else{
		               message=null;
		            }
		        } catch (Exception e) {
		            e.printStackTrace();
		        } finally {
		            // 关闭资源
		            try {
		                if (rs != null) {
		                    rs.close();
		                }
		                if (ps != null) {
		                    ps.close();
		                }
		                if (ct != null) {
		                    ct.close();
		                }
		            } catch (Exception e) {
		                e.printStackTrace();
		            }
		        }
		    return null;
		    }
		  public int iNum1(int id) {
		        Connection ct = null;
		        PreparedStatement ps = null;
		        ResultSet rs = null;
		        String u1="sa";
		        String u2="123";
		        int iNum=0;
		        
		       // List list=new ArrayList();
		        try {
		            // 加载驱动类
		            Class.forName(driver);
		            // 得到连接
		            ct = DriverManager.getConnection(url,u1,u2);
		            // 得到预编译的 SQL 语句的对象
		            ps = ct.prepareStatement("select * from userstable ");
		            // 得到结果集
		            rs = ps.executeQuery();
		            // 循环取出记录
		            while (rs.next()) {
		            	//Message message=new Message();
			       	iNum++;

		            }
			       	System.out.println(iNum+"sites");
			       	return iNum-1;
		           
		        } catch (Exception e) {
		            e.printStackTrace();
		        } finally {
		            // 关闭资源
		            try {
		                if (rs != null) {
		                    rs.close();
		                }
		                if (ps != null) {
		                    ps.close();
		                }
		                if (ct != null) {
		                    ct.close();
		                }
		            } catch (Exception e) {
		                e.printStackTrace();
		            }
		        }
		    return 0;
		    }
		  public int iNum(int id) {
		        Connection ct = null;
		        PreparedStatement ps = null;
		        ResultSet rs = null;
		        String u1="sa";
		        String u2="123";
		        int iNum=0;
		        
		       // List list=new ArrayList();
		        try {
		            // 加载驱动类
		            Class.forName(driver);
		            // 得到连接
		            ct = DriverManager.getConnection(url,u1,u2);
		            // 得到预编译的 SQL 语句的对象
		            ps = ct.prepareStatement("select * from userstable ");
		            // 得到结果集
		            rs = ps.executeQuery();
		            // 循环取出记录
		            while (rs.next()) {
		            	//Message message=new Message();
			       	iNum++;

		            }
			       	System.out.println(iNum+"sites");
		           
		        } catch (Exception e) {
		            e.printStackTrace();
		        } finally {
		            // 关闭资源
		            try {
		                if (rs != null) {
		                    rs.close();
		                }
		                if (ps != null) {
		                    ps.close();
		                }
		                if (ct != null) {
		                    ct.close();
		                }
		            } catch (Exception e) {
		                e.printStackTrace();
		            }
		        }
		    return 0;
		    }
		  public  int iP(int id) {
		        Connection ct = null;
		        PreparedStatement ps = null;
		        ResultSet rs = null;
		        String u1="sa";
		        String u2="123";
		        int iNum=0;
		        
		       // List list=new ArrayList();
		        try {
		            // 加载驱动类
		            Class.forName(driver);
		            // 得到连接
		            ct = DriverManager.getConnection(url,u1,u2);
		            // 得到预编译的 SQL 语句的对象
		            ps = ct.prepareStatement("select * from userstable ");
		            // 得到结果集
		            rs = ps.executeQuery();
		            // 循环取出记录
		            while (rs.next()) {
		            	//Message message=new Message();
			       	iNum++;

		            }

		            int temp=0;int pages=0;
		            temp=iNum%6;
		            if(temp==0){
		            pages=iNum/6;
		            }
		            else{
		            pages=iNum/6+1;
		            }
		            System.out.println(""+pages);
		            return pages;
		           

		           
		        } catch (Exception e) {
		            e.printStackTrace();
		        } finally {
		            // 关闭资源
		            try {
		                if (rs != null) {
		                    rs.close();
		                }
		                if (ps != null) {
		                    ps.close();
		                }
		                if (ct != null) {
		                    ct.close();
		                }
		            } catch (Exception e) {
		                e.printStackTrace();
		            }
		        }
		    return 0;
		    }
		  public info2 SelectNew(int id) {
		        Connection ct = null;
		        PreparedStatement ps = null;
		        ResultSet rs = null;
		        info2 message=new info2();
		       // List list=new ArrayList();
		        try {
		            // 加载驱动类
		            Class.forName(driver);
		            // 得到连接
		            ct = DriverManager.getConnection(url,u1,u2);
		            // 得到预编译的 SQL 语句的对象
		            ps = ct.prepareStatement("select * from newstable where id ='"+id+"'");
		            // 得到结果集
		            rs = ps.executeQuery();
		         
		            if (rs.next()) {
		            	//Message message=new Message();
			       		message.setid(rs.getInt("id"));
			       		message.setname(rs.getString("name"));
			       		message.setnews(rs.getString("new"));
			       		message.setdates(rs.getString("date"));
			       		
			       		//list.add(message);
			       		System.out.print(message.getname());
			       		//System.out.println(message.getid()+"\t"+message.getname()+"\t"+message.getjudg()+"\t"+message.getaddr()+"\t"+message.getpic()+"\t"+message.getnumber());
			       		return message;
		            }

		            else{
		               message=null;
		            }
		        } catch (Exception e) {
		            e.printStackTrace();
		        } finally {
		            // 关闭资源
		            try {
		                if (rs != null) {
		                    rs.close();
		                }
		                if (ps != null) {
		                    ps.close();
		                }
		                if (ct != null) {
		                    ct.close();
		                }
		            } catch (Exception e) {
		                e.printStackTrace();
		            }
		        }
		    return null;
		    }
		  public int iNumnew(int id) {
		        Connection ct = null;
		        PreparedStatement ps = null;
		        ResultSet rs = null;
		        String u1="sa";
		        String u2="123";
		        int iNum=0;
		        
		       // List list=new ArrayList();
		        try {
		            // 加载驱动类
		            Class.forName(driver);
		            // 得到连接
		            ct = DriverManager.getConnection(url,u1,u2);
		            // 得到预编译的 SQL 语句的对象
		            ps = ct.prepareStatement("select * from newstable ");
		            // 得到结果集
		            rs = ps.executeQuery();
		            // 循环取出记录
		            while (rs.next()) {
		            	//Message message=new Message();
			       	iNum++;

		            }
			       	System.out.println(iNum+"tiao");
			       	return iNum;
		           
		        } catch (Exception e) {
		            e.printStackTrace();
		        } finally {
		            // 关闭资源
		            try {
		                if (rs != null) {
		                    rs.close();
		                }
		                if (ps != null) {
		                    ps.close();
		                }
		                if (ct != null) {
		                    ct.close();
		                }
		            } catch (Exception e) {
		                e.printStackTrace();
		            }
		        }
		    return 0;
		    }
}
