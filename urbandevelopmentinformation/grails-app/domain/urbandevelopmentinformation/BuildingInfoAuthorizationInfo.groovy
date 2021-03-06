package urbandevelopmentinformation
class BuildingInfoAuthorizationInfo {

	Long auId
	Long auAddressId
	Date auAppliedDate
	Date auApprovalDate
	Date auPublishDate
	String auCode
	String auName
	String auType
	String auNumber
	String auServiceCode
	String auServiceName
	byte [] auApplicationCopy
	byte [] auApprovedCopy
	String auRemark
	Long auBuId
	
	static belongsTo =[buildingInfo:BuildingInfo]
	
    static constraints = {
		 auId()
         auAddressId()
		 auAppliedDate()
		 auApprovalDate()
		 auPublishDate()
		 auCode()
		 auName()
		 auType()
		 auNumber()
		 auServiceCode()
		 auServiceName()
		 auApplicationCopy()
		 auApprovedCopy()
		 auRemark()
		 auBuId()
    }
	
	String toString() {
		"${auId} - ${auBuId}"
	}
	static mapping = {
		table 'building_authorization'
	  version false
	 
 columns {
	     auId column:'au_id'
         auAddressId column:'au_ad_id'
		 auAppliedDate column:'au_appl_date'
		 auApprovalDate column:'au_appr_date'
		 auPublishDate column:'au_publ_date'
		 auCode column:'au_code'
		 auName column:'au_name'
		 auType column:'au_type'
		 auNumber column:'au_number'
		 auServiceCode column:'au_serv_code'
		 auServiceName column:'au_serv_name'
		 auApplicationCopy column:'au_appl_copy'
		 auApprovedCopy column:'au_appr_copy'
		 auRemark column:'au_remark'
		 auBuId column:'au_bu_id'
	
	  }
  }
	
}
