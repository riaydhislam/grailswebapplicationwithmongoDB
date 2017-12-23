package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FloorInfoUtilityInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        redirect(controller: "floorInfoUtilityInfo", action: "list")
    }
 
 
 
 def list() {
  
 
  def floorInfoUtilityInfoList = FloorInfoUtilityInfo.createCriteria().list (params) {
   
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
 
  [floorInfoUtilityInfoList: floorInfoUtilityInfoList, floorInfoUtilityInfoListTotal: floorInfoUtilityInfoList.size()]
 }


    def show(FloorInfoUtilityInfo floorInfoUtilityInfoInstance) {
        respond floorInfoUtilityInfoInstance
    }
	
	def viewImageLayoutUtil (FloorInfoUtilityInfo floorInfoUtilityInfoInstance) {
		response.outputStream << floorInfoUtilityInfoInstance.utTypePic
		response.outputStream.flush()
		}

    def create() {
        respond new FloorInfoUtilityInfo(params)
    }

    @Transactional
    def save(FloorInfoUtilityInfo floorInfoUtilityInfoInstance) {
        if (floorInfoUtilityInfoInstance == null) {
            notFound()
            return
        }

        if (floorInfoUtilityInfoInstance.hasErrors()) {
            respond floorInfoUtilityInfoInstance.errors, view:'create'
            return
        }

        floorInfoUtilityInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'floorInfoUtilityInfo.label', default: 'FloorInfoUtilityInfo'), floorInfoUtilityInfoInstance.id])
                redirect floorInfoUtilityInfoInstance
            }
            '*' { respond floorInfoUtilityInfoInstance, [status: CREATED] }
        }
    }

    def edit(FloorInfoUtilityInfo floorInfoUtilityInfoInstance) {
        respond floorInfoUtilityInfoInstance
    }

    @Transactional
    def update(FloorInfoUtilityInfo floorInfoUtilityInfoInstance) {
        if (floorInfoUtilityInfoInstance == null) {
            notFound()
            return
        }

        if (floorInfoUtilityInfoInstance.hasErrors()) {
            respond floorInfoUtilityInfoInstance.errors, view:'edit'
            return
        }

        floorInfoUtilityInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FloorInfoUtilityInfo.label', default: 'FloorInfoUtilityInfo'), floorInfoUtilityInfoInstance.id])
                redirect floorInfoUtilityInfoInstance
            }
            '*'{ respond floorInfoUtilityInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FloorInfoUtilityInfo floorInfoUtilityInfoInstance) {

        if (floorInfoUtilityInfoInstance == null) {
            notFound()
            return
        }

        floorInfoUtilityInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FloorInfoUtilityInfo.label', default: 'FloorInfoUtilityInfo'), floorInfoUtilityInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'floorInfoUtilityInfo.label', default: 'FloorInfoUtilityInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
