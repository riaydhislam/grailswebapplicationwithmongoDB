/**
 * 
 */
package uv.databaseinfo.impl;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import uv.databaseinfo.TO.AddressLocationSearchResultTO;
import uv.databaseinfo.TO.DatabaseConnectionTO;
import uv.databaseinfo.TO.DatabaseInfoResultTO;
import uv.databaseinfo.TO.DatabaseMetadataInfoTO;
import uv.databaseinfo.TO.RoadSearchParamsTO;

/**
 * @author Shaiful
 *
 */
public class DatabaseInfo {
	
	private Connection conn=null;

	/*
	to read application properties
	*/
	public DatabaseConnectionTO readPropertiesFile(String propertiesFile){
	 Properties prop = new Properties();
	 InputStream input = null;
	 DatabaseConnectionTO dcpojo=new DatabaseConnectionTO();
	 try {
	 FileInputStream input1 = new FileInputStream(propertiesFile);
	  //input = DatabaseInfo.class.getClassLoader().getResourceAsStream(propertiesFile);
	  // load a properties file
	   prop.load(input1);
	//  dcpojo=new DatabaseConnectionTO();
	  dcpojo.setDriverClass(prop.getProperty("postgresql_driverClassName"));
	  dcpojo.setUrl(prop.getProperty("postgresql_url_postgres"));
	  dcpojo.setUser(prop.getProperty("postgresql_username_postgres"));
	  dcpojo.setPassword(prop.getProperty("postgresql_password")); 
	  return dcpojo;
	  
	 } catch (IOException ex) {
	  ex.printStackTrace();
	 } 
	 finally {
	  if (input != null) {
	   try {
	    input.close();
	   } catch (IOException e) {
	    e.printStackTrace();
	   }
	  }
	 }
	 return dcpojo;
	}

