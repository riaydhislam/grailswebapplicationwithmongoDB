package uv.database.application.info
import java.util.Date;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Import;

import urbandevelopmentinformation.PlotInfo
import urbandevelopmentinformation.PlotInfoOwnershipInfo
import urbandevelopmentinformation.PlotInfoAuthorizationInfo
import urbandevelopmentinformation.PlotInfoBillingInfo
import urbandevelopmentinformation.PlotInfoUtilityInfo
import urbandevelopmentinformation.PlotInfoPaymentInfo

import urbandevelopmentinformation.BuildingInfo
import urbandevelopmentinformation.BuildingInfoOwnershipInfo
import urbandevelopmentinformation.BuildingInfoAuthorizationInfo
import urbandevelopmentinformation.BuildingInfoBillingInfo
import urbandevelopmentinformation.BuildingInfoUtilityInfo
import urbandevelopmentinformation.BuildingInfoPaymentInfo

import urbandevelopmentinformation.FloorInfo
import urbandevelopmentinformation.FloorInfoOwnershipInfo
import urbandevelopmentinformation.FloorInfoAuthorizationInfo
import urbandevelopmentinformation.FloorInfoBillingInfo
import urbandevelopmentinformation.FloorInfoUtilityInfo
import urbandevelopmentinformation.FloorInfoPaymentInfo

import urbandevelopmentinformation.UnitInfo
import urbandevelopmentinformation.UnitInfoOwnershipInfo
import urbandevelopmentinformation.UnitInfoAuthorizationInfo
import urbandevelopmentinformation.UnitInfoBillingInfo
import urbandevelopmentinformation.UnitInfoUtilityInfo
import urbandevelopmentinformation.UnitInfoPaymentInfo

import urbandevelopmentinformation.UserRole
import urbandevelopmentinformation.UserRegistration
import urbandevelopmentinformation.AddressInfo
import urbandevelopmentinformation.AddressLocationInfo


class ApplicationDataSearchsController {

  def plotList() {
    
    def plots = PlotInfo.createCriteria().list (params) {
		
		if(params.plId!=null && params.plId?.toString().isLong() ) {
    Long value=params.plId as Long
    
    if (value!=0) {
    eq('plId',value)
     }
     
    }
   
   if (params.plType!=null) {
    ilike("plType", "%${params.plType}%")
   }
   
   if (params.plMonzaNumber!=null) {
    ilike("plMonzaNumber", "%${params.plMonzaNumber}%")
   }
   
   if (params.plCSNumber!=null) {
    ilike("plCSNumber", "%${params.plCSNumber}%")
   }
   
   if (params.plMSNumber!=null) {
    ilike("plMSNumber", "%${params.plMSNumber}%")
   }
   
  }

    [plots:plots,counter:plots.size()]
   }
  
 
  def plotInfoOwnershipInfoPublicList() {
	  
	  def plotInfoOwnership = PlotInfoOwnershipInfo.createCriteria().list (params) {
		  
		  if(params.owId!=null && params.owId?.toString().isLong() ) {
	Long value=params.owId as Long
	
	if (value!=0) {
	eq('owId',value)
	 }
	 
	}
   
   
   if(params.owPlId!=null && params.owPlId?.toString().isLong() ) {
	Long value=params.owPlId as Long
	
	if (value!=0) {
	eq('owPlId',value)
	 }
	 
	}
   
   if (params.owFullName!=null) {
	ilike("owFullName", "%${params.owFullName}%")
   }
   
   

  }
  
	  [plotInfoOwnership:plotInfoOwnership,counter:plotInfoOwnership.size()]
	 }
	
  
  
  
  def plotInfoAuthorizationPublicList() {
	  
	  def plotInfoAuthorization = PlotInfoAuthorizationInfo.createCriteria().list (params) {
		  
		   if(params.auId!=null && params.auId?.toString().isLong() ) {
    Long value=params.auId as Long
    
    if (value!=0) {
    eq('auId',value)
     }
     
    }
   if(params.auPlId!=null && params.auPlId?.toString().isLong() ) {
	   Long value=params.auBuId as Long
	   
	   if (value!=0) {
	   eq('auPlId',value)
		}
		
	   }
   
   if(params.auAddressId!=null && params.auAddressId?.toString().isLong() ) {
	   Long value=params.auAddressId as Long
	   
	   if (value!=0) {
	   eq('auAddressId',value)
		}
		
	   }
   
   if (params.auName!=null) {
    ilike("auName", "%${params.auName}%")
   }
   
   if (params.auType!=null) {
	   ilike("auType", "%${params.auType}%")
	  }
   
   if (params.auNumber!=null) {
    ilike("auNumber", "%${params.auNumber}%")
   }
   
  
   
   
   
  }
 
	  [plotInfoAuthorization:plotInfoAuthorization,counter:plotInfoAuthorization.size()]
	 }
	
  def plotInfoBillingInfoPublicList() {
	  
	  def plotInfoBilling = PlotInfoBillingInfo.createCriteria().list (params) {
		  
		 if(params.biId!=null && params.biId?.toString().isLong() ) {
    Long value=params.biId as Long
    
    if (value!=0) {
    eq('biId',value)
     }
     
    }
   if(params.biPlId!=null && params.biPlId?.toString().isLong() ) {
	   Long value=params.biPlId as Long
	   
	   if (value!=0) {
	   eq('biPlId',value)
		}
		
	   }
   
   if(params.biCreaterAddressId!=null && params.biCreaterAddressId?.toString().isLong() ) {
	   Long value=params.biCreaterAddressId as Long
	   
	   if (value!=0) {
	   eq('biCreaterAddressId',value)
		}
		
	   }
   
   if (params.biCreaterName!=null) {
    ilike("biCreaterName", "%${params.biCreaterName}%")
   }
   
   if (params.biReferenceNumber!=null) {
	   ilike("biReferenceNumber", "%${params.biReferenceNumber}%")
	  }
   
   if (params.biCreaterAuthority!=null) {
    ilike("biCreaterAuthority", "%${params.biCreaterAuthority}%")
   }
   
  
   
   
   
  }
 
  
	  [plotInfoBilling:plotInfoBilling,counter:plotInfoBilling.size()]
	 }
  
  def plotInfoUtilityInfoPublicList() {
	  
	  def plotInfoUtility = PlotInfoUtilityInfo.createCriteria().list (params) {
		  
		  if(params.utId!=null && params.utId?.toString().isLong() ) {
    Long value=params.utId as Long
    
    if (value!=0) {
    eq('utId',value)
     }
     
    }
   if(params.utPlId!=null && params.utPlId?.toString().isLong() ) {
	   Long value=params.utPlId as Long
	   
	   if (value!=0) {
	   eq('utPlId',value)
		}
		
	   }
   
   if(params.utCreaterAddressId!=null && params.utCreaterAddressId?.toString().isLong() ) {
	   Long value=params.utCreaterAddressId as Long
	   
	   if (value!=0) {
	   eq('utCreaterAddressId',value)
		}
		
	   }
   
   if (params.utType!=null) {
    ilike("utType", "%${params.utType}%")
   }
   
   if (params.utCreaterAuthority!=null) {
    ilike("utCreaterAuthority", "%${params.utCreaterAuthority}%")
   }
   
   if (params.utCreaterName!=null) {
    ilike("utCreaterName", "%${params.utCreaterName}%")
   }
   
   
   
  }
  
	  [ plotInfoUtility:plotInfoUtility,counter:plotInfoUtility.size()]
	 }
  
