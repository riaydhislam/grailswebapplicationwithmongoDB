package urbandevelopmentinformation

class LovInfo {
	Long loId;
	String tableName
	String columnName
	String lovKey
	String lovValue
	String lovRemark
    static mapping = {
		
		table 'lov'
		loId column:'lo_id'
		tableName column:'lo_tab_Name'
		lovKey column:'lo_key'
		lovValue column:'lo_value'
		lovRemark cloumn:'lo_Remark'
    }
}
