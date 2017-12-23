package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UnitInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

   def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        redirect(controller: "unitInfo", action: "listUnitForMapVisualization")
    }
 def list() {
  
  def unitInfoList = UnitInfo.createCriteria().list (params) {
   
   if(params.unId!=null && params.unId?.toString().isLong() ) {
    Long value=params.unId as Long
    
    if (value!=0) {
    eq('unId',value)
     } 
    }
   
   
   if(params.unflId!=null && params.unflId?.toString().isLong() ) {
    Long value=params.unflId as Long
    
    if (value!=0) {
    eq('unflId',value)
     }
     
    }
   
   if (params.unCode!=null) {
    ilike("unCode", "%${params.unCode}%")
   }
   
   if (params.unName!=null) {
    ilike("unName", "%${params.unName}%")
   }
   
   if (params.unUseType!=null) {
    ilike("unUseType", "%${params.unUseType}%")
   }
   
  }
 
  [unitInfoInstanceList: unitInfoList, unitInfoTotal:unitInfoList.size()]
 }
 
 
 
 def listUnitForMapVisualization() {
  
  def unitInfoList = UnitInfo.createCriteria().list (params) {
   
   if(params.unId!=null && params.unId?.toString().isLong() ) {
    Long value=params.unId as Long
    
    if (value!=0) {
    eq('unId',value)
     }
    }
   
   
   if(params.unflId!=null && params.unflId?.toString().isLong() ) {
    Long value=params.unflId as Long
    
    if (value!=0) {
    eq('unflId',value)
     }
     
    }
   
   if (params.unCode!=null) {
    ilike("unCode", "%${params.unCode}%")
   }
   
   if (params.unName!=null) {
    ilike("unName", "%${params.unName}%")
   }
   
   if (params.unUseType!=null) {
    ilike("unUseType", "%${params.unUseType}%")
   }
   
  }
 
  [unitInfoInstanceList: unitInfoList, unitInfoTotal:unitInfoList.size()]
 }

    def show(UnitInfo unitInfoInstance) {
        respond unitInfoInstance
    }

	def viewImageLayout (UnitInfo unitInfoInstance) {
		response.outputStream << unitInfoInstance.unLayoutPicture
		response.outputStream.flush()
		}
	
    def create() {
        respond new UnitInfo(params)
    }

    @Transactional
    def save(UnitInfo unitInfoInstance) {
        if (unitInfoInstance == null) {
            notFound()
            return
        }

        if (unitInfoInstance.hasErrors()) {
            respond unitInfoInstance.errors, view:'create'
            return
        }

        unitInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'unitInfo.label', default: 'UnitInfo'), unitInfoInstance.id])
                redirect unitInfoInstance
            }
            '*' { respond unitInfoInstance, [status: CREATED] }
        }
    }

    def edit(UnitInfo unitInfoInstance) {
        respond unitInfoInstance
    }

    @Transactional
    def update(UnitInfo unitInfoInstance) {
        if (unitInfoInstance == null) {
            notFound()
            return
        }

        if (unitInfoInstance.hasErrors()) {
            respond unitInfoInstance.errors, view:'edit'
            return
        }

        unitInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UnitInfo.label', default: 'UnitInfo'), unitInfoInstance.id])
                redirect unitInfoInstance
            }
            '*'{ respond unitInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UnitInfo unitInfoInstance) {

        if (unitInfoInstance == null) {
            notFound()
            return
        }

        unitInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UnitInfo.label', default: 'UnitInfo'), unitInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'unitInfo.label', default: 'UnitInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
