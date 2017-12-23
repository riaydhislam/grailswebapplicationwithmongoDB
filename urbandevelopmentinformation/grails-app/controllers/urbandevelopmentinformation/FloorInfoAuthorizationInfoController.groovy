package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FloorInfoAuthorizationInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        redirect(controller: "floorInfoAuthorizationInfo", action: "list")
    }
 
 def list() {
  
 
  def floorInfoAuthorizationInfoList = FloorInfoAuthorizationInfo.createCriteria().list (params) {
   
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
 
  [floorInfoAuthorizationInfoList: floorInfoAuthorizationInfoList , floorInfoAuthorizationInfoListTotal: floorInfoAuthorizationInfoList.size()]
 }



    def show(FloorInfoAuthorizationInfo floorInfoAuthorizationInfoInstance) {
        respond floorInfoAuthorizationInfoInstance
    }
	
	def viewImageLayoutApplicationCopy (FloorInfoAuthorizationInfo floorInfoAuthorizationInfoInstance) {
		response.outputStream << floorInfoAuthorizationInfoInstance.auApplicationCopy
		response.outputStream.flush()
		}
	
	def viewImageLayoutauApprovedCopy (FloorInfoAuthorizationInfo floorInfoAuthorizationInfoInstance) {
		response.outputStream << floorInfoAuthorizationInfoInstance.auApprovedCopy
		response.outputStream.flush()
		}

    def create() {
        respond new FloorInfoAuthorizationInfo(params)
    }

    @Transactional
    def save(FloorInfoAuthorizationInfo floorInfoAuthorizationInfoInstance) {
        if (floorInfoAuthorizationInfoInstance == null) {
            notFound()
            return
        }

        if (floorInfoAuthorizationInfoInstance.hasErrors()) {
            respond floorInfoAuthorizationInfoInstance.errors, view:'create'
            return
        }

        floorInfoAuthorizationInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'floorInfoAuthorizationInfo.label', default: 'FloorInfoAuthorizationInfo'), floorInfoAuthorizationInfoInstance.id])
                redirect floorInfoAuthorizationInfoInstance
            }
            '*' { respond floorInfoAuthorizationInfoInstance, [status: CREATED] }
        }
    }

    def edit(FloorInfoAuthorizationInfo floorInfoAuthorizationInfoInstance) {
        respond floorInfoAuthorizationInfoInstance
    }

    @Transactional
    def update(FloorInfoAuthorizationInfo floorInfoAuthorizationInfoInstance) {
        if (floorInfoAuthorizationInfoInstance == null) {
            notFound()
            return
        }

        if (floorInfoAuthorizationInfoInstance.hasErrors()) {
            respond floorInfoAuthorizationInfoInstance.errors, view:'edit'
            return
        }

        floorInfoAuthorizationInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FloorInfoAuthorizationInfo.label', default: 'FloorInfoAuthorizationInfo'), floorInfoAuthorizationInfoInstance.id])
                redirect floorInfoAuthorizationInfoInstance
            }
            '*'{ respond floorInfoAuthorizationInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FloorInfoAuthorizationInfo floorInfoAuthorizationInfoInstance) {

        if (floorInfoAuthorizationInfoInstance == null) {
            notFound()
            return
        }

        floorInfoAuthorizationInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FloorInfoAuthorizationInfo.label', default: 'FloorInfoAuthorizationInfo'), floorInfoAuthorizationInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'floorInfoAuthorizationInfo.label', default: 'FloorInfoAuthorizationInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