  def plotInfoPaymentInfoPublicList() {
	  
	  def plotInfoPayment = PlotInfoPaymentInfo.createCriteria().list (params) {
		  
		 if(params.paId!=null && params.paId?.toString().isLong() ) {
	Long value=params.paId as Long
	
	if (value!=0) {
	eq('paId',value)
	 }
	 
	}
   
   
   if(params.paBiId!=null && params.paBiId?.toString().isLong() ) {
	Long value=params.paBiId as Long
	
	if (value!=0) {
	eq('paPlId',value)
	 }
	 
	}
   
   if(params.paPlId!=null && params.paPlId?.toString().isLong() ) {
	   Long value=params.paPlId as Long
	   
	   if (value!=0) {
	   eq('paPlId',value)
		}
		
	   }
   
   if (params.paType!=null) {
	ilike("paType", "%${params.paType}%")
   }
   
   if (params.paCreaterName!=null) {
	   ilike("paCreaterName", "%${params.paCreaterName}%")
	  }
   if (params.pyCreaterAuthority!=null) {
	   ilike("pyCreaterAuthority", "%${params.pyCreaterAuthority}%")
	  }
   

  }
  
	  [plotInfoPayment:plotInfoPayment,counter:plotInfoPayment.size()]
	 }
  
  
  
  def buildingList() {
    
    def buildings = BuildingInfo.createCriteria().list (params) {
		
		if(params.buId!=null && params.buId?.toString().isLong() ) {
    Long value=params.buId as Long
    
    if (value!=0) {
    eq('buId',value)
     }
     
    }
   
   
   if(params.buPlId!=null && params.buPlId?.toString().isLong() ) {
    Long value=params.buPlId as Long
    
    if (value!=0) {
    eq('buPlId',value)
     }
     
    }
   
   if (params.buCode!=null) {
    ilike("buCode", "%${params.buCode}%")
   }
   
   if (params.buUseType!=null) {
    ilike("buUseType", "%${params.buUseType}%")
   }
   
   if (params.buName!=null) {
    ilike("buName", "%${params.buName}%")
   }
   
  }
 

    [buildings:buildings,counter:buildings.size()]
   }
  
  
  def buildingInfoOwnershipInfoPublicList() {
	  
	  def buildingInfoOwnership = BuildingInfoOwnershipInfo.createCriteria().list (params) {
		  
		  if(params.owId!=null && params.owId?.toString().isLong() ) {
	Long value=params.owId as Long
	
	if (value!=0) {
	eq('owId',value)
	 }
	 
	}
   
   
   if(params.owBuId!=null && params.owBuId?.toString().isLong() ) {
	Long value=params.owBuId as Long
	
	if (value!=0) {
	eq('owBuId',value)
	 }
	 
	}
   
   if (params.owFullName!=null) {
	ilike("owFullName", "%${params.owFullName}%")
   }
   
   

  }
  
	  [buildingInfoOwnership:buildingInfoOwnership,counter:buildingInfoOwnership.size()]
	 }
	
  
  
  
  def buildingInfoAuthorizationPublicList() {
	  
	  def buildingInfoAuthorization = BuildingInfoAuthorizationInfo.createCriteria().list (params) {
		  
		   if(params.auId!=null && params.auId?.toString().isLong() ) {
	Long value=params.auId as Long
	
	if (value!=0) {
	eq('auId',value)
	 }
	 
	}
   if(params.auBuId!=null && params.auBuId?.toString().isLong() ) {
	   Long value=params.auBuId as Long
	   
	   if (value!=0) {
	   eq('auBuId',value)
		}
		
	   }
   
   if(params.auAddressId!=null && params.auAddressId?.toString().isLong() ) {
	   Long value=params.auAddressId as Long
	   
	   if (value!=0) {
	   eq('auAddressId',value)
		}
		
	   }
   
   if (params.auName!=null) {
	ilike("auName", "%${params.auName}%")
   }
   
   if (params.auType!=null) {
	   ilike("auType", "%${params.auType}%")
	  }
   
   if (params.auNumber!=null) {
	ilike("auNumber", "%${params.auNumber}%")
   }
   
  
   
   
   
  }
 
	  [buildingInfoAuthorization:buildingInfoAuthorization,counter:buildingInfoAuthorization.size()]
	 }
	
  def buildingInfoBillingInfoPublicList() {
	  
	  def buildingInfoBilling = BuildingInfoBillingInfo.createCriteria().list (params) {
		  
		 if(params.biId!=null && params.biId?.toString().isLong() ) {
	Long value=params.biId as Long
	
	if (value!=0) {
	eq('biId',value)
	 }
	 
	}
   if(params.biBuId!=null && params.biBuId?.toString().isLong() ) {
	   Long value=params.biBuId as Long
	   
	   if (value!=0) {
	   eq('biBuId',value)
		}
		
	   }
   
   if(params.biCreaterAddressId!=null && params.biCreaterAddressId?.toString().isLong() ) {
	   Long value=params.biCreaterAddressId as Long
	   
	   if (value!=0) {
	   eq('biCreaterAddressId',value)
		}
		
	   }
   
   if (params.biCreaterName!=null) {
	ilike("biCreaterName", "%${params.biCreaterName}%")
   }
   
   if (params.biReferenceNumber!=null) {
	   ilike("biReferenceNumber", "%${params.biReferenceNumber}%")
	  }
   
   if (params.biCreaterAuthority!=null) {
	ilike("biCreaterAuthority", "%${params.biCreaterAuthority}%")
   }
   
  
   
   
   
  }
 
  
	  [buildingInfoBilling:buildingInfoBilling,counter:buildingInfoBilling.size()]
	 }
  
  def buildingInfoUtilityInfoPublicList() {
	  
	  def buildingInfoUtility = BuildingInfoUtilityInfo.createCriteria().list (params) {
		  
		  if(params.utId!=null && params.utId?.toString().isLong() ) {
	Long value=params.utId as Long
	
	if (value!=0) {
	eq('utId',value)
	 }
	 
	}
   if(params.utBuId!=null && params.utBuId?.toString().isLong() ) {
	   Long value=params.utBuId as Long
	   
	   if (value!=0) {
	   eq('utBuId',value)
		}
		
	   }
   
   if(params.utCreaterAddressId!=null && params.utCreaterAddressId?.toString().isLong() ) {
	   Long value=params.utCreaterAddressId as Long
	   
	   if (value!=0) {
	   eq('utCreaterAddressId',value)
		}
		
	   }
   
   if (params.utType!=null) {
	ilike("utType", "%${params.utType}%")
   }
   
   if (params.utCreaterAuthority!=null) {
	ilike("utCreaterAuthority", "%${params.utCreaterAuthority}%")
   }
   
   if (params.utCreaterName!=null) {
	ilike("utCreaterName", "%${params.utCreaterName}%")
   }
   
   
   
  }
  
	  [ buildingInfoUtility:buildingInfoUtility,counter:buildingInfoUtility.size()]
	 }
  
