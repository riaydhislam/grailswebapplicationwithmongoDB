package urbandevelopmentinformation

import java.util.Date;

class BuildingInfoUtilityInfo {

	Long utId
	Long utCreaterAddressId
	String utType
	String utCreaterName
	String utCreaterAuthority
	Date utCreateDate
	Date utLastModifiedDate
	Date utSubmissionDate
	Date utApprovalDate
	Date utServiceDate
	Date utDisServiceDate
	byte [] utTypePic
	String utRemark
	Long utBuId
	
	static belongsTo =[buildingInfo:BuildingInfo]
	
   static constraints = {
        utId()
        utCreaterAddressId()
		utCreaterName()
		utCreaterAuthority()
		utCreateDate()
		utLastModifiedDate()
		utSubmissionDate()
		utApprovalDate()
		utServiceDate()
		utDisServiceDate()
		utTypePic()
		utRemark()
		utBuId()
    }
    
    String toString() {
        "${utId}-${utType}"
    }
	
	
	static mapping = {
      table 'building_utility'
      version false
 
      columns {
		utId column:'ut_id'
		  utCreaterAddressId column:'ut_ca_id'
		  utType column:'ut_type'
		  utCreaterName column:'ut_cn_id'
		  utCreaterAuthority column:'ut_cau_id'
		  utCreateDate column:'ut_cd_id'
		  utLastModifiedDate column:'ut_lmd_id'
		  utSubmissionDate column:'ut_sd_id'
		  utApprovalDate column:'ut_ad_id'
		  utServiceDate column:'ut_sed_id'
		  utDisServiceDate column:'ut_dsd_id'
		  utTypePic column:'ut_tp_id'
		  utRemark column:'ut_remark'
		  utBuId column:'ut_bu_id'
     	  
      }
  }
	
}