	/*
	to connect application databases
	*/
	public Connection getConnection(String propertiesFile) throws Exception {
	   //Connection connection=null;
	  Properties prop = new Properties();
	  FileInputStream input = null;
	  try {
		  
		   input = new FileInputStream(propertiesFile);
		  
		  
	   // load a properties file
	   prop.load(input);
	
	   // Step 2: Load POSTGRESQL Java driver
	   Class.forName(prop.getProperty("postgresql_driverClassName"));
	   // Step 3: Establish Java POSTGRESQL connection
	   conn = DriverManager.getConnection(
	   prop.getProperty("postgresql_url_postgres"),
	   prop.getProperty("postgresql_username_postgres"), 
	   prop.getProperty("postgresql_password_postgres"));
	   
	  
	  
	   if(conn!=null){
	    return conn;
	   }
	   else{
	    System.out.println("Unable to Connect to Database.");
	   } 
	  }
	  catch (ClassNotFoundException e) {
	   e.printStackTrace();
	  } catch (SQLException e) {
	   System.out.println("Unable to Connect to Database"+e.getMessage());
	  }
	  
	  finally {
	   if (input != null) {
	    try {
	     input.close();
	    } catch (IOException e) {
	     e.printStackTrace();
	    }
	   }
	 //  if(conn!=null){conn.close();}
	     }
	  return conn;
	 }
	
	
	public Connection getConnection(String databaseName,String propertiesFile) throws Exception {
		   //Connection connection=null;
		  Properties prop = new Properties();
		  FileInputStream input = null;	
		  
		  try {
			   input = new FileInputStream(propertiesFile);
		   // load a properties file
		   prop.load(input);
		   // Step 2: Load POSTGRESQL Java driver
		  Class.forName(prop.getProperty("postgresql_driverClassName"));
		   // Step 3: Establish Java POSTGRESQL connection
		
		   
		   conn = DriverManager.getConnection(
			
		  prop.getProperty("postgresql_url")+databaseName,
		   prop.getProperty("postgresql_username_postgres"), 
		   prop.getProperty("postgresql_password_postgres"));
		   
		   
		   if(conn!=null){
		    return conn;
		   }
		   else{
		    System.out.println("Unable to Connect to Database.");
		   } 
		  }
		  catch (ClassNotFoundException e) {
		   e.printStackTrace();
		  } catch (SQLException e) {
		   System.out.println("Unable to Connect to Database"+e.getMessage());
		  }
		  
		  finally {
		   if (input != null) {
		    try {
		     input.close();
		    } catch (IOException e) {
		     e.printStackTrace();
		    }
		   }
		 //  if(conn!=null){conn.close();}
		     }
		  return conn;
		 }
		
	
	public Connection getConnection(String databaseName,String tableName,String propertiesFile) throws Exception {
		   //Connection connection=null;
		  Properties prop = new Properties();
		  FileInputStream input = null;	
		  
		  try {
			   input = new FileInputStream(propertiesFile);
		   // load a properties file
		   prop.load(input);
		   // Step 2: Load POSTGRESQL Java driver
		  Class.forName(prop.getProperty("postgresql_driverClassName"));
		   // Step 3: Establish Java POSTGRESQL connection
		
		   
		   conn = DriverManager.getConnection(
			
		  prop.getProperty("postgresql_url")+databaseName,
		   prop.getProperty("postgresql_username_postgres")+ tableName, 
		   prop.getProperty("postgresql_password_postgres"));
		   
		   
		   if(conn!=null){
		    return conn;
		   }
		   else{
		    System.out.println("Unable to Connect to Database.");
		   } 
		  }
		  catch (ClassNotFoundException e) {
		   e.printStackTrace();
		  } catch (SQLException e) {
		   System.out.println("Unable to Connect to Database"+e.getMessage());
		  }
		  
		  finally {
		   if (input != null) {
		    try {
		     input.close();
		    } catch (IOException e) {
		     e.printStackTrace();
		    }
		   }
		 //  if(conn!=null){conn.close();}
		     }
		  return conn;
		 }
	
	
	
	
	
	
	public DatabaseMetadataInfoTO getDatabaseMetadataInfo(String propertiesFile) throws Exception{
		
		 DatabaseMetadataInfoTO result=new DatabaseMetadataInfoTO();
		 try{
		  conn=(Connection)getConnection(propertiesFile);
		  if(conn!=null){
		   result.setSchemaName(conn.getCatalog());
		   result.setDriverClass(conn.getMetaData().getDriverName());
		   result.setDatabaseMajorVersion(String.valueOf(conn.getMetaData().getDatabaseMajorVersion()));
		   result.setDatabaseMinorVersion(String.valueOf(conn.getMetaData().getDatabaseMinorVersion()));
		   result.setDatabaseProductName(conn.getMetaData().getDatabaseProductName());
		   result.setDatabaseProductVersion(conn.getMetaData().getDatabaseProductVersion());
		   result.setJDBCMajorVersion(String.valueOf(conn.getMetaData().getJDBCMajorVersion()));
		   result.setJDBCMinorVersion(String.valueOf(conn.getMetaData().getJDBCMinorVersion()));
		   return result;
		  }
		  else{
		    System.out.println("There is no database metadata info!!"); 
		  }
		 }
		 catch (ClassNotFoundException e) {
		  e.printStackTrace();
		 } catch (SQLException e) {
		  System.out.println("Unable to Connect to Database.");
		 }
		 return result;
		}
	
	
	
	public DatabaseMetadataInfoTO getDatabaseMetadataInfo(String databaseName,String propertiesFile) throws Exception{
		
		 DatabaseMetadataInfoTO result=new DatabaseMetadataInfoTO();
		 try{
		  conn=(Connection)getConnection(databaseName,propertiesFile);
		  
		  if(conn!=null){
		   result.setSchemaName(conn.getCatalog());
		   result.setDriverClass(conn.getMetaData().getDriverName());
		   result.setDatabaseMajorVersion(String.valueOf(conn.getMetaData().getDatabaseMajorVersion()));
		   result.setDatabaseMinorVersion(String.valueOf(conn.getMetaData().getDatabaseMinorVersion()));
		   result.setDatabaseProductName(conn.getMetaData().getDatabaseProductName());
		   result.setDatabaseProductVersion(conn.getMetaData().getDatabaseProductVersion());
		   result.setJDBCMajorVersion(String.valueOf(conn.getMetaData().getJDBCMajorVersion()));
		   result.setJDBCMinorVersion(String.valueOf(conn.getMetaData().getJDBCMinorVersion()));
		   return result;
		  }
		  else{
		    System.out.println("There is no database metadata info!!"); 
		  }
		 }
		 catch (ClassNotFoundException e) {
		  e.printStackTrace();
		 } catch (SQLException e) {
		  System.out.println("Unable to Connect to Database.");
		 }
		 return result;
		}
	
	
	
	
	
