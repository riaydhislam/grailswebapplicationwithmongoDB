/**
 * 
 */
package uv.databaseinfo.TO;

/**
 * @author Shaiful Islam Atif
 *
 */
public class DatabaseInfoResultTO {
	
	String databaseName;
	 String tableName;
	 String databaseNumber;
	 String cloumnName;
	 String columnDataType;
	 int columnDataTypeLength;
	 
	public String getCloumnName() {
		return cloumnName;
	}
	public void setCloumnName(String cloumnName) {
		this.cloumnName = cloumnName;
	}
	public String getColumnDataType() {
		return columnDataType;
	}
	public void setColumnDataType(String columnDataType) {
		this.columnDataType = columnDataType;
	}
	public int getColumnDataTypeLength() {
		return columnDataTypeLength;
	}
	public void setColumnDataTypeLength(int columnDataTypeLength) {
		this.columnDataTypeLength = columnDataTypeLength;
	}
	public String getDatabaseNumber() {
		return databaseNumber;
	}
	public void setDatabaseNumber(String databaseNumber) {
		this.databaseNumber = databaseNumber;
	}
	public String getDatabaseName() {
		return databaseName;
	}
	public void setDatabaseName(String databaseName) {
		this.databaseName = databaseName;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

}