  def buildingInfoPaymentInfoPublicList() {
	  
	  def buildingInfoPayment = BuildingInfoPaymentInfo.createCriteria().list (params) {
		  
		 if(params.paId!=null && params.paId?.toString().isLong() ) {
	Long value=params.paId as Long
	
	if (value!=0) {
	eq('paId',value)
	 }
	 
	}
   
   
   if(params.paBiId!=null && params.paBiId?.toString().isLong() ) {
	Long value=params.paBiId as Long
	
	if (value!=0) {
	eq('paBiId',value)
	 }
	 
	}
   
   if(params.paBuId!=null && params.paBuId?.toString().isLong() ) {
	   Long value=params.paPlId as Long
	   
	   if (value!=0) {
	   eq('paBuId',value)
		}
		
	   }
   
   if (params.paType!=null) {
	ilike("paType", "%${params.paType}%")
   }
   
   if (params.paCreaterName!=null) {
	   ilike("paCreaterName", "%${params.paCreaterName}%")
	  }
   if (params.pyCreaterAuthority!=null) {
	   ilike("pyCreaterAuthority", "%${params.pyCreaterAuthority}%")
	  }
   

  }
  
	  [buildingInfoPayment:buildingInfoPayment,counter:buildingInfoPayment.size()]
	 }
  
  
  
  
  def floorList() {
    
    def floors = FloorInfo.createCriteria().list (params) {
		
		 if(params.flId!=null && params.flId?.toString().isLong() ) {
    Long value=params.flId as Long
    
    if (value!=0) {
    eq('flId',value)
     }
     
    }
   
   
   if(params.flBuId!=null && params.flBuId?.toString().isLong() ) {
    Long value=params.flBuId as Long
    
    if (value!=0) {
    eq('flBuId',value)
     }
     
    }
   
   if (params.flCode!=null) {
    ilike("flCode", "%${params.flCode}%")
   }
   
   if (params.flName!=null) {
    ilike("flName", "%${params.flName}%")
   }
   
   if (params.flUseType!=null) {
    ilike("flUseType", "%${params.flUseType}%")
   }
   
  }
 
 

    [floors:floors,counter:floors.size()]
   }
  
  
  def floorInfoOwnershipInfoPublicList() {
	  
	  def floorInfoOwnership = FloorInfoOwnershipInfo.createCriteria().list (params) {
		  
		  if(params.owId!=null && params.owId?.toString().isLong() ) {
	Long value=params.owId as Long
	
	if (value!=0) {
	eq('owId',value)
	 }
	 
	}
   
   
   if(params.owFlId!=null && params.owFlId?.toString().isLong() ) {
	Long value=params.owFlId as Long
	
	if (value!=0) {
	eq('owFlId',value)
	 }
	 
	}
   
   if (params.owFullName!=null) {
	ilike("owFullName", "%${params.owFullName}%")
   }
   
   

  }
  
	  [floorInfoOwnership:floorInfoOwnership,counter:floorInfoOwnership.size()]
	 }
	
  
  
  
  def floorInfoAuthorizationPublicList() {
	  
	  def floorInfoAuthorization = FloorInfoAuthorizationInfo.createCriteria().list (params) {
		  
		  if(params.auId!=null && params.auId?.toString().isLong() ) {
    Long value=params.auId as Long
    
    if (value!=0) {
    eq('auId',value)
     }
     
    }
   if(params.auFlId!=null && params.auFlId?.toString().isLong() ) {
	   Long value=params.auFlId as Long
	   
	   if (value!=0) {
	   eq('auFlId',value)
		}
		
	   }
   
   if(params.auAddressId!=null && params.auAddressId?.toString().isLong() ) {
	   Long value=params.auAddressId as Long
	   
	   if (value!=0) {
	   eq('auAddressId',value)
		}
		
	   }
   
   if (params.auName!=null) {
    ilike("auName", "%${params.auName}%")
   }
   
   if (params.auType!=null) {
	   ilike("auType", "%${params.auType}%")
	  }
   
   if (params.auNumber!=null) {
    ilike("auNumber", "%${params.auNumber}%")
   }
   
  
   
   
   
  }
 
	  [floorInfoAuthorization:floorInfoAuthorization,counter:floorInfoAuthorization.size()]
	 }
	
  def floorInfoBillingInfoPublicList() {
	  
	  def floorInfoBilling = FloorInfoBillingInfo.createCriteria().list (params) {
		  
		if(params.biId!=null && params.biId?.toString().isLong() ) {
    Long value=params.biId as Long
    
    if (value!=0) {
    eq('biId',value)
     }
     
    }
   if(params.biFlId!=null && params.biFlId?.toString().isLong() ) {
	   Long value=params.biFlId as Long
	   
	   if (value!=0) {
	   eq('biFlId',value)
		}
		
	   }
   
   if(params.biCreaterAddressId!=null && params.biCreaterAddressId?.toString().isLong() ) {
	   Long value=params.biCreaterAddressId as Long
	   
	   if (value!=0) {
	   eq('biCreaterAddressId',value)
		}
		
	   }
   
   if (params.biCreaterName!=null) {
    ilike("biCreaterName", "%${params.biCreaterName}%")
   }
   
   if (params.biReferenceNumber!=null) {
	   ilike("biReferenceNumber", "%${params.biReferenceNumber}%")
	  }
   
   if (params.biCreaterAuthority!=null) {
    ilike("biCreaterAuthority", "%${params.biCreaterAuthority}%")
   }
   
  
   
   
   
  }
 
 
  
	  [floorInfoBilling:floorInfoBilling,counter:floorInfoBilling.size()]
	 }
  
  def floorInfoUtilityInfoPublicList() {
	  
	  def floorInfoUtility = FloorInfoUtilityInfo.createCriteria().list (params) {
		  
		   if(params.utId!=null && params.utId?.toString().isLong() ) {
    Long value=params.utId as Long
    
    if (value!=0) {
    eq('utId',value)
     }
     
    }
   if(params.utFlId!=null && params.utFlId?.toString().isLong() ) {
	   Long value=params.utFlId as Long
	   
	   if (value!=0) {
	   eq('utFlId',value)
		}
		
	   }
   
   if(params.utCreaterAddressId!=null && params.utCreaterAddressId?.toString().isLong() ) {
	   Long value=params.utCreaterAddressId as Long
	   
	   if (value!=0) {
	   eq('utCreaterAddressId',value)
		}
		
	   }
   
   if (params.utType!=null) {
    ilike("utType", "%${params.utType}%")
   }
   
   if (params.utCreaterAuthority!=null) {
    ilike("utCreaterAuthority", "%${params.utCreaterAuthority}%")
   }
   
   if (params.utCreaterName!=null) {
    ilike("utCreaterName", "%${params.utCreaterName}%")
   }
   
   
   
  }
  
	  [ floorInfoUtility:floorInfoUtility,counter:floorInfoUtility.size()]
	 }
  
  def floorInfoPaymentInfoPublicList() {
	  
	  def floorInfoPayment = FloorInfoPaymentInfo.createCriteria().list (params) {
		  
		if(params.paId!=null && params.paId?.toString().isLong() ) {
	Long value=params.paId as Long
	
	if (value!=0) {
	eq('paId',value)
	 }
	 
	}
   
   
   if(params.paBiId!=null && params.paBiId?.toString().isLong() ) {
	Long value=params.paBiId as Long
	
	if (value!=0) {
	eq('paBiId',value)
	 }
	 
	}
   
   if(params.paFlId!=null && params.paFlId?.toString().isLong() ) {
	   Long value=params.paFlId as Long
	   
	   if (value!=0) {
	   eq('paFlId',value)
		}
		
	   }
   
   if (params.paType!=null) {
	ilike("paType", "%${params.paType}%")
   }
   
   if (params.paCreaterName!=null) {
	   ilike("paCreaterName", "%${params.paCreaterName}%")
	  }
   if (params.pyCreaterAuthority!=null) {
	   ilike("pyCreaterAuthority", "%${params.pyCreaterAuthority}%")
	  }
   

  }
	  [floorInfoPayment:floorInfoPayment,counter:floorInfoPayment.size()]
	 }
  
  
  
  def unitList() {
	  
	  def units = UnitInfo.createCriteria().list (params) {
		  
		  if(params.unId!=null && params.unId?.toString().isLong() ) {
    Long value=params.unId as Long
    
    if (value!=0) {
    eq('unId',value)
     } 
    }
   
   
   if(params.unflId!=null && params.unflId?.toString().isLong() ) {
    Long value=params.unflId as Long
    
    if (value!=0) {
    eq('unflId',value)
     }
     
    }
   
   if (params.unCode!=null) {
    ilike("unCode", "%${params.unCode}%")
   }
   
   if (params.unName!=null) {
    ilike("unName", "%${params.unName}%")
   }
   
   if (params.unUseType!=null) {
    ilike("unUseType", "%${params.unUseType}%")
   }
   
  }
 
   
  
	  [units:units,counter:units.size()]
	 }
	
	
	def unitInfoOwnershipInfoPublicList() {
		
		def  unitInfoOwnership =  UnitInfoOwnershipInfo.createCriteria().list (params) {
			
			 if(params.owId!=null && params.owId?.toString().isLong() ) {
	Long value=params.owId as Long
	
	if (value!=0) {
	eq('owId',value)
	 }
	 
	}
   
   
   if(params.owUnId!=null && params.owUnId?.toString().isLong() ) {
	Long value=params.owUnId as Long
	
	if (value!=0) {
	eq('owUnId',value)
	 }
	 
	}
   
   if (params.owFullName!=null) {
	ilike("owFullName", "%${params.owFullName}%")
   }
   
   

  }
		[unitInfoOwnership:unitInfoOwnership,counter:unitInfoOwnership.size()]
	   }
	  
	
	
	
	def unitInfoAuthorizationPublicList() {
		
		def unitInfoAuthorization = UnitInfoAuthorizationInfo.createCriteria().list (params) {
			
			 
   if(params.auId!=null && params.auId?.toString().isLong() ) {
    Long value=params.auId as Long
    
    if (value!=0) {
    eq('auId',value)
     }
     
    }
   if(params.auUnId!=null && params.auUnId?.toString().isLong() ) {
	   Long value=params.auUnId as Long
	   
	   if (value!=0) {
	   eq('auUnId',value)
		}
		
	   }
   
   if(params.auAddressId!=null && params.auAddressId?.toString().isLong() ) {
	   Long value=params.auAddressId as Long
	   
	   if (value!=0) {
	   eq('auAddressId',value)
		}
		
	   }
   
   if (params.auName!=null) {
    ilike("auName", "%${params.auName}%")
   }
   
   if (params.auType!=null) {
	   ilike("auType", "%${params.auType}%")
	  }
   
   if (params.auNumber!=null) {
    ilike("auNumber", "%${params.auNumber}%")
   }
   
  
   
   
   
  }
 
		[unitInfoAuthorization:unitInfoAuthorization,counter:unitInfoAuthorization.size()]
	   }
	  