	/*
	to show application databases
	*/
	public List<DatabaseInfoResultTO> getDatabaseList(String propertiesFile) throws Exception{
	 Statement stmt = null;
	 ResultSet rs=null;
	
	 List<DatabaseInfoResultTO> dl=new ArrayList<DatabaseInfoResultTO>();
	 DatabaseInfoResultTO databaseInfoResultTO=new DatabaseInfoResultTO();
	 String query="SELECT datname FROM pg_database WHERE datistemplate = false ORDER BY datname";
	 try{
	      conn=(Connection)getConnection(propertiesFile);
	   stmt=conn.createStatement();
	   System.out.println("----------Query----------------:"+query);
	   rs=stmt.executeQuery(query);
	   while(rs.next()){
	    databaseInfoResultTO=new DatabaseInfoResultTO();
	    databaseInfoResultTO.setDatabaseName(rs.getString("datname"));
	    dl.add(databaseInfoResultTO);
	   }
	   return dl;
	  }
	  finally{
	   if(conn!=null){conn.close();}
	   if(stmt!=null){stmt.close();}
	   if(rs!=null){rs.close();}
	  }
	 
	 }
	
	
	/*
	to show application databases number
	*/
	public long  getDatabaseCountList(String propertiesFile) throws Exception{
		
	 Statement stmt = null;
	 ResultSet rs=null;
	 
	
	 long dl=0;
	 List<DatabaseInfoResultTO> dbList=new ArrayList<DatabaseInfoResultTO>();
    dbList=getDatabaseList(propertiesFile);
	// String query="SELECT count(*) as dbcounter FROM pg_database WHERE datistemplate = false ORDER BY datname";
	 try{
	    dl=dbList.size();
	   return dl;
	  }
	  finally{
	   if(conn!=null){conn.close();}
	   if(stmt!=null){stmt.close();}
	   if(rs!=null){rs.close();}
	  }
	 
	 
	 
	 
	 }
	
	
	public String getDatabaseCreate(String newDatabseName, String propertiesFile) throws Exception{
		 Statement stmt = null;
		 ResultSet rs=null;
		 String value="Successful";
		 
		 String query="CREATE DATABASE " +newDatabseName;
		 try{
		      conn=(Connection)getConnection(propertiesFile);
		   stmt=conn.createStatement();
		   System.out.println("----------Query----------------:"+query);
		   rs=stmt.executeQuery(query);
		   while(rs.next()){
		    return value;
		   }
		   return value;
		  }
		  finally{
		   if(conn!=null){conn.close();}
		   if(stmt!=null){stmt.close();}
		   if(rs!=null){rs.close();}
		  }
		 
		 }
	
	
	/*
	to show list of table from specific application database
	*/
	public List<DatabaseInfoResultTO> getTableNameList(String databaseName,String propertiesFile) throws Exception{
		 Statement stmt = null;
		 ResultSet rs=null;
		
		 List<DatabaseInfoResultTO> dl=new ArrayList<DatabaseInfoResultTO>();
		 DatabaseInfoResultTO databaseInfoResultTO=new DatabaseInfoResultTO();
		 String query="SELECT  table_name FROM  information_schema.tables WHERE table_schema like('public') and table_catalog like('"+databaseName+"')";
		 try{
		      conn=(Connection)getConnection(databaseName,propertiesFile);
		      
		   stmt=conn.createStatement();
		   System.out.println("----------Query----------------:"+query);
		   rs=stmt.executeQuery(query);
		   while(rs.next()){
		    databaseInfoResultTO=new DatabaseInfoResultTO();
		    databaseInfoResultTO.setTableName(rs.getString("table_name"));
		    dl.add(databaseInfoResultTO);
		   }
		   return dl;
		  }
		  finally{
		   if(conn!=null){conn.close();}
		   if(stmt!=null){stmt.close();}
		   if(rs!=null){rs.close();}
		  }
		 
		 }
	
	
	
