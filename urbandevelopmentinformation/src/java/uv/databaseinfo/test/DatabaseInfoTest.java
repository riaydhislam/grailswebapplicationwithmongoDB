package uv.databaseinfo.test;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import uv.databaseinfo.TO.DatabaseConnectionTO;
import uv.databaseinfo.TO.DatabaseInfoResultTO;
import uv.databaseinfo.TO.DatabaseMetadataInfoTO;
import uv.databaseinfo.impl.DatabaseInfo;

public class DatabaseInfoTest {
	public static void main(String[] args) throws Exception {
		//readPropertiesFileTestSuite();
		//getConnectionTestSuite();
		//getDatabaseMetadataInfoTestSuite();
		//getDatabaseListTestSuite();
		//getDatabaseCountListTestSuite();
		//getDatabaseCreateTestSuite();
		//getTableNameListTestSuite();
		//getTableCountListTestSuite();
		//getTableNameListTestSuite();
	getDatabaseTableDescriptionTestSuite();
	}
	public static void readPropertiesFileTestSuite(){
		String propertiesFile = "conf.properties";
		readPropertiesFileTestCase(propertiesFile);
		
		
	}


	private static void readPropertiesFileTestCase(String propertiesFile){
		DatabaseInfo bi= new DatabaseInfo();
		DatabaseConnectionTO prop = new DatabaseConnectionTO();
		prop = bi.readPropertiesFile(propertiesFile);
		
		System.out.println(String.format("getDriverClass():%s,getPassword():%s,getUrl()%s,getUser():%s",
prop.getDriverClass(),prop.getPassword(),
				prop.getUrl(),prop.getUser()));
		
	}
	
	
	
	public static void getConnectionTestSuite() throws Exception{
		
		String propertiesFile = "conf.properties";
		getConnectionTestCase(propertiesFile);
		
		
	}


	private static void getConnectionTestCase(String propertiesFile) throws Exception{
		
		DatabaseInfo bi= new DatabaseInfo();
		Connection con= null;
		
		con=bi.getConnection(propertiesFile);
		
		System.out.println(String.format("getCatalog():%s,getDatabaseMajorVersion():%s,getDatabaseMinorVersion():%s",
con.getCatalog(),con.getMetaData().getDatabaseMajorVersion(),con.getMetaData().getDatabaseMinorVersion()));
		
		
		
	}
	public static void getDatabaseMetadataInfoTestSuite() throws Exception{
		String propertiesFile = "conf.properties";
		getDatabaseMetadataInfoTestCase(propertiesFile);	
	}
	private static void getDatabaseMetadataInfoTestCase(String propertiesFile) throws Exception{
		
		DatabaseInfo bi= new DatabaseInfo();
		DatabaseMetadataInfoTO dbm=new DatabaseMetadataInfoTO();
		dbm=bi.getDatabaseMetadataInfo(propertiesFile);
		System.out.println(String.format("getDatabaseMajorVersion():%s,getDatabaseMajorVersion():%s,getDatabaseMinorVersion():%s",
        dbm.getDatabaseMajorVersion(),dbm.getDatabaseMinorVersion(),
        dbm.getDatabaseProductVersion(),dbm.getDriverClass()));
		
		
		
	}

	public static void getDatabaseListTestSuite() throws Exception{
		String propertiesFile = "conf.properties";
		getDatabaseListTestCase(propertiesFile);	
	}
	private static void getDatabaseListTestCase(String propertiesFile) throws Exception{
		List<DatabaseInfoResultTO> dbl = new ArrayList<DatabaseInfoResultTO>();
		
		
		DatabaseInfo bi= new DatabaseInfo();
		//DatabaseMetadataInfoTO dbm=new DatabaseMetadataInfoTO();
		dbl=bi.getDatabaseList(propertiesFile);
		for (DatabaseInfoResultTO riaydh:dbl) {
			System.out.println(String.format("getDatabaseName():%s",
	        riaydh.getDatabaseName()));
		}
		
		
		
		
	}
	
	public static void getDatabaseCountListTestSuite() throws Exception{
		String propertiesFile = "conf.properties";
		getDatabaseCountListTestCase(propertiesFile);	
	}
	private static void getDatabaseCountListTestCase(String propertiesFile) throws Exception{
		
		
		
		DatabaseInfo bi= new DatabaseInfo();
	
		long dbc=bi.getDatabaseCountList(propertiesFile);
		
			System.out.println(String.format("counter:%s",dbc
	      ));
			
		

	}
	
	
	
	public static void getDatabaseCreateTestSuite() throws Exception{
		String propertiesFile = "conf.properties";
		String newDatabseName ="Transportation";
		
		getDatabaseCreateTestCase(newDatabseName,propertiesFile);	
		
	}
	private static void getDatabaseCreateTestCase(String newDatabseName,String propertiesFile) throws Exception{
		
		
		
		DatabaseInfo bi= new DatabaseInfo();
	
		String dbcr=bi.getDatabaseCreate(newDatabseName, propertiesFile);
		
			System.out.println(String.format("createDatabase:%s",dbcr));
	}
	
	
	
	public static void getTableNameListTestSuite() throws Exception{
		String propertiesFile = "conf.properties";
		
		getTableNameListTestCase("postgres",propertiesFile);	

		getTableNameListTestCase("urbandatabase",propertiesFile);
		getTableNameListTestCase("postgis_22_sample",propertiesFile);
	}
	private static void getTableNameListTestCase(String databaseName,String propertiesFile) throws Exception{
		//String dbname="urbandatabase";
		List<DatabaseInfoResultTO> dbt = new ArrayList<DatabaseInfoResultTO>();
		
		DatabaseInfo bi= new DatabaseInfo();
		//DatabaseMetadataInfoTO dbm=new DatabaseMetadataInfoTO();
		dbt=bi.getTableNameList(databaseName,propertiesFile);
		for (DatabaseInfoResultTO dTable:dbt) {
			System.out.println(String.format("getTableName():%s",
	       dTable .getTableName()));
		}
		
	
	
	}
	
	
	public static void getDatabaseTableDescriptionTestSuite() throws Exception{
		String propertiesFile = "conf.properties";
		
		getDatabaseTableDescriptionTestCase("postgres","driver_info",propertiesFile);	

		getDatabaseTableDescriptionTestCase("urbandatabase","plot",propertiesFile);
		//getDatabaseTableDescriptionTestCase("postgis_22_sample",propertiesFile);
	}
	private static void getDatabaseTableDescriptionTestCase(String databaseName,String tableName,String propertiesFile) throws Exception{
		//String dbname="urbandatabase";
		List<DatabaseInfoResultTO> dbt = new ArrayList<DatabaseInfoResultTO>();
		
		DatabaseInfo bi= new DatabaseInfo();
		//DatabaseMetadataInfoTO dbm=new DatabaseMetadataInfoTO();
		dbt=bi.getDatabaseTableDescription(databaseName,tableName,propertiesFile);
		for (DatabaseInfoResultTO dTable:dbt) {
			System.out.println(String.format("getColumnName():%s,getDataType():%s,getColumDataTypeLength():%s",
	       dTable .getCloumnName(),dTable.getColumnDataType(),dTable.getColumnDataTypeLength()));
		}
		
	
	
	}
	
	
	

	}

