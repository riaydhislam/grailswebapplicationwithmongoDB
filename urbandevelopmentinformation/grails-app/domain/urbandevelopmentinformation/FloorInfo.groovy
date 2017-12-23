package urbandevelopmentinformation

class FloorInfo {

	Long flId
	Long flBuId
	Long flAddressId
	String flCode
	String flName
	String flUseType
	Double flNumberOfFloorUnit
	Double flTotalFloorArea
	Double flTotalFloorHeight
	Double flCenterLongitude
	Double flCenterLatitude
	byte [] flLayoutPicture
	String flRemark
	
	static hasMany =[ownership:FloorInfoOwnershipInfo,authorizationInfo:FloorInfoAuthorizationInfo, utilityInfo:FloorInfoUtilityInfo,
		billingInfo:FloorInfoBillingInfo, paymentInfo:FloorInfoPaymentInfo, unitInfo:UnitInfo]
	
	static belongsTo =[buildingInfo:BuildingInfo]
	
	
    static constraints = {
		 flId()
		 flBuId()
		 flAddressId()
		 flCode()
		 flName()
		 flUseType()
		 flNumberOfFloorUnit()
		 flTotalFloorArea()
		 flTotalFloorHeight()
		 flCenterLongitude()
		 flCenterLatitude()
		 flLayoutPicture()
		 flRemark()
		
		ownership()
		authorizationInfo()
		utilityInfo()
		billingInfo()
		paymentInfo()
		unitInfo()
    }
	String toString() {
		"${flId}-${flBuId}-${flUseType}"
	}
	
	static mapping = {
		table 'floorInfo'
		version false
	   
   columns {
	
		 flId column:'fl_id'
		 flBuId column:'fl_bu_id'
		 flAddressId column:'fl_ad_id'
		 flName column:'fl_name'
		 flUseType column:'fl_use_type'
		 flNumberOfFloorUnit column:'fl_num_fu'
		 flTotalFloorArea column:'fl_tot_area'
		 flTotalFloorHeight column:'fl_tot_fh'
		 flCenterLongitude column:'fl_ce_longitude'
		 flCenterLatitude column:'fl_ce_latitude'
		 flLayoutPicture column:'fl_layout_pic'
		 flRemark column:'fl_remark'
	  
		}
	}
	
}