	def unitInfoBillingInfoPublicList() {
		
		def unitInfoBilling = UnitInfoBillingInfo.createCriteria().list (params) {
			
		 if(params.biId!=null && params.biId?.toString().isLong() ) {
    Long value=params.biId as Long
    
    if (value!=0) {
    eq('biId',value)
     }
     
    }
   if(params.biUnId!=null && params.biUnId?.toString().isLong() ) {
	   Long value=params.biUnId as Long
	   
	   if (value!=0) {
	   eq('biUnId',value)
		}
		
	   }
   
   if(params.biCreaterAddressId!=null && params.biCreaterAddressId?.toString().isLong() ) {
	   Long value=params.biCreaterAddressId as Long
	   
	   if (value!=0) {
	   eq('biCreaterAddressId',value)
		}
		
	   }
   
   if (params.biCreaterName!=null) {
    ilike("biCreaterName", "%${params.biCreaterName}%")
   }
   
   if (params.biReferenceNumber!=null) {
	   ilike("biReferenceNumber", "%${params.biReferenceNumber}%")
	  }
   
   
   if (params.biCreaterAuthority!=null) {
    ilike("biCreaterAuthority", "%${params.biCreaterAuthority}%")
   }
   
  
   
   
   
  }
   
	
		[unitInfoBilling:unitInfoBilling,counter:unitInfoBilling.size()]
	   }
	
	def unitInfoUtilityInfoPublicList() {
		
		def unitInfoUtility = UnitInfoUtilityInfo.createCriteria().list (params) {
			
			  if(params.utId!=null && params.utId?.toString().isLong() ) {
    Long value=params.utId as Long
    
    if (value!=0) {
    eq('utId',value)
     }
     
    }
   if(params.utUnId!=null && params.utUnId?.toString().isLong() ) {
	   Long value=params.utUnId as Long
	   
	   if (value!=0) {
	   eq('utUnId',value)
		}
		
	   }
   
   if(params.utCreaterAddressId!=null && params.utCreaterAddressId?.toString().isLong() ) {
	   Long value=params.utCreaterAddressId as Long
	   
	   if (value!=0) {
	   eq('utCreaterAddressId',value)
		}
		
	   }
   
   if (params.utType!=null) {
    ilike("utType", "%${params.utType}%")
   }
   
   if (params.utCreaterAuthority!=null) {
    ilike("utCreaterAuthority", "%${params.utCreaterAuthority}%")
   }
   
   if (params.utCreaterName!=null) {
    ilike("utCreaterName", "%${params.utCreaterName}%")
   }
   
   
   
  }
 
	
		[ unitInfoUtility:unitInfoUtility,counter:unitInfoUtility.size()]
	   }
	
	def unitInfoPaymentInfoPublicList() {
		
		def unitInfoPayment = UnitInfoPaymentInfo.createCriteria().list (params) {
			
		if(params.paId!=null && params.paId?.toString().isLong() ) {
	Long value=params.paId as Long
	
	if (value!=0) {
	eq('paId',value)
	 }
	 
	}
   
   
   if(params.paBiId!=null && params.paBiId?.toString().isLong() ) {
	Long value=params.paBiId as Long
	
	if (value!=0) {
	eq('paBiId',value)
	 }
	 
	}
   
   if(params.paUnId!=null && params.paUnId?.toString().isLong() ) {
	   Long value=params.paUnId as Long
	   
	   if (value!=0) {
	   eq('paUnId',value)
		}
		
	   }
   
   if (params.paType!=null) {
	ilike("paType", "%${params.paType}%")
   }
   
   if (params.paCreaterName!=null) {
	   ilike("paCreaterName", "%${params.paCreaterName}%")
	  }
   if (params.pyCreaterAuthority!=null) {
	   ilike("pyCreaterAuthority", "%${params.pyCreaterAuthority}%")
	  }
   

  }
		[unitInfoPayment:unitInfoPayment,counter:unitInfoPayment.size()]
	   }
	
	
  
  
  
  def userRoleList() {
	  def userRoles=UserRole.list()
def counter=UserRole.count()
	  [userRoles:userRoles, counter:counter]
  }
  
  
  def addressList() {
		  
		  def address = AddressInfo.createCriteria().list (params) {
			  
			  if(params.adId!=null && params.adId?.toString().isLong() ) {
				  Long value=params.adId as Long
				  
				  if (value!=0) {
				  eq('adId',value)
				   }
				   
				  }
			  
		   if (params.adFirstName!=null) {
			ilike("adFirstName", "%${params.adFirstName}%")
		   }
		   
		   if (params.adMiddleName!=null) {
			   ilike("adMiddleName", "%${params.adMiddleName}%")
			  }
		   
		   if (params.adLastName!=null) {
			   ilike("adLastName", "%${params.adLastName}%")
			  }
		   if (params.adNationalIdNumber!=null) {
			   ilike("adNationalIdNumber", "%${params.adNationalIdNumber}%")
			  }
		   if (params.adEMail!=null) {
			   ilike("adEMail", "%${params.adEMail}%")
			  }
		 
		  }
	  
		  [address:address,counter:address.size()]
		 }
		
  
  
 
  def addressUserRegistrationForAddress() {
	  
	  def addressInfos = AddressInfo.createCriteria().list (params) {
		  
		  if(params.adId!=null && params.adId?.toString().isLong() ) {
			  Long value=params.adId as Long
			  
			  if (value!=0) {
			  eq('adId',value)
			   }
			   
			  }
		  
	   if (params.adFirstName!=null) {
		ilike("adFirstName", "%${params.adFirstName}%")
	   }
	   
	   if (params.adMiddleName!=null) {
		   ilike("adMiddleName", "%${params.adMiddleName}%")
		  }
	   
	   if (params.adLastName!=null) {
		   ilike("adLastName", "%${params.adLastName}%")
		  }
	   if (params.adNationalIdNumber!=null) {
		   ilike("adNationalIdNumber", "%${params.adNationalIdNumber}%")
		  }
	   if (params.adEMail!=null) {
		   ilike("adEMail", "%${params.adEMail}%")
		  }
	 
	  }
	
	  [addressInfos:addressInfos,counter:addressInfos.size()]
	 }
	


  
  
