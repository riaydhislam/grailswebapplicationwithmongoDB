package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BuildingInfoAuthorizationInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        redirect(controller: "buildingInfoAuthorizationInfo", action: "list")
    }
 
 def list() {
  
 
  def buildingInfoAuthorizationInfoList = BuildingInfoAuthorizationInfo.createCriteria().list (params) {
   
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
 
  [buildingInfoAuthorizationInfoList: buildingInfoAuthorizationInfoList , buildingInfoAuthorizationInfoListTotal: buildingInfoAuthorizationInfoList.size()]
 }



    def show(BuildingInfoAuthorizationInfo buildingInfoAuthorizationInfoInstance) {
        respond buildingInfoAuthorizationInfoInstance
    }
	def viewImageApplicationCopy (BuildingInfoAuthorizationInfo buildingInfoAuthorizationInfoInstance) {
		response.outputStream << buildingInfoAuthorizationInfoInstance.auApplicationCopy
		response.outputStream.flush()
		}
		
	   def viewImageApprovedCopy (BuildingInfoAuthorizationInfo buildingInfoAuthorizationInfoInstance) {
		response.outputStream << buildingInfoAuthorizationInfoInstance.auApprovedCopy
		response.outputStream.flush()
		}
	   
    def create() {
        respond new BuildingInfoAuthorizationInfo(params)
    }

    @Transactional
    def save(BuildingInfoAuthorizationInfo buildingInfoAuthorizationInfoInstance) {
        if (buildingInfoAuthorizationInfoInstance == null) {
            notFound()
            return
        }

        if (buildingInfoAuthorizationInfoInstance.hasErrors()) {
            respond buildingInfoAuthorizationInfoInstance.errors, view:'create'
            return
        }

        buildingInfoAuthorizationInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'buildingInfoAuthorizationInfo.label', default: 'BuildingInfoAuthorizationInfo'), buildingInfoAuthorizationInfoInstance.id])
                redirect buildingInfoAuthorizationInfoInstance
            }
            '*' { respond buildingInfoAuthorizationInfoInstance, [status: CREATED] }
        }
    }

    def edit(BuildingInfoAuthorizationInfo buildingInfoAuthorizationInfoInstance) {
        respond buildingInfoAuthorizationInfoInstance
    }

    @Transactional
    def update(BuildingInfoAuthorizationInfo buildingInfoAuthorizationInfoInstance) {
        if (buildingInfoAuthorizationInfoInstance == null) {
            notFound()
            return
        }

        if (buildingInfoAuthorizationInfoInstance.hasErrors()) {
            respond buildingInfoAuthorizationInfoInstance.errors, view:'edit'
            return
        }

        buildingInfoAuthorizationInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'BuildingInfoAuthorizationInfo.label', default: 'BuildingInfoAuthorizationInfo'), buildingInfoAuthorizationInfoInstance.id])
                redirect buildingInfoAuthorizationInfoInstance
            }
            '*'{ respond buildingInfoAuthorizationInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(BuildingInfoAuthorizationInfo buildingInfoAuthorizationInfoInstance) {

        if (buildingInfoAuthorizationInfoInstance == null) {
            notFound()
            return
        }

        buildingInfoAuthorizationInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'BuildingInfoAuthorizationInfo.label', default: 'BuildingInfoAuthorizationInfo'), buildingInfoAuthorizationInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'buildingInfoAuthorizationInfo.label', default: 'BuildingInfoAuthorizationInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
