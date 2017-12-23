package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FloorInfoPaymentInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		redirect(controller: "floorInfoPaymentInfo", action: "list")
	}
 
 
 def list() {
  
 
  def floorInfoPaymentInfoList = FloorInfoPaymentInfo.createCriteria().list (params) {
   
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
  [floorInfoPaymentInfoList: floorInfoPaymentInfoList, floorInfoPaymentInfoListTotal:floorInfoPaymentInfoList.size()]
 }
 

    def show(FloorInfoPaymentInfo floorInfoPaymentInfoInstance) {
        respond floorInfoPaymentInfoInstance
    }
	
	def viewImageLayoutPaymentCopy(FloorInfoPaymentInfo floorInfoPaymentInfoInstance) {
		response.outputStream << floorInfoPaymentInfoInstance.paCopy
		response.outputStream.flush()
		}


    def create() {
        respond new FloorInfoPaymentInfo(params)
    }

    @Transactional
    def save(FloorInfoPaymentInfo floorInfoPaymentInfoInstance) {
        if (floorInfoPaymentInfoInstance == null) {
            notFound()
            return
        }

        if (floorInfoPaymentInfoInstance.hasErrors()) {
            respond floorInfoPaymentInfoInstance.errors, view:'create'
            return
        }

        floorInfoPaymentInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'floorInfoPaymentInfo.label', default: 'FloorInfoPaymentInfo'), floorInfoPaymentInfoInstance.id])
                redirect floorInfoPaymentInfoInstance
            }
            '*' { respond floorInfoPaymentInfoInstance, [status: CREATED] }
        }
    }

    def edit(FloorInfoPaymentInfo floorInfoPaymentInfoInstance) {
        respond floorInfoPaymentInfoInstance
    }

    @Transactional
    def update(FloorInfoPaymentInfo floorInfoPaymentInfoInstance) {
        if (floorInfoPaymentInfoInstance == null) {
            notFound()
            return
        }

        if (floorInfoPaymentInfoInstance.hasErrors()) {
            respond floorInfoPaymentInfoInstance.errors, view:'edit'
            return
        }

        floorInfoPaymentInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FloorInfoPaymentInfo.label', default: 'FloorInfoPaymentInfo'), floorInfoPaymentInfoInstance.id])
                redirect floorInfoPaymentInfoInstance
            }
            '*'{ respond floorInfoPaymentInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FloorInfoPaymentInfo floorInfoPaymentInfoInstance) {

        if (floorInfoPaymentInfoInstance == null) {
            notFound()
            return
        }

        floorInfoPaymentInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FloorInfoPaymentInfo.label', default: 'FloorInfoPaymentInfo'), floorInfoPaymentInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'floorInfoPaymentInfo.label', default: 'FloorInfoPaymentInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