  def addressLocationPublicList() {
    
   // params.max = Math.min(params.max ? params.int('max') : 10, 100)
    
  def addressLocationInfos =AddressLocationInfo.createCriteria().list (params) {
	  
	  if(params.alId!=null && params.alId?.toString().isLong() ) {
		  Long value=params.alId as Long
		  
		  if (value!=0) {
		  eq('alId',value)
		   }
		   
		  }
   
   if (params.alDivisionName!=null) {
    ilike("alDivisionName", "%${params.alDivisionName}%")
   }
   
   if (params.alDistictName!=null) {
    ilike("alDistictName", "%${params.alDistictName}%")
   }
   
   if (params.alUpzillaOrThanaName!=null) {
    ilike("alUpzillaOrThanaName", "%${params.alUpzillaOrThanaName}%")
   }
   
   if (params.alUnionName!=null) {
    ilike("alUnionName", "%${params.alUnionName}%")
   }
   
   if (params.alRoadName!=null) {
    ilike("alRoadName", "%${params.alRoadName}%")
   }
   if (params.alType!=null) {
    ilike("alType", "%${params.alType}%")
   }
   
  }
  
  [addressLocationInfos:addressLocationInfos,counter:addressLocationInfos.size()]
 }
  
  
  def ownershipList(){
	  def ownerships=OwnershipInfo.list()
	  def counter=OwnershipInfo.count()
	  
	  [ ownerships= ownerships, counter=counter]
	  
  }
  
  def userRegistration(){
	  
	  def userRegistrations =UserRegistration.createCriteria().list (params) {
		  
		  
		  if(params.userRegistrationId!=null && params.userRegistrationId?.toString().isLong() ) {
			  Long value=params.userRegistrationId as Long
			  
			  if (value!=0) {
			  eq('userRegistrationId',value)
			   }
			   
			  }
		  
		  
		  if (params.userRegistrationfullName!=null) {
		   ilike("userRegistrationfullName", "%${params.userRegistrationfullName}%")
		  }
		  
		  if (params.userRegistrationMName!=null) {
			  ilike("userRegistrationMName", "%${params.userRegistrationMName}%")
			 }
	  }
	  [userRegistrations:userRegistrations,counter:userRegistrations.size()]
	 
  }
  
  
  
  def addressListUserRegistrationForPlotOwnership() {
	  
	 params.max = Math.min(params.max ? params.int('max') : 5, 100)
	def addressInfos =AddressInfo.createCriteria().list (params) {
	 
	 if(params.adId!=null && params.adId?.toString().isLong() ) {
	  Long value=params.adId as Long
	  
	  if (value!=0) {
	  eq('adId',value)
	   }
	   
	  }
	
	if (params.adFirstName!=null) {
	 ilike("adFirstName", "%${params.adFirstName}%")
	}
	
	if (params.adMiddleName!=null) {
	 ilike("adMiddleName", "%${params.adMiddleName}%")
	}
	
	if (params.adLastName!=null) {
	 ilike("adLastName", "%${params.adLastName}%")
	}
	
	if (params.adNationalIdNumber!=null) {
	 ilike("adNationalIdNumber", "%${params.adNationalIdNumber}%")
	}
	
	if (params.adEMail!=null) {
	 ilike("adEMail", "%${params.adEMail}%")
	}
	
   }
	
	[addressInfos:addressInfos,counter:addressInfos.size()]
   }
  
  def addressListUserRegistrationForBuildingOwnership() {
	  
	 params.max = Math.min(params.max ? params.int('max') : 5, 100)
	def addressInfos =AddressInfo.createCriteria().list (params) {
	 
	 if(params.adId!=null && params.adId?.toString().isLong() ) {
	  Long value=params.adId as Long
	  
	  if (value!=0) {
	  eq('adId',value)
	   }
	   
	  }
	
	if (params.adFirstName!=null) {
	 ilike("adFirstName", "%${params.adFirstName}%")
	}
	
	if (params.adMiddleName!=null) {
	 ilike("adMiddleName", "%${params.adMiddleName}%")
	}
	
	if (params.adLastName!=null) {
	 ilike("adLastName", "%${params.adLastName}%")
	}
	
	if (params.adNationalIdNumber!=null) {
	 ilike("adNationalIdNumber", "%${params.adNationalIdNumber}%")
	}
	
	if (params.adEMail!=null) {
	 ilike("adEMail", "%${params.adEMail}%")
	}
	
   }
	
	[addressInfos:addressInfos,counter:addressInfos.size()]
   }
  
  def addressListUserRegistrationForUnitOwnership() {
	  
	 params.max = Math.min(params.max ? params.int('max') : 5, 100)
	def addressInfos =AddressInfo.createCriteria().list (params) {
	 
	 if(params.adId!=null && params.adId?.toString().isLong() ) {
	  Long value=params.adId as Long
	  
	  if (value!=0) {
	  eq('adId',value)
	   }
	   
	  }
	
	if (params.adFirstName!=null) {
	 ilike("adFirstName", "%${params.adFirstName}%")
	}
	
	if (params.adMiddleName!=null) {
	 ilike("adMiddleName", "%${params.adMiddleName}%")
	}
	
	if (params.adLastName!=null) {
	 ilike("adLastName", "%${params.adLastName}%")
	}
	
	if (params.adNationalIdNumber!=null) {
	 ilike("adNationalIdNumber", "%${params.adNationalIdNumber}%")
	}
	
	if (params.adEMail!=null) {
	 ilike("adEMail", "%${params.adEMail}%")
	}
	
   }
	
	[addressInfos:addressInfos,counter:addressInfos.size()]
   }
  
  
  def addressListUserRegistrationForFloorOwnership() {
	  
	 params.max = Math.min(params.max ? params.int('max') : 5, 100)
	def addressInfos =AddressInfo.createCriteria().list (params) {
	 
	 if(params.adId!=null && params.adId?.toString().isLong() ) {
	  Long value=params.adId as Long
	  
	  if (value!=0) {
	  eq('adId',value)
	   }
	   
	  }
	
	if (params.adFirstName!=null) {
	 ilike("adFirstName", "%${params.adFirstName}%")
	}
	
	if (params.adMiddleName!=null) {
	 ilike("adMiddleName", "%${params.adMiddleName}%")
	}
	
	if (params.adLastName!=null) {
	 ilike("adLastName", "%${params.adLastName}%")
	}
	
	if (params.adNationalIdNumber!=null) {
	 ilike("adNationalIdNumber", "%${params.adNationalIdNumber}%")
	}
	
	if (params.adEMail!=null) {
	 ilike("adEMail", "%${params.adEMail}%")
	}
	
   }
	
	[addressInfos:addressInfos,counter:addressInfos.size()]
   }
  
  
  def addressListUserRegistrationForBuildingAuthorization() {
	  
	 params.max = Math.min(params.max ? params.int('max') : 5, 100)
	def addressInfos =AddressInfo.createCriteria().list (params) {
	 
	 if(params.adId!=null && params.adId?.toString().isLong() ) {
	  Long value=params.adId as Long
	  
	  if (value!=0) {
	  eq('adId',value)
	   }
	   
	  }
	
	if (params.adFirstName!=null) {
	 ilike("adFirstName", "%${params.adFirstName}%")
	}
	
	if (params.adMiddleName!=null) {
	 ilike("adMiddleName", "%${params.adMiddleName}%")
	}
	
	if (params.adLastName!=null) {
	 ilike("adLastName", "%${params.adLastName}%")
	}
	
	if (params.adNationalIdNumber!=null) {
	 ilike("adNationalIdNumber", "%${params.adNationalIdNumber}%")
	}
	
	if (params.adEMail!=null) {
	 ilike("adEMail", "%${params.adEMail}%")
	}
	
   }
	
	[addressInfos:addressInfos,counter:addressInfos.size()]
   }
  
  def addressListUserRegistrationForFloorAuthorization() {
	  
	 params.max = Math.min(params.max ? params.int('max') : 5, 100)
	def addressInfos =AddressInfo.createCriteria().list (params) {
	 
	 if(params.adId!=null && params.adId?.toString().isLong() ) {
	  Long value=params.adId as Long
	  
	  if (value!=0) {
	  eq('adId',value)
	   }
	   
	  }
	
	if (params.adFirstName!=null) {
	 ilike("adFirstName", "%${params.adFirstName}%")
	}
	
	if (params.adMiddleName!=null) {
	 ilike("adMiddleName", "%${params.adMiddleName}%")
	}
	
	if (params.adLastName!=null) {
	 ilike("adLastName", "%${params.adLastName}%")
	}
	
	if (params.adNationalIdNumber!=null) {
	 ilike("adNationalIdNumber", "%${params.adNationalIdNumber}%")
	}
	
	if (params.adEMail!=null) {
	 ilike("adEMail", "%${params.adEMail}%")
	}
	
   }
	
	[addressInfos:addressInfos,counter:addressInfos.size()]
   }
  
