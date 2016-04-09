package Classes;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Inserpic {
		
	    private static String driver = "net.sourceforge.jtds.jdbc.Driver";
	    private static String url = "jdbc:jtds:sqlserver://localhost:1833;DatabaseName=ifriends";
	    private static String u1="sa";
	    private static String u2="123";
		public void insertpic(String name,String pic,String picmin){
			     
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
	   
	    	try{
	    		Class.forName(driver);
	    		conn=DriverManager.getConnection(url,u1,u2);
	    		stmt =conn.createStatement();
	    	    String sql ="UPDATE userstable SET pic = '"+pic+"', picmin = '"+picmin+"' WHERE name = '"+name+"'";
	    		try {
					sql = new String(sql.getBytes("ISO8859-1"), "gbk");
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
		
	
}
