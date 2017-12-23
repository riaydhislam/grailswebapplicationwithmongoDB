package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UnitInfoAuthorizationInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        redirect(controller: "unitInfoAuthorizationInfo", action: "list")
    }
 
 def list() {
  
 
  def unitInfoAuthorizationInfoList = UnitInfoAuthorizationInfo.createCriteria().list (params) {
   
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
 
  [unitInfoAuthorizationInfoList:unitInfoAuthorizationInfoList , unitInfoAuthorizationInfoListTotal: unitInfoAuthorizationInfoList.size()]
 }



    def show(UnitInfoAuthorizationInfo unitInfoAuthorizationInfoInstance) {
        respond unitInfoAuthorizationInfoInstance
    }
	
	def viewImageLayoutApplicationCopy (UnitInfoAuthorizationInfo unitInfoAuthorizationInfoInstance) {
		response.outputStream << unitInfoAuthorizationInfoInstance.auApplicationCopy
		response.outputStream.flush()
		}
	
	def viewImageLayoutauApprovedCopy (UnitInfoAuthorizationInfo unitInfoAuthorizationInfoInstance) {
		response.outputStream << unitInfoAuthorizationInfoInstance.auApprovedCopy
		response.outputStream.flush()
		}

    def create() {
        respond new UnitInfoAuthorizationInfo(params)
    }

    @Transactional
    def save(UnitInfoAuthorizationInfo unitInfoAuthorizationInfoInstance) {
        if (unitInfoAuthorizationInfoInstance == null) {
            notFound()
            return
        }

        if (unitInfoAuthorizationInfoInstance.hasErrors()) {
            respond unitInfoAuthorizationInfoInstance.errors, view:'create'
            return
        }

        unitInfoAuthorizationInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'unitInfoAuthorizationInfo.label', default: 'UnitInfoAuthorizationInfo'), unitInfoAuthorizationInfoInstance.id])
                redirect unitInfoAuthorizationInfoInstance
            }
            '*' { respond unitInfoAuthorizationInfoInstance, [status: CREATED] }
        }
    }

    def edit(UnitInfoAuthorizationInfo unitInfoAuthorizationInfoInstance) {
        respond unitInfoAuthorizationInfoInstance
    }

    @Transactional
    def update(UnitInfoAuthorizationInfo unitInfoAuthorizationInfoInstance) {
        if (unitInfoAuthorizationInfoInstance == null) {
            notFound()
            return
        }

        if (unitInfoAuthorizationInfoInstance.hasErrors()) {
            respond unitInfoAuthorizationInfoInstance.errors, view:'edit'
            return
        }

        unitInfoAuthorizationInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UnitInfoAuthorizationInfo.label', default: 'UnitInfoAuthorizationInfo'), unitInfoAuthorizationInfoInstance.id])
                redirect unitInfoAuthorizationInfoInstance
            }
            '*'{ respond unitInfoAuthorizationInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UnitInfoAuthorizationInfo unitInfoAuthorizationInfoInstance) {

        if (unitInfoAuthorizationInfoInstance == null) {
            notFound()
            return
        }

        unitInfoAuthorizationInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UnitInfoAuthorizationInfo.label', default: 'UnitInfoAuthorizationInfo'), unitInfoAuthorizationInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'unitInfoAuthorizationInfo.label', default: 'UnitInfoAuthorizationInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
