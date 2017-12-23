package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PlotInfoBillingInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        redirect(controller: "plotInfoBillingInfo", action: "list")
    }
 
 def list() {
  
 
  def plotInfoBillingInfoList = PlotInfoBillingInfo.createCriteria().list (params) {
   
   if(params.biId!=null && params.biId?.toString().isLong() ) {
    Long value=params.biId as Long
    
    if (value!=0) {
    eq('biId',value)
     }
     
    }
   if(params.biPlId!=null && params.biPlId?.toString().isLong() ) {
	   Long value=params.biPlId as Long
	   
	   if (value!=0) {
	   eq('biPlId',value)
		}
		
	   }
   
   if(params.biCreaterAddressId!=null && params.biCreaterAddressId?.toString().isLong() ) {
	   Long value=params.biCreaterAddressId as Long
	   
	   if (value!=0) {
	   eq('biCreaterAddressId',value)
		}
		
	   }
   
   if (params.biCreaterName!=null) {
    ilike("biCreaterName", "%${params.biCreaterName}%")
   }
   
   if (params.biReferenceNumber!=null) {
	   ilike("biReferenceNumber", "%${params.biReferenceNumber}%")
	  }
   
   if (params.biCreaterAuthority!=null) {
    ilike("biCreaterAuthority", "%${params.biCreaterAuthority}%")
   }
   
  
   
   
   
  }
 
  [plotInfoBillingInfoList: plotInfoBillingInfoList , plotInfoBillingInfoListTotal: plotInfoBillingInfoList.size()]
 }



    def show(PlotInfoBillingInfo plotInfoBillingInfoInstance) {
        respond plotInfoBillingInfoInstance
    }
	
	def viewImageLayoutPrintCopy(PlotInfoBillingInfo plotInfoBillingInfoInstance) {
		response.outputStream << plotInfoBillingInfoInstance.biPrintCopy
		response.outputStream.flush()
		}

    def create() {
        respond new PlotInfoBillingInfo(params)
    }

    @Transactional
    def save(PlotInfoBillingInfo plotInfoBillingInfoInstance) {
        if (plotInfoBillingInfoInstance == null) {
            notFound()
            return
        }

        if (plotInfoBillingInfoInstance.hasErrors()) {
            respond plotInfoBillingInfoInstance.errors, view:'create'
            return
        }

        plotInfoBillingInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'plotInfoBillingInfo.label', default: 'PlotInfoBillingInfo'), plotInfoBillingInfoInstance.id])
                redirect plotInfoBillingInfoInstance
            }
            '*' { respond plotInfoBillingInfoInstance, [status: CREATED] }
        }
    }

    def edit(PlotInfoBillingInfo plotInfoBillingInfoInstance) {
        respond plotInfoBillingInfoInstance
    }

    @Transactional
    def update(PlotInfoBillingInfo plotInfoBillingInfoInstance) {
        if (plotInfoBillingInfoInstance == null) {
            notFound()
            return
        }

        if (plotInfoBillingInfoInstance.hasErrors()) {
            respond plotInfoBillingInfoInstance.errors, view:'edit'
            return
        }

        plotInfoBillingInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PlotInfoBillingInfo.label', default: 'PlotInfoBillingInfo'), plotInfoBillingInfoInstance.id])
                redirect plotInfoBillingInfoInstance
            }
            '*'{ respond plotInfoBillingInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PlotInfoBillingInfo plotInfoBillingInfoInstance) {

        if (plotInfoBillingInfoInstance == null) {
            notFound()
            return
        }

        plotInfoBillingInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PlotInfoBillingInfo.label', default: 'PlotInfoBillingInfo'), plotInfoBillingInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'plotInfoBillingInfo.label', default: 'PlotInfoBillingInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
