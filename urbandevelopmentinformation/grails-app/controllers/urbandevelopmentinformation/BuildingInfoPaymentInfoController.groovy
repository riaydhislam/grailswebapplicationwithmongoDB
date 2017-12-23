package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BuildingInfoPaymentInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

   def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		redirect(controller: "buildingInfoPaymentInfo", action: "list")
	}
 
 
 def list() {
  
 
  def buildingInfoPaymentInfoList = BuildingInfoPaymentInfo.createCriteria().list (params) {
   
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
  [buildingInfoPaymentInfoList: buildingInfoPaymentInfoList, buildingInfoPaymentInfoListTotal:buildingInfoPaymentInfoList.size()]
 }
 

    def show(BuildingInfoPaymentInfo buildingInfoPaymentInfoInstance) {
        respond buildingInfoPaymentInfoInstance
    }
	
	def viewImageLayoutPaymentCopy(BuildingInfoPaymentInfo buildingInfoPaymentInfoInstance) {
		response.outputStream << buildingInfoPaymentInfoInstance.paCopy
		response.outputStream.flush()
		}

    def create() {
        respond new BuildingInfoPaymentInfo(params)
    }

    @Transactional
    def save(BuildingInfoPaymentInfo buildingInfoPaymentInfoInstance) {
        if (buildingInfoPaymentInfoInstance == null) {
            notFound()
            return
        }

        if (buildingInfoPaymentInfoInstance.hasErrors()) {
            respond buildingInfoPaymentInfoInstance.errors, view:'create'
            return
        }

        buildingInfoPaymentInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'buildingInfoPaymentInfo.label', default: 'BuildingInfoPaymentInfo'), buildingInfoPaymentInfoInstance.id])
                redirect buildingInfoPaymentInfoInstance
            }
            '*' { respond buildingInfoPaymentInfoInstance, [status: CREATED] }
        }
    }

    def edit(BuildingInfoPaymentInfo buildingInfoPaymentInfoInstance) {
        respond buildingInfoPaymentInfoInstance
    }

    @Transactional
    def update(BuildingInfoPaymentInfo buildingInfoPaymentInfoInstance) {
        if (buildingInfoPaymentInfoInstance == null) {
            notFound()
            return
        }

        if (buildingInfoPaymentInfoInstance.hasErrors()) {
            respond buildingInfoPaymentInfoInstance.errors, view:'edit'
            return
        }

        buildingInfoPaymentInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'BuildingInfoPaymentInfo.label', default: 'BuildingInfoPaymentInfo'), buildingInfoPaymentInfoInstance.id])
                redirect buildingInfoPaymentInfoInstance
            }
            '*'{ respond buildingInfoPaymentInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(BuildingInfoPaymentInfo buildingInfoPaymentInfoInstance) {

        if (buildingInfoPaymentInfoInstance == null) {
            notFound()
            return
        }

        buildingInfoPaymentInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'BuildingInfoPaymentInfo.label', default: 'BuildingInfoPaymentInfo'), buildingInfoPaymentInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'buildingInfoPaymentInfo.label', default: 'BuildingInfoPaymentInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
