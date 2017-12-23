package urbandevelopmentinformation

class UnitInfo {

	Long unId
	Long unflId
	Long unAddressId
	String unCode
	String unName
	String unUseType
	Double unNumberOfFloorUnit
	Double unTotalUnitArea
	Double unTotalHeight
	Double unCenterLongitude
	Double unCenterLatitude
	byte [] unLayoutPicture
	String unRemark
	
	
	static hasMany =[ownership:UnitInfoOwnershipInfo,authorizationInfo:UnitInfoAuthorizationInfo, utilityInfo:UnitInfoUtilityInfo,
		billingInfo:UnitInfoBillingInfo, paymentInfo:UnitInfoPaymentInfo]
	
	static belongsTo =[floorInfo:FloorInfo]
	
    static constraints = {
		 unId()
		 unflId()
		 unAddressId()
		 unCode()
		 unName()
		 unUseType()
		 unNumberOfFloorUnit()
		 unTotalUnitArea()
	     unTotalHeight()
		 unCenterLongitude()
		 unCenterLatitude()
		 unLayoutPicture()
		 unRemark()
		ownership()
		authorizationInfo()
		utilityInfo()
		billingInfo()
		paymentInfo()
    }
	
	String toString() {
		"${unId}-${unflId}-${unUseType}"
	}
	
	static mapping = {
		table 'unitInfo'
		version false
	   
   columns {
		 unId column:'un_id'
		 unflId column:'un_fl_id'
		 unAddressId column:'un_ad_id'
		 unCode column:'un_code'
		 unName column:'un_name'
		 unUseType column:'un_use_type'
		 unNumberOfFloorUnit column:'un_num_fn'
		 unTotalUnitArea column:'un_tot_un_area'
	     unTotalHeight column:'un_tot_height'
		 unCenterLongitude column:'un_ce_longitude'
		 unCenterLatitude column:'un_ce_latitude'
		 unLayoutPicture column:'un_layout_pic'
		 unRemark column:'un_remark'
	  
		}
	}
	
	
}
