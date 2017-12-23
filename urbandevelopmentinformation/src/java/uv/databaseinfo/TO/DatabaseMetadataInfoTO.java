/**
 * 
 */
package uv.databaseinfo.TO;

/**
 * @author Shaiful Islam Atif
 *
 */
public class DatabaseMetadataInfoTO {
	
	String SchemaName;
	 String DriverClass;
	 String DatabaseMajorVersion;
	 String DatabaseMinorVersion;
	 String DatabaseProductName;
	 String DatabaseProductVersion;
	 String JDBCMajorVersion;
	 String JDBCMinorVersion;
	public String getSchemaName() {
		return SchemaName;
	}
	public void setSchemaName(String schemaName) {
		SchemaName = schemaName;
	}
	public String getDriverClass() {
		return DriverClass;
	}
	public void setDriverClass(String driverClass) {
		DriverClass = driverClass;
	}
	public String getDatabaseMajorVersion() {
		return DatabaseMajorVersion;
	}
	public void setDatabaseMajorVersion(String databaseMajorVersion) {
		DatabaseMajorVersion = databaseMajorVersion;
	}
	public String getDatabaseMinorVersion() {
		return DatabaseMinorVersion;
	}
	public void setDatabaseMinorVersion(String databaseMinorVersion) {
		DatabaseMinorVersion = databaseMinorVersion;
	}
	public String getDatabaseProductName() {
		return DatabaseProductName;
	}
	public void setDatabaseProductName(String databaseProductName) {
		DatabaseProductName = databaseProductName;
	}
	public String getDatabaseProductVersion() {
		return DatabaseProductVersion;
	}
	public void setDatabaseProductVersion(String databaseProductVersion) {
		DatabaseProductVersion = databaseProductVersion;
	}
	public String getJDBCMajorVersion() {
		return JDBCMajorVersion;
	}
	public void setJDBCMajorVersion(String jDBCMajorVersion) {
		JDBCMajorVersion = jDBCMajorVersion;
	}
	public String getJDBCMinorVersion() {
		return JDBCMinorVersion;
	}
	public void setJDBCMinorVersion(String jDBCMinorVersion) {
		JDBCMinorVersion = jDBCMinorVersion;
	}
	 

}