	/*
	to show list of table from specific application database
	*/
	public List<DatabaseInfoResultTO> getDatabaseTableDescription(String databaseName,String tableName,String propertiesFile) throws Exception{
		 Statement stmt = null;
		 ResultSet rs=null;
		
		 List<DatabaseInfoResultTO> dl=new ArrayList<DatabaseInfoResultTO>();
		 DatabaseInfoResultTO databaseInfoResultTO=new DatabaseInfoResultTO();
		 String query="SELECT column_name,data_type,character_maximum_length FROM INFORMATION_SCHEMA.COLUMNS WHERE "
		 		+ "table_catalog='"+databaseName+"' AND table_name='"+tableName+"'";
		 System.out.println("Query: "+query);
		 try{
		      conn=(Connection)getConnection(databaseName,propertiesFile);
		      
		   stmt=conn.createStatement();
		   System.out.println("----------Query----------------:"+query);
		   rs=stmt.executeQuery(query);
		   while(rs.next()){
		    databaseInfoResultTO=new DatabaseInfoResultTO();
		    databaseInfoResultTO.setCloumnName(rs.getString("column_name"));
		    databaseInfoResultTO.setColumnDataType(rs.getString("data_type"));
		    databaseInfoResultTO.setColumnDataTypeLength(rs.getInt("character_maximum_length"));
		    
		    dl.add(databaseInfoResultTO);
		   }
		   return dl;
		  }
		  finally{
		   if(conn!=null){conn.close();}
		   if(stmt!=null){stmt.close();}
		   if(rs!=null){rs.close();}
		  }
		 
		 }
	
	public List<AddressLocationSearchResultTO> getAddressLocationData(String databaseName,RoadSearchParamsTO roadSearchParamsTO, String propertiesFile) throws Exception{
		 Statement stmt = null;
		 ResultSet rs=null;
		  Connection conn=null;
		 List<AddressLocationSearchResultTO> dl=new ArrayList<AddressLocationSearchResultTO>();
		 AddressLocationSearchResultTO databaseInfoResultTO=new AddressLocationSearchResultTO();

		 StringBuilder query=new StringBuilder();
		 query.append(" SELECT ungeo,thcode,distcode,division,district,upazila ,union_name FROM bd_union WHERE");
		  
		 if(roadSearchParamsTO.getDivisionName()!=null) {
		  query.append(" division like('%"+roadSearchParamsTO.getDivisionName() +"%')");
		 }
		 else {
		  query.append(" division like('%%')");
		 }
		  
		 if(roadSearchParamsTO.getDistrictName()!=null) {
		  query.append(" AND district like('%"+roadSearchParamsTO.getDistrictName()+"%')");
		 }
		 
		 else {
		  query.append(" AND district like('%%')");
		 }
		  
		 if(roadSearchParamsTO.getUpzillaName()!=null) {
		  query.append(" AND upazila like('%"+roadSearchParamsTO.getUpzillaName()+"%')");
		 }
		 else {
		  query.append(" AND upazila like('%%')");
		 }
		 
		 if(roadSearchParamsTO.getUnionName()!=null) {
		  query.append(" AND union_name like('%"+roadSearchParamsTO.getUnionName()+"%')");
		 }
		 else {
		  query.append(" AND union_name like('%%')");
		 }
		  
		 query.append(" ORDER BY ungeo,district,upazila,union_name");
		 
		 
		 System.out.println("----------Query----------------:"+query.toString());

		 try{
		      conn=(Connection)getConnection(databaseName,propertiesFile);
		   stmt=conn.createStatement();
		   rs=stmt.executeQuery(query.toString());
		   while(rs.next()){
		    databaseInfoResultTO=new AddressLocationSearchResultTO();
		    databaseInfoResultTO.setAddressId(rs.getLong("ungeo"));
		    databaseInfoResultTO.setThanaCode(rs.getLong("thcode"));
		    databaseInfoResultTO.setDistictCode(rs.getLong("distcode"));
		    databaseInfoResultTO.setDivisionName(rs.getString("division"));
		    databaseInfoResultTO.setDistrictName(rs.getString("district"));
		    
		    databaseInfoResultTO.setUpazilaName(rs.getString("upazila"));
		    databaseInfoResultTO.setUnionName(rs.getString("union_name"));
		    
		   
		    dl.add(databaseInfoResultTO);
		   }
		   return dl;
		  }
		  finally{
		   if(conn!=null){conn.close();}
		   if(stmt!=null){stmt.close();}
		   if(rs!=null){rs.close();}
		  }
		 
		 }
}