  def addressListUserRegistrationForPlotAuthorization() {
	  
	 params.max = Math.min(params.max ? params.int('max') : 5, 100)
	def addressInfos =AddressInfo.createCriteria().list (params) {
	 
	 if(params.adId!=null && params.adId?.toString().isLong() ) {
	  Long value=params.adId as Long
	  
	  if (value!=0) {
	  eq('adId',value)
	   }
	   
	  }
	
	if (params.adFirstName!=null) {
	 ilike("adFirstName", "%${params.adFirstName}%")
	}
	
	if (params.adMiddleName!=null) {
	 ilike("adMiddleName", "%${params.adMiddleName}%")
	}
	
	if (params.adLastName!=null) {
	 ilike("adLastName", "%${params.adLastName}%")
	}
	
	if (params.adNationalIdNumber!=null) {
	 ilike("adNationalIdNumber", "%${params.adNationalIdNumber}%")
	}
	
	if (params.adEMail!=null) {
	 ilike("adEMail", "%${params.adEMail}%")
	}
	
   }
	
	[addressInfos:addressInfos,counter:addressInfos.size()]
   }
  
  
  def addressListUserRegistrationForUnitAuthorization() {
	  
	 params.max = Math.min(params.max ? params.int('max') : 5, 100)
	def addressInfos =AddressInfo.createCriteria().list (params) {
	 
	 if(params.adId!=null && params.adId?.toString().isLong() ) {
	  Long value=params.adId as Long
	  
	  if (value!=0) {
	  eq('adId',value)
	   }
	   
	  }
	
	if (params.adFirstName!=null) {
	 ilike("adFirstName", "%${params.adFirstName}%")
	}
	
	if (params.adMiddleName!=null) {
	 ilike("adMiddleName", "%${params.adMiddleName}%")
	}
	
	if (params.adLastName!=null) {
	 ilike("adLastName", "%${params.adLastName}%")
	}
	
	if (params.adNationalIdNumber!=null) {
	 ilike("adNationalIdNumber", "%${params.adNationalIdNumber}%")
	}
	
	if (params.adEMail!=null) {
	 ilike("adEMail", "%${params.adEMail}%")
	}
	
	if (params.auName!=null) {
		ilike("auName", "%${params.auName}%")
	   }
	
   }
	
	[addressInfos:addressInfos,counter:addressInfos.size()]
   }
  
  
  def addressListUserRegistrationForPlotUtility() {
	  
	 params.max = Math.min(params.max ? params.int('max') : 5, 100)
	def addressInfos =AddressInfo.createCriteria().list (params) {
	 
	 if(params.adId!=null && params.adId?.toString().isLong() ) {
	  Long value=params.adId as Long
	  
	  if (value!=0) {
	  eq('adId',value)
	   }
	   
	  }
	
	if (params.adFirstName!=null) {
	 ilike("adFirstName", "%${params.adFirstName}%")
	}
	
	if (params.adMiddleName!=null) {
	 ilike("adMiddleName", "%${params.adMiddleName}%")
	}
	
	if (params.adLastName!=null) {
	 ilike("adLastName", "%${params.adLastName}%")
	}
	
	if (params.adNationalIdNumber!=null) {
	 ilike("adNationalIdNumber", "%${params.adNationalIdNumber}%")
	}
	
	if (params.adEMail!=null) {
	 ilike("adEMail", "%${params.adEMail}%")
	}
	
	
	
   }
	
	[addressInfos:addressInfos,counter:addressInfos.size()]
   }
  
  def addressListUserRegistrationForBuildingUtility() {
	  
	 params.max = Math.min(params.max ? params.int('max') : 5, 100)
	def addressInfos =AddressInfo.createCriteria().list (params) {
	 
	 if(params.adId!=null && params.adId?.toString().isLong() ) {
	  Long value=params.adId as Long
	  
	  if (value!=0) {
	  eq('adId',value)
	   }
	   
	  }
	
	if (params.adFirstName!=null) {
	 ilike("adFirstName", "%${params.adFirstName}%")
	}
	
	if (params.adMiddleName!=null) {
	 ilike("adMiddleName", "%${params.adMiddleName}%")
	}
	
	if (params.adLastName!=null) {
	 ilike("adLastName", "%${params.adLastName}%")
	}
	
	if (params.adNationalIdNumber!=null) {
	 ilike("adNationalIdNumber", "%${params.adNationalIdNumber}%")
	}
	
	if (params.adEMail!=null) {
	 ilike("adEMail", "%${params.adEMail}%")
	}
	
	
	
   }
	
	[addressInfos:addressInfos,counter:addressInfos.size()]
   }
  
  def addressListUserRegistrationForFloorUtility() {
	  
	 params.max = Math.min(params.max ? params.int('max') : 5, 100)
	def addressInfos =AddressInfo.createCriteria().list (params) {
	 
	 if(params.adId!=null && params.adId?.toString().isLong() ) {
	  Long value=params.adId as Long
	  
	  if (value!=0) {
	  eq('adId',value)
	   }
	   
	  }
	
	if (params.adFirstName!=null) {
	 ilike("adFirstName", "%${params.adFirstName}%")
	}
	
	if (params.adMiddleName!=null) {
	 ilike("adMiddleName", "%${params.adMiddleName}%")
	}
	
	if (params.adLastName!=null) {
	 ilike("adLastName", "%${params.adLastName}%")
	}
	
	if (params.adNationalIdNumber!=null) {
	 ilike("adNationalIdNumber", "%${params.adNationalIdNumber}%")
	}
	
	if (params.adEMail!=null) {
	 ilike("adEMail", "%${params.adEMail}%")
	}
	
	
	
   }
	
	[addressInfos:addressInfos,counter:addressInfos.size()]
   }
  
  def addressListUserRegistrationForUnitUtility() {
	  
	 params.max = Math.min(params.max ? params.int('max') : 5, 100)
	def addressInfos =AddressInfo.createCriteria().list (params) {
	 
	 if(params.adId!=null && params.adId?.toString().isLong() ) {
	  Long value=params.adId as Long
	  
	  if (value!=0) {
	  eq('adId',value)
	   }
	   
	  }
	
	if (params.adFirstName!=null) {
	 ilike("adFirstName", "%${params.adFirstName}%")
	}
	
	if (params.adMiddleName!=null) {
	 ilike("adMiddleName", "%${params.adMiddleName}%")
	}
	
	if (params.adLastName!=null) {
	 ilike("adLastName", "%${params.adLastName}%")
	}
	
	if (params.adNationalIdNumber!=null) {
	 ilike("adNationalIdNumber", "%${params.adNationalIdNumber}%")
	}
	
	if (params.adEMail!=null) {
	 ilike("adEMail", "%${params.adEMail}%")
	}
	
	
	
   }
	
	[addressInfos:addressInfos,counter:addressInfos.size()]
   }
  
  def addressListUserRegistrationForUnitBilling() {
	  
	 params.max = Math.min(params.max ? params.int('max') : 5, 100)
	def addressInfos =AddressInfo.createCriteria().list (params) {
	 
	 if(params.adId!=null && params.adId?.toString().isLong() ) {
	  Long value=params.adId as Long
	  
	  if (value!=0) {
	  eq('adId',value)
	   }
	   
	  }
	
	if (params.adFirstName!=null) {
	 ilike("adFirstName", "%${params.adFirstName}%")
	}
	
	if (params.adMiddleName!=null) {
	 ilike("adMiddleName", "%${params.adMiddleName}%")
	}
	
	if (params.adLastName!=null) {
	 ilike("adLastName", "%${params.adLastName}%")
	}
	
	if (params.adNationalIdNumber!=null) {
	 ilike("adNationalIdNumber", "%${params.adNationalIdNumber}%")
	}
	
	if (params.adEMail!=null) {
	 ilike("adEMail", "%${params.adEMail}%")
	}
	
	
	
   }
	
	[addressInfos:addressInfos,counter:addressInfos.size()]
   }
  
