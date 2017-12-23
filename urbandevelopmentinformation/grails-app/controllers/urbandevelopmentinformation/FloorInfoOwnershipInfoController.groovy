package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FloorInfoOwnershipInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

     def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		redirect(controller: "floorInfoOwnershipInfo", action: "list")
	}
 
 
 def list() {
  
 
  def floorInfoOwnershipInfoList = FloorInfoOwnershipInfo.createCriteria().list (params) {
   
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
  [floorInfoOwnershipInfoList:floorInfoOwnershipInfoList, floorInfoOwnershipInfoListTotal:floorInfoOwnershipInfoList.size()]
 }
 

    def show(FloorInfoOwnershipInfo floorInfoOwnershipInfoInstance) {
        respond floorInfoOwnershipInfoInstance
    }

    def create() {
        respond new FloorInfoOwnershipInfo(params)
    }

    @Transactional
    def save(FloorInfoOwnershipInfo floorInfoOwnershipInfoInstance) {
        if (floorInfoOwnershipInfoInstance == null) {
            notFound()
            return
        }

        if (floorInfoOwnershipInfoInstance.hasErrors()) {
            respond floorInfoOwnershipInfoInstance.errors, view:'create'
            return
        }

        floorInfoOwnershipInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'floorInfoOwnershipInfo.label', default: 'FloorInfoOwnershipInfo'), floorInfoOwnershipInfoInstance.id])
                redirect floorInfoOwnershipInfoInstance
            }
            '*' { respond floorInfoOwnershipInfoInstance, [status: CREATED] }
        }
    }

    def edit(FloorInfoOwnershipInfo floorInfoOwnershipInfoInstance) {
        respond floorInfoOwnershipInfoInstance
    }

    @Transactional
    def update(FloorInfoOwnershipInfo floorInfoOwnershipInfoInstance) {
        if (floorInfoOwnershipInfoInstance == null) {
            notFound()
            return
        }

        if (floorInfoOwnershipInfoInstance.hasErrors()) {
            respond floorInfoOwnershipInfoInstance.errors, view:'edit'
            return
        }

        floorInfoOwnershipInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FloorInfoOwnershipInfo.label', default: 'FloorInfoOwnershipInfo'), floorInfoOwnershipInfoInstance.id])
                redirect floorInfoOwnershipInfoInstance
            }
            '*'{ respond floorInfoOwnershipInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FloorInfoOwnershipInfo floorInfoOwnershipInfoInstance) {

        if (floorInfoOwnershipInfoInstance == null) {
            notFound()
            return
        }

        floorInfoOwnershipInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FloorInfoOwnershipInfo.label', default: 'FloorInfoOwnershipInfo'), floorInfoOwnershipInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'floorInfoOwnershipInfo.label', default: 'FloorInfoOwnershipInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
