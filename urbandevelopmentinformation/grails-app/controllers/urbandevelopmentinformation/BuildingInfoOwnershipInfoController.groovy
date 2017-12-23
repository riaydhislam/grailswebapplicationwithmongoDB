package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BuildingInfoOwnershipInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		redirect(controller: "buildingInfoOwnershipInfo", action: "list")
	}
 
 
 def list() {
  
 
  def buildingInfoOwnershipInfoList = BuildingInfoOwnershipInfo.createCriteria().list (params) {
   
   if(params.owId!=null && params.owId?.toString().isLong() ) {
	Long value=params.owId as Long
	
	if (value!=0) {
	eq('owId',value)
	 }
	 
	}
   
   
   if(params.owBuId!=null && params.owBuId?.toString().isLong() ) {
	Long value=params.owBuId as Long
	
	if (value!=0) {
	eq('owBuId',value)
	 }
	 
	}
   
   if (params.owFullName!=null) {
	ilike("owFullName", "%${params.owFullName}%")
   }
   
   

  }
  [buildingInfoOwnershipInfoList:buildingInfoOwnershipInfoList, buildingInfoOwnershipInfoListTotal:buildingInfoOwnershipInfoList.size()]
 }
 

    def show(BuildingInfoOwnershipInfo buildingInfoOwnershipInfoInstance) {
        respond buildingInfoOwnershipInfoInstance
    }

    def create() {
        respond new BuildingInfoOwnershipInfo(params)
    }

    @Transactional
    def save(BuildingInfoOwnershipInfo buildingInfoOwnershipInfoInstance) {
        if (buildingInfoOwnershipInfoInstance == null) {
            notFound()
            return
        }

        if (buildingInfoOwnershipInfoInstance.hasErrors()) {
            respond buildingInfoOwnershipInfoInstance.errors, view:'create'
            return
        }

        buildingInfoOwnershipInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'buildingInfoOwnershipInfo.label', default: 'BuildingInfoOwnershipInfo'), buildingInfoOwnershipInfoInstance.id])
                redirect buildingInfoOwnershipInfoInstance
            }
            '*' { respond buildingInfoOwnershipInfoInstance, [status: CREATED] }
        }
    }

    def edit(BuildingInfoOwnershipInfo buildingInfoOwnershipInfoInstance) {
        respond buildingInfoOwnershipInfoInstance
    }

    @Transactional
    def update(BuildingInfoOwnershipInfo buildingInfoOwnershipInfoInstance) {
        if (buildingInfoOwnershipInfoInstance == null) {
            notFound()
            return
        }

        if (buildingInfoOwnershipInfoInstance.hasErrors()) {
            respond buildingInfoOwnershipInfoInstance.errors, view:'edit'
            return
        }

        buildingInfoOwnershipInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'BuildingInfoOwnershipInfo.label', default: 'BuildingInfoOwnershipInfo'), buildingInfoOwnershipInfoInstance.id])
                redirect buildingInfoOwnershipInfoInstance
            }
            '*'{ respond buildingInfoOwnershipInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(BuildingInfoOwnershipInfo buildingInfoOwnershipInfoInstance) {

        if (buildingInfoOwnershipInfoInstance == null) {
            notFound()
            return
        }

        buildingInfoOwnershipInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'BuildingInfoOwnershipInfo.label', default: 'BuildingInfoOwnershipInfo'), buildingInfoOwnershipInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'buildingInfoOwnershipInfo.label', default: 'BuildingInfoOwnershipInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
