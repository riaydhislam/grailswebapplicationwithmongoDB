package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PlotInfoAuthorizationInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

   def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        redirect(controller: "plotInfoAuthorizationInfo", action: "list")
    }
 
 def list() {
  
 
  def plotInfoAuthorizationInfoList = PlotInfoAuthorizationInfo.createCriteria().list (params) {
   
   if(params.auId!=null && params.auId?.toString().isLong() ) {
    Long value=params.auId as Long
    
    if (value!=0) {
    eq('auId',value)
     }
     
    }
   if(params.auPlId!=null && params.auPlId?.toString().isLong() ) {
	   Long value=params.auBuId as Long
	   
	   if (value!=0) {
	   eq('auPlId',value)
		}
		
	   }
   
   if(params.auAddressId!=null && params.auAddressId?.toString().isLong() ) {
	   Long value=params.auAddressId as Long
	   
	   if (value!=0) {
	   eq('auAddressId',value)
		}
		
	   }
   
   if (params.auName!=null) {
    ilike("auName", "%${params.auName}%")
   }
   
   if (params.auType!=null) {
	   ilike("auType", "%${params.auType}%")
	  }
   
   if (params.auNumber!=null) {
    ilike("auNumber", "%${params.auNumber}%")
   }
   
  
   
   
   
  }
 
  [plotInfoAuthorizationInfoList: plotInfoAuthorizationInfoList , plotInfoAuthorizationInfoListTotal: plotInfoAuthorizationInfoList.size()]
 }


    def show(PlotInfoAuthorizationInfo plotInfoAuthorizationInfoInstance) {
        respond plotInfoAuthorizationInfoInstance
    }
	
	def viewImageApplicationCopy (PlotInfoAuthorizationInfo plotInfoAuthorizationInfoInstance) {
		response.outputStream << plotInfoAuthorizationInfoInstance.auApplicationCopy
		response.outputStream.flush()
		}
		
	   def viewImageApprovedCopy (PlotInfoAuthorizationInfo plotInfoAuthorizationInfoInstance) {
		response.outputStream << plotInfoAuthorizationInfoInstance.auApprovedCopy
		response.outputStream.flush()
		}
	  
	
	

    def create() {
        respond new PlotInfoAuthorizationInfo(params)
    }

    @Transactional
    def save(PlotInfoAuthorizationInfo plotInfoAuthorizationInfoInstance) {
        if (plotInfoAuthorizationInfoInstance == null) {
            notFound()
            return
        }

        if (plotInfoAuthorizationInfoInstance.hasErrors()) {
            respond plotInfoAuthorizationInfoInstance.errors, view:'create'
            return
        }

        plotInfoAuthorizationInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'plotInfoAuthorizationInfo.label', default: 'PlotInfoAuthorizationInfo'), plotInfoAuthorizationInfoInstance.id])
                redirect plotInfoAuthorizationInfoInstance
            }
            '*' { respond plotInfoAuthorizationInfoInstance, [status: CREATED] }
        }
    }

    def edit(PlotInfoAuthorizationInfo plotInfoAuthorizationInfoInstance) {
        respond plotInfoAuthorizationInfoInstance
    }

    @Transactional
    def update(PlotInfoAuthorizationInfo plotInfoAuthorizationInfoInstance) {
        if (plotInfoAuthorizationInfoInstance == null) {
            notFound()
            return
        }

        if (plotInfoAuthorizationInfoInstance.hasErrors()) {
            respond plotInfoAuthorizationInfoInstance.errors, view:'edit'
            return
        }

        plotInfoAuthorizationInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PlotInfoAuthorizationInfo.label', default: 'PlotInfoAuthorizationInfo'), plotInfoAuthorizationInfoInstance.id])
                redirect plotInfoAuthorizationInfoInstance
            }
            '*'{ respond plotInfoAuthorizationInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PlotInfoAuthorizationInfo plotInfoAuthorizationInfoInstance) {

        if (plotInfoAuthorizationInfoInstance == null) {
            notFound()
            return
        }

        plotInfoAuthorizationInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PlotInfoAuthorizationInfo.label', default: 'PlotInfoAuthorizationInfo'), plotInfoAuthorizationInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'plotInfoAuthorizationInfo.label', default: 'PlotInfoAuthorizationInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