  def addressListUserRegistrationForPlotBilling() {
	  
	 params.max = Math.min(params.max ? params.int('max') : 5, 100)
	def addressInfos =AddressInfo.createCriteria().list (params) {
	 
	 if(params.adId!=null && params.adId?.toString().isLong() ) {
	  Long value=params.adId as Long
	  
	  if (value!=0) {
	  eq('adId',value)
	   }
	   
	  }
	
	if (params.adFirstName!=null) {
	 ilike("adFirstName", "%${params.adFirstName}%")
	}
	
	if (params.adMiddleName!=null) {
	 ilike("adMiddleName", "%${params.adMiddleName}%")
	}
	
	if (params.adLastName!=null) {
	 ilike("adLastName", "%${params.adLastName}%")
	}
	
	if (params.adNationalIdNumber!=null) {
	 ilike("adNationalIdNumber", "%${params.adNationalIdNumber}%")
	}
	
	if (params.adEMail!=null) {
	 ilike("adEMail", "%${params.adEMail}%")
	}
	
	
	
   }
	
	[addressInfos:addressInfos,counter:addressInfos.size()]
   }
  def addressListUserRegistrationForBuildingBilling() {
	  
	 params.max = Math.min(params.max ? params.int('max') : 5, 100)
	def addressInfos =AddressInfo.createCriteria().list (params) {
	 
	 if(params.adId!=null && params.adId?.toString().isLong() ) {
	  Long value=params.adId as Long
	  
	  if (value!=0) {
	  eq('adId',value)
	   }
	   
	  }
	
	if (params.adFirstName!=null) {
	 ilike("adFirstName", "%${params.adFirstName}%")
	}
	
	if (params.adMiddleName!=null) {
	 ilike("adMiddleName", "%${params.adMiddleName}%")
	}
	
	if (params.adLastName!=null) {
	 ilike("adLastName", "%${params.adLastName}%")
	}
	
	if (params.adNationalIdNumber!=null) {
	 ilike("adNationalIdNumber", "%${params.adNationalIdNumber}%")
	}
	
	if (params.adEMail!=null) {
	 ilike("adEMail", "%${params.adEMail}%")
	}
	
	
	
   }
	
	[addressInfos:addressInfos,counter:addressInfos.size()]
   }
  
  def addressListUserRegistrationForFloorBilling() {
	  
	 params.max = Math.min(params.max ? params.int('max') : 5, 100)
	def addressInfos =AddressInfo.createCriteria().list (params) {
	 
	 if(params.adId!=null && params.adId?.toString().isLong() ) {
	  Long value=params.adId as Long
	  
	  if (value!=0) {
	  eq('adId',value)
	   }
	   
	  }
	
	if (params.adFirstName!=null) {
	 ilike("adFirstName", "%${params.adFirstName}%")
	}
	
	if (params.adMiddleName!=null) {
	 ilike("adMiddleName", "%${params.adMiddleName}%")
	}
	
	if (params.adLastName!=null) {
	 ilike("adLastName", "%${params.adLastName}%")
	}
	
	if (params.adNationalIdNumber!=null) {
	 ilike("adNationalIdNumber", "%${params.adNationalIdNumber}%")
	}
	
	if (params.adEMail!=null) {
	 ilike("adEMail", "%${params.adEMail}%")
	}
	
	
	
   }
	
	[addressInfos:addressInfos,counter:addressInfos.size()]
   }
  
  
  def addressListUserRegistrationForPlotPayment() {
	  
	 params.max = Math.min(params.max ? params.int('max') : 5, 100)
	def addressInfos =AddressInfo.createCriteria().list (params) {
	 
	 if(params.adId!=null && params.adId?.toString().isLong() ) {
	  Long value=params.adId as Long
	  
	  if (value!=0) {
	  eq('adId',value)
	   }
	   
	  }
	
	if (params.adFirstName!=null) {
	 ilike("adFirstName", "%${params.adFirstName}%")
	}
	
	if (params.adMiddleName!=null) {
	 ilike("adMiddleName", "%${params.adMiddleName}%")
	}
	
	if (params.adLastName!=null) {
	 ilike("adLastName", "%${params.adLastName}%")
	}
	
	if (params.adNationalIdNumber!=null) {
	 ilike("adNationalIdNumber", "%${params.adNationalIdNumber}%")
	}
	
	if (params.adEMail!=null) {
	 ilike("adEMail", "%${params.adEMail}%")
	}
	
	
	
   }
	
	[addressInfos:addressInfos,counter:addressInfos.size()]
   }
  
  def addressListUserRegistrationForFloorPayment() {
	  
	// params.max = Math.min(params.max ? params.int('max') : 5, 100)
	def addressInfos =AddressInfo.createCriteria().list (params) {
	 
	 if(params.adId!=null && params.adId?.toString().isLong() ) {
	  Long value=params.adId as Long
	  
	  if (value!=0) {
	  eq('adId',value)
	   }
	   
	  }
	
	if (params.adFirstName!=null) {
	 ilike("adFirstName", "%${params.adFirstName}%")
	}
	
	if (params.adMiddleName!=null) {
	 ilike("adMiddleName", "%${params.adMiddleName}%")
	}
	
	if (params.adLastName!=null) {
	 ilike("adLastName", "%${params.adLastName}%")
	}
	
	if (params.adNationalIdNumber!=null) {
	 ilike("adNationalIdNumber", "%${params.adNationalIdNumber}%")
	}
	
	if (params.adEMail!=null) {
	 ilike("adEMail", "%${params.adEMail}%")
	}
	
	
	
   }
	
	[addressInfos:addressInfos,counter:addressInfos.size()]
   }
  
  def addressListUserRegistrationForBuildingPayment() {
	  
	 params.max = Math.min(params.max ? params.int('max') : 5, 100)
	def addressInfos =AddressInfo.createCriteria().list (params) {
	 
	 if(params.adId!=null && params.adId?.toString().isLong() ) {
	  Long value=params.adId as Long
	  
	  if (value!=0) {
	  eq('adId',value)
	   }
	   
	  }
	
	if (params.adFirstName!=null) {
	 ilike("adFirstName", "%${params.adFirstName}%")
	}
	
	if (params.adMiddleName!=null) {
	 ilike("adMiddleName", "%${params.adMiddleName}%")
	}
	
	if (params.adLastName!=null) {
	 ilike("adLastName", "%${params.adLastName}%")
	}
	
	if (params.adNationalIdNumber!=null) {
	 ilike("adNationalIdNumber", "%${params.adNationalIdNumber}%")
	}
	
	if (params.adEMail!=null) {
	 ilike("adEMail", "%${params.adEMail}%")
	}
	
	
	
   }
	
	[addressInfos:addressInfos,counter:addressInfos.size()]
   }
  def addressListUserRegistrationForUnitPayment() {
	  
	 params.max = Math.min(params.max ? params.int('max') : 5, 100)
	def addressInfos =AddressInfo.createCriteria().list (params) {
	 
	 if(params.adId!=null && params.adId?.toString().isLong() ) {
	  Long value=params.adId as Long
	  
	  if (value!=0) {
	  eq('adId',value)
	   }
	   
	  }
	
	if (params.adFirstName!=null) {
	 ilike("adFirstName", "%${params.adFirstName}%")
	}
	
	if (params.adMiddleName!=null) {
	 ilike("adMiddleName", "%${params.adMiddleName}%")
	}
	
	if (params.adLastName!=null) {
	 ilike("adLastName", "%${params.adLastName}%")
	}
	
	if (params.adNationalIdNumber!=null) {
	 ilike("adNationalIdNumber", "%${params.adNationalIdNumber}%")
	}
	
	if (params.adEMail!=null) {
	 ilike("adEMail", "%${params.adEMail}%")
	}
	
	
	
   }
	
	[addressInfos:addressInfos,counter:addressInfos.size()]
   }
  
  
  def addressListUserRegistrationForPlot(AddressLocationInfo addressLocationInfoInstance) {
	  
	// params.max = Math.min(params.max ? params.int('max') : 10, 100)
	  
	def addressLocationInfos =AddressLocationInfo.createCriteria().list (params) {
	 
	 if(params.alId!=null && params.alId?.toString().isLong() ) {
	  Long value=params.alId as Long
	  
	  if (value!=0) {
	  eq('alId',value)
	   }
	   
	  }
	 
	 if (params.alDivisionName!=null) {
	  ilike("alDivisionName", "%${params.alDivisionName}%")
	 }
	 
	 if (params.alDistictName!=null) {
	  ilike("alDistictName", "%${params.alDistictName}%")
	 }
	 
	 if (params.alUpzillaOrThanaName!=null) {
	  ilike("alUpzillaOrThanaName", "%${params.alUpzillaOrThanaName}%")
	 }
	 
	 if (params.alUnionName!=null) {
	  ilike("alUnionName", "%${params.alUnionName}%")
	 }
	 
	 if (params.alRoadName!=null) {
	  ilike("alRoadName", "%${params.alRoadName}%")
	 }
	 if (params.alType!=null) {
	  ilike("alType", "%${params.alType}%")
	 }
	 
	}
	
	[addressLocationInfos:addressLocationInfos,counter:addressLocationInfos.size()]
   }
  
