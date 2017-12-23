package uv.database.info
import java.util.List;
import liquibase.database.DatabaseConnection

import uv.databaseinfo.TO.AddressLocationSearchResultTO
import uv.databaseinfo.TO.DatabaseInfoResultTO;
import uv.databaseinfo.TO.DatabaseMetadataInfoTO;
import uv.databaseinfo.TO.RoadSearchParamsTO
import uv.databaseinfo.impl.DatabaseInfo;

class DatabaseInfoImpl2Controller {
	def metadata() {
		DatabaseInfo bi=new DatabaseInfo();
		DatabaseMetadataInfoTO databaseMetadataInfoTO=new DatabaseMetadataInfoTO();
		String propertiesFile="conf.properties";
		String databaseName="urbandatabase";
		databaseMetadataInfoTO=bi.getDatabaseMetadataInfo(databaseName,propertiesFile);
		[databaseMetadataInfoTO:databaseMetadataInfoTO]
}
 def getTables() {
	DatabaseInfo bi=new DatabaseInfo();
	List<DatabaseInfoResultTO> tableList= new ArrayList<DatabaseInfoResultTO>();
	String propertiesFile="conf.properties";
	String databaseName="urbandatabase";
	tableList=bi.getTableNameList(databaseName,propertiesFile);
	 
	[tableList:tableList]
}
 
 def getDatabases() {
	 DatabaseInfo bi=new DatabaseInfo();
	 List<DatabaseInfoResultTO> databaseList= new ArrayList<DatabaseInfoResultTO>();
	 String propertiesFile="conf.properties";
	
	 databaseList=bi.getDatabaseList(propertiesFile);
	  
	 [ databaseList: databaseList]
 }
 
 def getTableDescription() {
	 DatabaseInfo bi=new DatabaseInfo();
	 List<DatabaseInfoResultTO> tableDescription= new ArrayList<DatabaseInfoResultTO>();
	 String propertiesFile="conf.properties";
	 String databaseName="urbandatabase";
	 String tableName="plot"
	
	tableDescription=bi.getDatabaseTableDescription(databaseName,tableName,propertiesFile);
	  
	 [tableDescription:tableDescription]
 }
 
 def getAddressLocationData(RoadSearchParamsTO roadSearchParamsTOInstance) {
	 String propertiesFile="conf.properties"
	 String databaseName="uv_dataset"
	 
	 List<AddressLocationSearchResultTO> resultList=new ArrayList<AddressLocationSearchResultTO>()
	
	  DatabaseInfo databaseConnection=new DatabaseInfo()
	 
	 resultList=databaseConnection.getAddressLocationData(databaseName,roadSearchParamsTOInstance,propertiesFile)
	 
	 def counter=resultList.size()
	 
	 [resultList:resultList, counter:counter]
	}
 
}

