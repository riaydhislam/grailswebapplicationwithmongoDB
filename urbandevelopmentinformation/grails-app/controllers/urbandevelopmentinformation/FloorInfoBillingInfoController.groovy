package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FloorInfoBillingInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

     def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        redirect(controller: "floorInfoBillingInfo", action: "list")
    }
 
 def list() {
  
 
  def floorInfoBillingInfoList = FloorInfoBillingInfo.createCriteria().list (params) {
   
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
 
  [floorInfoBillingInfoList: floorInfoBillingInfoList , floorInfoBillingInfoListTotal: floorInfoBillingInfoList.size()]
 }



    def show(FloorInfoBillingInfo floorInfoBillingInfoInstance) {
        respond floorInfoBillingInfoInstance
    }
	
	def viewImageLayoutPrintCopy(FloorInfoBillingInfo floorInfoBillingInfoInstance) {
		response.outputStream << floorInfoBillingInfoInstance.biPrintCopy
		response.outputStream.flush()
		}

    def create() {
        respond new FloorInfoBillingInfo(params)
    }

    @Transactional
    def save(FloorInfoBillingInfo floorInfoBillingInfoInstance) {
        if (floorInfoBillingInfoInstance == null) {
            notFound()
            return
        }

        if (floorInfoBillingInfoInstance.hasErrors()) {
            respond floorInfoBillingInfoInstance.errors, view:'create'
            return
        }

        floorInfoBillingInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'floorInfoBillingInfo.label', default: 'FloorInfoBillingInfo'), floorInfoBillingInfoInstance.id])
                redirect floorInfoBillingInfoInstance
            }
            '*' { respond floorInfoBillingInfoInstance, [status: CREATED] }
        }
    }

    def edit(FloorInfoBillingInfo floorInfoBillingInfoInstance) {
        respond floorInfoBillingInfoInstance
    }

    @Transactional
    def update(FloorInfoBillingInfo floorInfoBillingInfoInstance) {
        if (floorInfoBillingInfoInstance == null) {
            notFound()
            return
        }

        if (floorInfoBillingInfoInstance.hasErrors()) {
            respond floorInfoBillingInfoInstance.errors, view:'edit'
            return
        }

        floorInfoBillingInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FloorInfoBillingInfo.label', default: 'FloorInfoBillingInfo'), floorInfoBillingInfoInstance.id])
                redirect floorInfoBillingInfoInstance
            }
            '*'{ respond floorInfoBillingInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FloorInfoBillingInfo floorInfoBillingInfoInstance) {

        if (floorInfoBillingInfoInstance == null) {
            notFound()
            return
        }

        floorInfoBillingInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FloorInfoBillingInfo.label', default: 'FloorInfoBillingInfo'), floorInfoBillingInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'floorInfoBillingInfo.label', default: 'FloorInfoBillingInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