  def addressListUserRegistrationForBuilding(AddressLocationInfo addressLocationInfoInstance) {
	  
	// params.max = Math.min(params.max ? params.int('max') : 10, 100)
	  
	def addressLocationInfos =AddressLocationInfo.createCriteria().list (params) {
	 
	 if(params.alId!=null && params.alId?.toString().isLong() ) {
	  Long value=params.alId as Long
	  
	  if (value!=0) {
	  eq('alId',value)
	   }
	   
	  }
	 
	 if (params.alDivisionName!=null) {
	  ilike("alDivisionName", "%${params.alDivisionName}%")
	 }
	 
	 if (params.alDistictName!=null) {
	  ilike("alDistictName", "%${params.alDistictName}%")
	 }
	 
	 if (params.alUpzillaOrThanaName!=null) {
	  ilike("alUpzillaOrThanaName", "%${params.alUpzillaOrThanaName}%")
	 }
	 
	 if (params.alUnionName!=null) {
	  ilike("alUnionName", "%${params.alUnionName}%")
	 }
	 
	 if (params.alRoadName!=null) {
	  ilike("alRoadName", "%${params.alRoadName}%")
	 }
	 if (params.alType!=null) {
	  ilike("alType", "%${params.alType}%")
	 }
	 
	}
	
	[addressLocationInfos:addressLocationInfos,counter:addressLocationInfos.size()]
   }
  
  def addressListUserRegistrationForFloor(AddressLocationInfo addressLocationInfoInstance) {
	  
	// params.max = Math.min(params.max ? params.int('max') : 10, 100)
	  
	def addressLocationInfos =AddressLocationInfo.createCriteria().list (params) {
	 
	 if(params.alId!=null && params.alId?.toString().isLong() ) {
	  Long value=params.alId as Long
	  
	  if (value!=0) {
	  eq('alId',value)
	   }
	   
	  }
	 
	 if (params.alDivisionName!=null) {
	  ilike("alDivisionName", "%${params.alDivisionName}%")
	 }
	 
	 if (params.alDistictName!=null) {
	  ilike("alDistictName", "%${params.alDistictName}%")
	 }
	 
	 if (params.alUpzillaOrThanaName!=null) {
	  ilike("alUpzillaOrThanaName", "%${params.alUpzillaOrThanaName}%")
	 }
	 
	 if (params.alUnionName!=null) {
	  ilike("alUnionName", "%${params.alUnionName}%")
	 }
	 
	 if (params.alRoadName!=null) {
	  ilike("alRoadName", "%${params.alRoadName}%")
	 }
	 if (params.alType!=null) {
	  ilike("alType", "%${params.alType}%")
	 }
	 
	}
	
	[addressLocationInfos:addressLocationInfos,counter:addressLocationInfos.size()]
   }
  
  def addressListUserRegistrationForUnit(AddressLocationInfo addressLocationInfoInstance) {
	  
	// params.max = Math.min(params.max ? params.int('max') : 10, 100)
	  
	def addressLocationInfos =AddressLocationInfo.createCriteria().list (params) {
	 
	 if(params.alId!=null && params.alId?.toString().isLong() ) {
	  Long value=params.alId as Long
	  
	  if (value!=0) {
	  eq('alId',value)
	   }
	   
	  }
	 
	 if (params.alDivisionName!=null) {
	  ilike("alDivisionName", "%${params.alDivisionName}%")
	 }
	 
	 if (params.alDistictName!=null) {
	  ilike("alDistictName", "%${params.alDistictName}%")
	 }
	 
	 if (params.alUpzillaOrThanaName!=null) {
	  ilike("alUpzillaOrThanaName", "%${params.alUpzillaOrThanaName}%")
	 }
	 
	 if (params.alUnionName!=null) {
	  ilike("alUnionName", "%${params.alUnionName}%")
	 }
	 
	 if (params.alRoadName!=null) {
	  ilike("alRoadName", "%${params.alRoadName}%")
	 }
	 if (params.alType!=null) {
	  ilike("alType", "%${params.alType}%")
	 }
	 
	}
	
	[addressLocationInfos:addressLocationInfos,counter:addressLocationInfos.size()]
   }
  
  def addressListUserRegistrationForAddressLocation(AddressLocationInfo addressLocationInfoInstance) {
	  
	// params.max = Math.min(params.max ? params.int('max') : 10, 100)
	  
	def addressLocationInfos =AddressLocationInfo.createCriteria().list (params) {
	 
	 if(params.alId!=null && params.alId?.toString().isLong() ) {
	  Long value=params.alId as Long
	  
	  if (value!=0) {
	  eq('alId',value)
	   }
	   
	  }
	 
	 if (params.alDivisionName!=null) {
	  ilike("alDivisionName", "%${params.alDivisionName}%")
	 }
	 
	 if (params.alDistictName!=null) {
	  ilike("alDistictName", "%${params.alDistictName}%")
	 }
	 
	 if (params.alUpzillaOrThanaName!=null) {
	  ilike("alUpzillaOrThanaName", "%${params.alUpzillaOrThanaName}%")
	 }
	 
	 if (params.alUnionName!=null) {
	  ilike("alUnionName", "%${params.alUnionName}%")
	 }
	 
	 if (params.alRoadName!=null) {
	  ilike("alRoadName", "%${params.alRoadName}%")
	 }
	 if (params.alType!=null) {
	  ilike("alType", "%${params.alType}%")
	 }
	 
	}
	
	[addressLocationInfos:addressLocationInfos,counter:addressLocationInfos.size()]
   }
  
  
  def addressUserRegistrationForUserRegistration() {
	  
	 
	  def addressInfos =AddressInfo.createCriteria().list (params) {
	   
	   if(params.adId!=null && params.adId?.toString().isLong() ) {
		Long value=params.adId as Long
		
		if (value!=0) {
		eq('adId',value)
		 }
		 
		}
	   
	   if(params.adalId!=null && params.adalId?.toString().isLong() ) {
		Long value=params.adalId as Long
		
		if (value!=0) {
		eq('adalId',value)
		 }
		 
		}
	   if(params.adalId!=null && params.adalId?.toString().isLong() ) {
		   Long value=params.adalId as Long
		   
		   if (value!=0) {
		   eq('adalId',value)
			}
			
		   }
	   
	  if (params.adFirstName!=null) {
	   ilike("adFirstName", "%${params.adFirstName}%")
	  }
	  
	  if (params.adMiddleName!=null) {
	   ilike("adMiddleName", "%${params.adMiddleName}%")
	  }
	  
	  if (params.adLastName!=null) {
	   ilike("adLastName", "%${params.adLastName}%")
	  }
	  
	  if (params.adNationalIdNumber!=null) {
	   ilike("adNationalIdNumber", "%${params.adNationalIdNumber}%")
	  }
	  
	  if (params.adEMail!=null) {
	   ilike("adEMail", "%${params.adEMail}%")
	  }
	  
	 }
	  
	  [addressInfos:addressInfos,counter:addressInfos.size()]
	 }
	
}