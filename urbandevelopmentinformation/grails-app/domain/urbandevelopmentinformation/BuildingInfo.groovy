package urbandevelopmentinformation



class BuildingInfo {

	Long buId
	Long buAddressId
	Long buPlId
	String buCode
	String buName
	String buUseType
	BigDecimal buNumberOfFloor
	BigDecimal buTotalHeight
	BigDecimal buNumberOfFloorUnit
	BigDecimal buTotalGroundArea
	BigDecimal buTotalFloorArea
	BigDecimal buSetBackFront
	BigDecimal buSetBackBack
	BigDecimal buSetBackRight
	BigDecimal buSetBackLeft
	BigDecimal buCenterLongitude
	BigDecimal buCenterLatitude
	byte [] buLayoutPicture
	
	String buRemark
	
	static hasMany =[ownership:BuildingInfoOwnershipInfo,authorizationInfo:BuildingInfoAuthorizationInfo, utilityInfo:BuildingInfoUtilityInfo,
		             billingInfo:BuildingInfoBillingInfo, paymentInfo:BuildingInfoPaymentInfo, floorInfo:FloorInfo]
	
	static belongsTo =[plotInfo:PlotInfo]

    static constraints = {
		
		 buId()
		 buAddressId()
		 buPlId()
		 buCode()
		 buName()
		 buUseType()
		 buNumberOfFloor(scale: 3, maxSize:10)
		 buTotalHeight()
		 buNumberOfFloorUnit()
		 buTotalGroundArea()
		 buTotalFloorArea()
		 buSetBackFront()
		 buSetBackBack()
		 buSetBackRight()
		 buSetBackLeft()
		 buCenterLongitude()
		 buCenterLatitude()
		 buLayoutPicture()
		 
		 buRemark()
		 ownership()
		 authorizationInfo()
		 utilityInfo()
		 billingInfo()
		 paymentInfo()
		 floorInfo()
    }
	
	
	String toString() {
		"${buId}-${buUseType}"
	}
	static mapping = {
	  table 'buildingInfo'
	  version false
	 
 columns {
	 
	 buId column:'bu_id'
	 buAddressId column:'bu_ad_id'
	 buPlId column:'bu_pl_id'
	 buCode column:'bu_code'
	 buName (column:'bu_name',nullable:true, blank:true)
	 buUseType column:'bu_use_type'
	 buNumberOfFloor column:'bu_fl_number'
	 buTotalHeight column:'bu_tot_height'
	 buNumberOfFloorUnit column:'bu_fl_un_num'
	 buTotalGroundArea column:'bu_tga'
	 buTotalFloorArea column:'bu_tfa'
	 buSetBackFront column:'bu_set_bf'
	 buSetBackBack column:'bu_set_bb'
	 buSetBackRight column:'bu_set_br'
	 buSetBackLeft column:'bu_set_bl'
	 buCenterLongitude column:'bu_ce_longitude'
	 buCenterLatitude column:'bu_ce_latitude'
	 buLayoutPicture column:'bu_layout_pic'
	 
	 buRemark column:'bu_remark'
	
	  }
  }
}
