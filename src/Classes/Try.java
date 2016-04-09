package Classes;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;


public class Try {
	private static String driver = "net.sourceforge.jtds.jdbc.Driver";
    private static String url = "jdbc:jtds:sqlserver://localhost:1833;DatabaseName=ifriends";
    private static String u1="sa";
    private static String u2="123";
	public void regist(String name, String password, String realName, 
			String gender, String email, int age, String work, 
			String area, String hobby, String birthday){
		 
	     
	    
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
   
    	try{
    		Class.forName(driver);
    		conn=DriverManager.getConnection(url,u1,u2);
    		stmt =conn.createStatement();
    		String sql1 ="select id from userstable";
    		rs=stmt.executeQuery(sql1);
    		int id=0; 
    		while(rs.next())
    		{
    			id++;
    		}
    		
    	    String sql ="insert into userstable values('"+id+"','"+name+"','"+password+"','"+realName+"','"+gender+"','"+email+"','"+age+"','"+work+
    	    "','"+area+"','"+hobby+"','"+birthday+"','"+""+"','"+""+"')";
    	    try {
				sql = new String(sql.getBytes("ISO8859-1"), "UTF-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			stmt.executeUpdate(sql);
    	   //while(Results.next()){
    		//   System.out.println(Results.getString(0));
    	  // }
    	    
    	}
    	catch(ClassNotFoundException e){
    		e.printStackTrace();
    		
    	}catch(SQLException e){
    		e.printStackTrace();
    	}
    	finally{
			try{
        	if (rs!=null){
        		rs.close();
    	    }
        	if(stmt!=null){
        		stmt.close();
        	}
    	    if(conn!=null){
    	    	conn.close();
    	    }
        	}
			catch (Exception e)
			{
				e.printStackTrace();
			}
		}
	}
	
	public boolean isExist(String user_name){
	     String u1="sa";
	     String u2="123";
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
      
        try{
        	Class.forName("net.sourceforge.jtds.jdbc.Driver");
        conn=DriverManager.getConnection(url,u1,u2);
        stmt =conn.createStatement();
        String sql ="select * from userstable where name ='"+user_name+"'"; 
            rs = stmt.executeQuery(sql);
            if(rs.next())
            {
            return true;
            }
            else{
            return false;
            }
         }
        catch(ClassNotFoundException e){
        e.printStackTrace();
        return true;
        
        }catch(SQLException e){
        e.printStackTrace();
        return true;
        }
        
	 finally{
		try{
    	if (rs!=null){
    		rs.close();
	    }
    	if(stmt!=null){
    		stmt.close();
    	}
	    if(conn!=null){
	    	conn.close();
	    }
    	}
		catch (Exception e)
		{
			e.printStackTrace();
			return true;
		}
	}
	}
	public void writeNew(String name,String date,String content){
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		int id = 1;
    	try{
    		Class.forName(driver);
    		conn=DriverManager.getConnection(url,u1,u2);
    		stmt =conn.createStatement();
    		String sql1="select * from userstable WHERE name='"+name+"'";
    		rs = stmt.executeQuery(sql1);
    		String realname="";
            if (rs.next()) {
            	//Message message=new Message();
	
	       		realname=rs.getString("realname");
	       		System.out.println(realname+"er");
            }
    		String sql ="select * from newstable";
    		
    		try {
				sql = new String(sql.getBytes("ISO8859-1"), "UTF-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    		rs = stmt.executeQuery(sql);
    		while(rs.next()){
    			id++;
    		}
 
    	    try {
				content = new String(content.getBytes("ISO8859-1"), "utf-8");
    	    	
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			sql ="insert into newstable values('"+id+"','"+realname+"','"+date+"','"+content+"')";
			stmt.executeUpdate(sql);
    	   //while(Results.next()){
    		//   System.out.println(Results.getString(0));
    	  // }
    	    
    	}
    	catch(ClassNotFoundException e){
    		e.printStackTrace();
    		
    	}catch(SQLException e){
    		e.printStackTrace();
    	}
    	finally{
			try{
        	if (rs!=null){
        		rs.close();
    	    }
        	if(stmt!=null){
        		stmt.close();
        	}
    	    if(conn!=null){
    	    	conn.close();
    	    }
        	}
			catch (Exception e)
			{
				e.printStackTrace();
			}
		}
	}
}

