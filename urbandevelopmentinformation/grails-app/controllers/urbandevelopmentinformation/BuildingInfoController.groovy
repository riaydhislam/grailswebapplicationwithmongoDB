package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BuildingInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        redirect(controller: "buildingInfo", action: "listBuildingForMapVisualization")
    }
 
 
 def list() {
  
 
  def buildingInfoList = BuildingInfo.createCriteria().list (params) {
   
   if(params.buId!=null && params.buId?.toString().isLong() ) {
    Long value=params.buId as Long
    
    if (value!=0) {
    eq('buId',value)
     }
     
    }
   
   
   if(params.buPlId!=null && params.buPlId?.toString().isLong() ) {
    Long value=params.buPlId as Long
    
    if (value!=0) {
    eq('buPlId',value)
     }
     
    }
   
   if (params.buCode!=null) {
    ilike("buCode", "%${params.buCode}%")
   }
   
   if (params.buUseType!=null) {
    ilike("buUseType", "%${params.buUseType}%")
   }
   
   if (params.buName!=null) {
    ilike("buName", "%${params.buName}%")
   }
   
  }
 
  [buildingInfoInstanceList: buildingInfoList, buildingInfoTotal: buildingInfoList.size()]
 }
 
 
 def listBuildingForMapVisualization() {
  
 
  def buildingInfoList = BuildingInfo.createCriteria().list (params) {
   
   if(params.buId!=null && params.buId?.toString().isLong() ) {
    Long value=params.buId as Long
    
    if (value!=0) {
    eq('buId',value)
     }
     
    }
   
   
   if(params.buPlId!=null && params.buPlId?.toString().isLong() ) {
    Long value=params.buPlId as Long
    
    if (value!=0) {
    eq('buPlId',value)
     }
     
    }
   
   if (params.buCode!=null) {
    ilike("buCode", "%${params.buCode}%")
   }
   
   if (params.buUseType!=null) {
    ilike("buUseType", "%${params.buUseType}%")
   }
   
   if (params.buName!=null) {
    ilike("buName", "%${params.buName}%")
   }
   
  }
 
  [buildingInfoInstanceList: buildingInfoList, buildingInfoTotal: buildingInfoList.size()]
 }

    def show(BuildingInfo buildingInfoInstance) {
        respond buildingInfoInstance
    }
	
	def viewImageBuildingLayout (BuildingInfo buildingInfoInstance) {
		response.outputStream << buildingInfoInstance.buLayoutPicture
		response.outputStream.flush()
		}

    def create() {
        respond new BuildingInfo(params)
    }

    @Transactional
    def save(BuildingInfo buildingInfoInstance) {
        if (buildingInfoInstance == null) {
            notFound()
            return
        }

        if (buildingInfoInstance.hasErrors()) {
            respond buildingInfoInstance.errors, view:'create'
            return
        }

        buildingInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'buildingInfo.label', default: 'BuildingInfo'), buildingInfoInstance.id])
                redirect buildingInfoInstance
            }
            '*' { respond buildingInfoInstance, [status: CREATED] }
        }
    }

    def edit(BuildingInfo buildingInfoInstance) {
        respond buildingInfoInstance
    }

    @Transactional
    def update(BuildingInfo buildingInfoInstance) {
        if (buildingInfoInstance == null) {
            notFound()
            return
        }

        if (buildingInfoInstance.hasErrors()) {
            respond buildingInfoInstance.errors, view:'edit'
            return
        }

        buildingInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'BuildingInfo.label', default: 'BuildingInfo'), buildingInfoInstance.id])
                redirect buildingInfoInstance
            }
            '*'{ respond buildingInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(BuildingInfo buildingInfoInstance) {

        if (buildingInfoInstance == null) {
            notFound()
            return
        }

        buildingInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'BuildingInfo.label', default: 'BuildingInfo'), buildingInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'buildingInfo.label', default: 'BuildingInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
