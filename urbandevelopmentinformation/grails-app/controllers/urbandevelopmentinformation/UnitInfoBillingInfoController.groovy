package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UnitInfoBillingInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        redirect(controller: "unitInfoBillingInfo", action: "list")
    }
 
 def list() {
  
 
  def unitInfoBillingInfoList = UnitInfoBillingInfo.createCriteria().list (params) {
   
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
 
  [unitInfoBillingInfoList: unitInfoBillingInfoList , unitInfoBillingInfoListTotal: unitInfoBillingInfoList.size()]
 }



    def show(UnitInfoBillingInfo unitInfoBillingInfoInstance) {
        respond unitInfoBillingInfoInstance
    }
	
	def viewImageLayoutPrintCopy(UnitInfoBillingInfo unitInfoBillingInfoInstance) {
		response.outputStream << unitInfoBillingInfoInstance.biPrintCopy
		response.outputStream.flush()
		}

    def create() {
        respond new UnitInfoBillingInfo(params)
    }

    @Transactional
    def save(UnitInfoBillingInfo unitInfoBillingInfoInstance) {
        if (unitInfoBillingInfoInstance == null) {
            notFound()
            return
        }

        if (unitInfoBillingInfoInstance.hasErrors()) {
            respond unitInfoBillingInfoInstance.errors, view:'create'
            return
        }

        unitInfoBillingInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'unitInfoBillingInfo.label', default: 'UnitInfoBillingInfo'), unitInfoBillingInfoInstance.id])
                redirect unitInfoBillingInfoInstance
            }
            '*' { respond unitInfoBillingInfoInstance, [status: CREATED] }
        }
    }

    def edit(UnitInfoBillingInfo unitInfoBillingInfoInstance) {
        respond unitInfoBillingInfoInstance
    }

    @Transactional
    def update(UnitInfoBillingInfo unitInfoBillingInfoInstance) {
        if (unitInfoBillingInfoInstance == null) {
            notFound()
            return
        }

        if (unitInfoBillingInfoInstance.hasErrors()) {
            respond unitInfoBillingInfoInstance.errors, view:'edit'
            return
        }

        unitInfoBillingInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UnitInfoBillingInfo.label', default: 'UnitInfoBillingInfo'), unitInfoBillingInfoInstance.id])
                redirect unitInfoBillingInfoInstance
            }
            '*'{ respond unitInfoBillingInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UnitInfoBillingInfo unitInfoBillingInfoInstance) {

        if (unitInfoBillingInfoInstance == null) {
            notFound()
            return
        }

        unitInfoBillingInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UnitInfoBillingInfo.label', default: 'UnitInfoBillingInfo'), unitInfoBillingInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'unitInfoBillingInfo.label', default: 'UnitInfoBillingInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
