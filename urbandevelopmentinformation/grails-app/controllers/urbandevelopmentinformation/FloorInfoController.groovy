package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FloorInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

   def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        redirect(controller: "floorInfo", action: "listFloorForMapVisualization")
    }
 
 def list() {
  
  def floorInfoList = FloorInfo.createCriteria().list (params) {
   
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
   
   if(params.flAddressId!=null && params.flAddressId?.toString().isLong() ) {
	   Long value=params.flAddressId as Long
	   
	   if (value!=0) {
	   eq('flAddressId',value)
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
 
  [floorInfoInstanceList: floorInfoList, floorInfoTotal: floorInfoList.size()]
 }
 
 
 
 def listFloorForMapVisualization() {
  
  def floorInfoList = FloorInfo.createCriteria().list (params) {
   
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
 
  [floorInfoInstanceList: floorInfoList, floorInfoTotal: floorInfoList.size()]
 }

    def show(FloorInfo floorInfoInstance) {
        respond floorInfoInstance
    }
	
	def viewImageFloorLayout (FloorInfo floorInfoInstance) {
		response.outputStream << floorInfoInstance.flLayoutPicture
		response.outputStream.flush()
		}

    def create() {
        respond new FloorInfo(params)
    }

    @Transactional
    def save(FloorInfo floorInfoInstance) {
        if (floorInfoInstance == null) {
            notFound()
            return
        }

        if (floorInfoInstance.hasErrors()) {
            respond floorInfoInstance.errors, view:'create'
            return
        }

        floorInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'floorInfo.label', default: 'FloorInfo'), floorInfoInstance.id])
                redirect floorInfoInstance
            }
            '*' { respond floorInfoInstance, [status: CREATED] }
        }
    }

    def edit(FloorInfo floorInfoInstance) {
        respond floorInfoInstance
    }

    @Transactional
    def update(FloorInfo floorInfoInstance) {
        if (floorInfoInstance == null) {
            notFound()
            return
        }

        if (floorInfoInstance.hasErrors()) {
            respond floorInfoInstance.errors, view:'edit'
            return
        }

        floorInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FloorInfo.label', default: 'FloorInfo'), floorInfoInstance.id])
                redirect floorInfoInstance
            }
            '*'{ respond floorInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FloorInfo floorInfoInstance) {

        if (floorInfoInstance == null) {
            notFound()
            return
        }

        floorInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FloorInfo.label', default: 'FloorInfo'), floorInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'floorInfo.label', default: 'FloorInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
