package urbandevelopmentinformation

import java.util.Date;

class UnitInfoPaymentInfo {

	Long paId
	Long paBiId
	String paType
	Date  paDate
	String paRefNumber
	byte [] paCopy
	Double paTotalAmount
	Double paPaidAmount
	String paRemark
	Long paCreaterAddressId
	String paCreaterName
	String pyCreaterAuthority
	Long paUnId
	
	static belongsTo =[unitInfo:UnitInfo]
	
    static constraints = {
		paUnId()
		paId()
		paBiId()
		paCreaterAddressId()
		paCreaterName()
		pyCreaterAuthority()
		paType()
		paDate()
		paRefNumber()
		paTotalAmount()
		paPaidAmount()
		paCopy()
		paRemark()
    }
	
	String toString() {
		"${paUnId}-${paBiId}"
	}
	
	
	static mapping = {
	  table 'unit_payment'
	  version false
 
	  columns {

	   paUnId  column:'pa_un_id'
		paId column:'pa_id'
		paBiId column:'pa_bi_id'
		paCreaterAddressId  column:'pa_ad_id'
		paCreaterName column:'pa_cr_name'
		pyCreaterAuthority column:'pa_cr_auth'
		paType column:'pa_type'
		paDate column:'pa_date'
		paRefNumber column:'pa_ref_num'
		paTotalAmount column:'pa_to_amount'
		paPaidAmount column:'pa_pa_amount'
		paCopy column:'pa_copy'
		paRemark column:'pa_remark'
		   
	  }
  }
	
}
