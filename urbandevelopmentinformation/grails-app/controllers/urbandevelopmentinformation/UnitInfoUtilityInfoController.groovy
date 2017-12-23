package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UnitInfoUtilityInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

     def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        redirect(controller: "unitInfoUtilityInfo", action: "list")
    }
 
 
 
 def list() {
  
 
  def unitInfoUtilityInfoList = UnitInfoUtilityInfo.createCriteria().list (params) {
   
   if(params.utId!=null && params.utId?.toString().isLong() ) {
    Long value=params.utId as Long
    
    if (value!=0) {
    eq('utId',value)
     }
     
    }
   if(params.utUnId!=null && params.utUnId?.toString().isLong() ) {
	   Long value=params.utUnId as Long
	   
	   if (value!=0) {
	   eq('utUnId',value)
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
 
  [unitInfoUtilityInfoList:unitInfoUtilityInfoList, unitInfoUtilityInfoListTotal: unitInfoUtilityInfoList.size()]
 }



    def show(UnitInfoUtilityInfo unitInfoUtilityInfoInstance) {
        respond unitInfoUtilityInfoInstance
    }

	def viewImageLayoutUtil (UnitInfoUtilityInfo unitInfoUtilityInfoInstance) {
		response.outputStream << unitInfoUtilityInfoInstance.utTypePic
		response.outputStream.flush()
		}
	
    def create() {
        respond new UnitInfoUtilityInfo(params)
    }

    @Transactional
    def save(UnitInfoUtilityInfo unitInfoUtilityInfoInstance) {
        if (unitInfoUtilityInfoInstance == null) {
            notFound()
            return
        }

        if (unitInfoUtilityInfoInstance.hasErrors()) {
            respond unitInfoUtilityInfoInstance.errors, view:'create'
            return
        }

        unitInfoUtilityInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'unitInfoUtilityInfo.label', default: 'UnitInfoUtilityInfo'), unitInfoUtilityInfoInstance.id])
                redirect unitInfoUtilityInfoInstance
            }
            '*' { respond unitInfoUtilityInfoInstance, [status: CREATED] }
        }
    }

    def edit(UnitInfoUtilityInfo unitInfoUtilityInfoInstance) {
        respond unitInfoUtilityInfoInstance
    }

    @Transactional
    def update(UnitInfoUtilityInfo unitInfoUtilityInfoInstance) {
        if (unitInfoUtilityInfoInstance == null) {
            notFound()
            return
        }

        if (unitInfoUtilityInfoInstance.hasErrors()) {
            respond unitInfoUtilityInfoInstance.errors, view:'edit'
            return
        }

        unitInfoUtilityInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UnitInfoUtilityInfo.label', default: 'UnitInfoUtilityInfo'), unitInfoUtilityInfoInstance.id])
                redirect unitInfoUtilityInfoInstance
            }
            '*'{ respond unitInfoUtilityInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UnitInfoUtilityInfo unitInfoUtilityInfoInstance) {

        if (unitInfoUtilityInfoInstance == null) {
            notFound()
            return
        }

        unitInfoUtilityInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UnitInfoUtilityInfo.label', default: 'UnitInfoUtilityInfo'), unitInfoUtilityInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'unitInfoUtilityInfo.label', default: 'UnitInfoUtilityInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
