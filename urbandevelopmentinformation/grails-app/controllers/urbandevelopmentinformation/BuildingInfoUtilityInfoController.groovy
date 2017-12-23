package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BuildingInfoUtilityInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

      def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        redirect(controller: "buildingInfoUtilityInfo", action: "list")
    }
 
 
 
 def list() {
  
 
  def buildingInfoUtilityInfoList = BuildingInfoUtilityInfo.createCriteria().list (params) {
   
   if(params.utId!=null && params.utId?.toString().isLong() ) {
    Long value=params.utId as Long
    
    if (value!=0) {
    eq('utId',value)
     }
     
    }
   if(params.utBuId!=null && params.utBuId?.toString().isLong() ) {
	   Long value=params.utBuId as Long
	   
	   if (value!=0) {
	   eq('utBuId',value)
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
 
  [buildingInfoUtilityInfoList: buildingInfoUtilityInfoList, buildingInfoUtilityInfoListTotal: buildingInfoUtilityInfoList.size()]
 }


    def show(BuildingInfoUtilityInfo buildingInfoUtilityInfoInstance) {
        respond buildingInfoUtilityInfoInstance
    }

	def viewImageLayoutUtil (BuildingInfoUtilityInfo buildingInfoUtilityInfoInstance) {
		response.outputStream << buildingInfoUtilityInfoInstance.utTypePic
		response.outputStream.flush()
		}
	
    def create() {
        respond new BuildingInfoUtilityInfo(params)
    }

    @Transactional
    def save(BuildingInfoUtilityInfo buildingInfoUtilityInfoInstance) {
        if (buildingInfoUtilityInfoInstance == null) {
            notFound()
            return
        }

        if (buildingInfoUtilityInfoInstance.hasErrors()) {
            respond buildingInfoUtilityInfoInstance.errors, view:'create'
            return
        }

        buildingInfoUtilityInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'buildingInfoUtilityInfo.label', default: 'BuildingInfoUtilityInfo'), buildingInfoUtilityInfoInstance.id])
                redirect buildingInfoUtilityInfoInstance
            }
            '*' { respond buildingInfoUtilityInfoInstance, [status: CREATED] }
        }
    }

    def edit(BuildingInfoUtilityInfo buildingInfoUtilityInfoInstance) {
        respond buildingInfoUtilityInfoInstance
    }

    @Transactional
    def update(BuildingInfoUtilityInfo buildingInfoUtilityInfoInstance) {
        if (buildingInfoUtilityInfoInstance == null) {
            notFound()
            return
        }

        if (buildingInfoUtilityInfoInstance.hasErrors()) {
            respond buildingInfoUtilityInfoInstance.errors, view:'edit'
            return
        }

        buildingInfoUtilityInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'BuildingInfoUtilityInfo.label', default: 'BuildingInfoUtilityInfo'), buildingInfoUtilityInfoInstance.id])
                redirect buildingInfoUtilityInfoInstance
            }
            '*'{ respond buildingInfoUtilityInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(BuildingInfoUtilityInfo buildingInfoUtilityInfoInstance) {

        if (buildingInfoUtilityInfoInstance == null) {
            notFound()
            return
        }

        buildingInfoUtilityInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'BuildingInfoUtilityInfo.label', default: 'BuildingInfoUtilityInfo'), buildingInfoUtilityInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'buildingInfoUtilityInfo.label', default: 'BuildingInfoUtilityInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
