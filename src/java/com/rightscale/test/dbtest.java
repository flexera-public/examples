package com.rightscale.test;

import org.apache.commons.dbcp.BasicDataSource;
import javax.naming.*;
import javax.sql.*;
import java.sql.*;
 
public class dbtest {
	
	static String DS_NAME = "java:jdbc/ConnDB"; 
	static int MAX_ROWS = 10;  // maximum rows from db to display

	String connectionStatus = "Not Connected";
	int resultCount = 0;
	String[] data = new String[MAX_ROWS];
	DataSource ds;
	String settings = "n/a";
 
	public void init() {
		try {
		   Context ctx = new InitialContext();
		   if(ctx == null )
		   	throw new Exception("Boom - No Context");
		      
		      	ds = (DataSource)ctx.lookup(DS_NAME);
		
	//	BasicDataSource ds = new BasicDataSource();
	//		        ds.setDriverClassName("com.mysql.jdbc.Driver");
	//		        ds.setUsername("prod");
	//		        ds.setPassword("UsEr.pAsS!");
	//		        ds.setUrl("jdbc:mysql://184.73.168.168:3306/app_test");
	//	//	    ds.setDefaultTransactionIsolation(Connection.TRANSACTION_READ_UNCOMMITTED);
	//		        ds.setInitialSize(10);
	//		        ds.setMaxActive(20);
	//		        ds.setMaxIdle(20);
	//		        ds.setMaxWait(5000);
	//				settings = formattSettings(ds);

		  if (ds != null) {		
			
		    Connection conn = ds.getConnection();
          
		    if(conn != null)  {
		        connectionStatus = "Got Connection "+conn.toString();
		        Statement stmt = conn.createStatement();
		        ResultSet rst = 
		            stmt.executeQuery(
		              "select * from app_test");

		        while(rst.next() && resultCount < MAX_ROWS) {
		           data[resultCount++]=rst.getString(3);
		        }
		        conn.close();
		    }
		  }
		}catch(Exception e) {
		   e.printStackTrace();
		}
	}
	
	private String formattSettings(BasicDataSource ds) {
		StringBuffer buffer = new StringBuffer();
		buffer.append("<ul>");
		if (ds != null) {
			buffer.append("<li>Driver name:"+ds.getDriverClassName());
			buffer.append("<li>Username:"+ds.getUsername());
			buffer.append("<li>Url:"+ds.getUrl());
		}
		else {
			buffer.append("<li>Datasource is null.");
		}
  		buffer.append("</ul>");
		return buffer.toString();
	}
	
	public String outputSettings() { return settings; }
	public String getConnectionStatus() { return connectionStatus; }
	public int getResultCount() { return resultCount; }
	public String[] getData() { return data; }

}
