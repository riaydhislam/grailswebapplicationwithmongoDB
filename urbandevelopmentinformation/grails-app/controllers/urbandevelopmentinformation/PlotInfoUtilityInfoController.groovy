package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PlotInfoUtilityInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

      def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        redirect(controller: "plotInfoUtilityInfo", action: "list")
    }
 
 
 
 def list() {
  
 
  def plotInfoUtilityInfoList = PlotInfoUtilityInfo.createCriteria().list (params) {
   
   if(params.utId!=null && params.utId?.toString().isLong() ) {
    Long value=params.utId as Long
    
    if (value!=0) {
    eq('utId',value)
     }
     
    }
   if(params.utPlId!=null && params.utPlId?.toString().isLong() ) {
	   Long value=params.utPlId as Long
	   
	   if (value!=0) {
	   eq('utPlId',value)
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
 
  [plotInfoUtilityInfoList: plotInfoUtilityInfoList, plotInfoUtilityInfoListTotal: plotInfoUtilityInfoList.size()]
 }

 
    def show(PlotInfoUtilityInfo plotInfoUtilityInfoInstance) {
        respond plotInfoUtilityInfoInstance
    }
	
	def viewImageLayoutUtil (PlotInfoUtilityInfo plotInfoUtilityInfoInstance) {
		response.outputStream << plotInfoUtilityInfoInstance.utTypePic
		response.outputStream.flush()
		}

    def create() {
        respond new PlotInfoUtilityInfo(params)
    }

    @Transactional
    def save(PlotInfoUtilityInfo plotInfoUtilityInfoInstance) {
        if (plotInfoUtilityInfoInstance == null) {
            notFound()
            return
        }

        if (plotInfoUtilityInfoInstance.hasErrors()) {
            respond plotInfoUtilityInfoInstance.errors, view:'create'
            return
        }

        plotInfoUtilityInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'plotInfoUtilityInfo.label', default: 'PlotInfoUtilityInfo'), plotInfoUtilityInfoInstance.id])
                redirect plotInfoUtilityInfoInstance
            }
            '*' { respond plotInfoUtilityInfoInstance, [status: CREATED] }
        }
    }

    def edit(PlotInfoUtilityInfo plotInfoUtilityInfoInstance) {
        respond plotInfoUtilityInfoInstance
    }

    @Transactional
    def update(PlotInfoUtilityInfo plotInfoUtilityInfoInstance) {
        if (plotInfoUtilityInfoInstance == null) {
            notFound()
            return
        }

        if (plotInfoUtilityInfoInstance.hasErrors()) {
            respond plotInfoUtilityInfoInstance.errors, view:'edit'
            return
        }

        plotInfoUtilityInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PlotInfoUtilityInfo.label', default: 'PlotInfoUtilityInfo'), plotInfoUtilityInfoInstance.id])
                redirect plotInfoUtilityInfoInstance
            }
            '*'{ respond plotInfoUtilityInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PlotInfoUtilityInfo plotInfoUtilityInfoInstance) {

        if (plotInfoUtilityInfoInstance == null) {
            notFound()
            return
        }

        plotInfoUtilityInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PlotInfoUtilityInfo.label', default: 'PlotInfoUtilityInfo'), plotInfoUtilityInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'plotInfoUtilityInfo.label', default: 'PlotInfoUtilityInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
