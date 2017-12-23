package urbandevelopmentinformation

import java.util.Date;

class UnitInfoBillingInfo {
	Long biId
	Long biCreaterAddressId
	String biCreaterName
	String biCreaterAuthority
	Date biCreateDate
	Date biPayDateUntil
	Date biLastModifiedDate
	Date biPrintDate
	String biCurrency
	String biCostType
	byte [] biPrintCopy
	Double biAmount
	String biReferenceNumber
	String biRemark
	Long biUnId
	
	static belongsTo =[unitInfo:UnitInfo]
	
    static constraints = {
		biId()
		 biCreaterAddressId()
		 biCreaterName()
		 biCreaterAuthority()
		 biCreateDate()
		 biPayDateUntil()
		 biLastModifiedDate()
		 biPrintDate()
		 biCurrency()
		biCostType()
		biPrintCopy()
		biAmount()
		biReferenceNumber()
		biRemark()
		biUnId()
    }
	
	
	String toString() {
		"${biId}-${biCreaterAddressId}"
	}
	
	
	static mapping = {
	  table 'unit_billing'
	  version false
 
	  columns {
		  
		  
		biId column:'bi_id'
		biCreaterAddressId column:'bi_cra_id'
		biCreaterName column:'bi_cr_name'
		biCreaterAuthority column:'bi_cr_auth'
		biCreateDate column:'bi_cr_date'
		biPayDateUntil column:'bi_pd_until'
		biLastModifiedDate column:'bi_lm_date'
		biPrintDate column:'bi_pr_date'
		biCurrency column:'bi_currency'
		biCostType column:'bi_cost_type'
		biPrintCopy column:'bi_print_copy'
		biAmount column:'bi_amount'
		biReferenceNumber column:'bi_ref_num'
		biRemark column:'bi_remark'
		biUnId column:'bi_un_id'
	  }
  }
}
