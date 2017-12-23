package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PlotInfoOwnershipInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    

	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		redirect(controller: "plotInfoOwnershipInfo", action: "list")
	}
 
 
 def list() {
  
 
  def plotInfoOwnershipInfoList = PlotInfoOwnershipInfo.createCriteria().list (params) {
   
   if(params.owId!=null && params.owId?.toString().isLong() ) {
	Long value=params.owId as Long
	
	if (value!=0) {
	eq('owId',value)
	 }
	 
	}
   
   
   if(params.owPlId!=null && params.owPlId?.toString().isLong() ) {
	Long value=params.owPlId as Long
	
	if (value!=0) {
	eq('owPlId',value)
	 }
	 
	}
   
   if (params.owFullName!=null) {
	ilike("owFullName", "%${params.owFullName}%")
   }
   
   

  }
  [plotInfoOwnershipInfoList: plotInfoOwnershipInfoList, plotInfoOwnershipInfoTotal:plotInfoOwnershipInfoList.size()]
 }
 
	
    def show(PlotInfoOwnershipInfo plotInfoOwnershipInfoInstance) {
        respond plotInfoOwnershipInfoInstance
    }

    def create() {
        respond new PlotInfoOwnershipInfo(params)
    }

    @Transactional
    def save(PlotInfoOwnershipInfo plotInfoOwnershipInfoInstance) {
        if (plotInfoOwnershipInfoInstance == null) {
            notFound()
            return
        }

        if (plotInfoOwnershipInfoInstance.hasErrors()) {
            respond plotInfoOwnershipInfoInstance.errors, view:'create'
            return
        }

        plotInfoOwnershipInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'plotInfoOwnershipInfo.label', default: 'PlotInfoOwnershipInfo'), plotInfoOwnershipInfoInstance.id])
                redirect plotInfoOwnershipInfoInstance
            }
            '*' { respond plotInfoOwnershipInfoInstance, [status: CREATED] }
        }
    }

    def edit(PlotInfoOwnershipInfo plotInfoOwnershipInfoInstance) {
        respond plotInfoOwnershipInfoInstance
    }

    @Transactional
    def update(PlotInfoOwnershipInfo plotInfoOwnershipInfoInstance) {
        if (plotInfoOwnershipInfoInstance == null) {
            notFound()
            return
        }

        if (plotInfoOwnershipInfoInstance.hasErrors()) {
            respond plotInfoOwnershipInfoInstance.errors, view:'edit'
            return
        }

        plotInfoOwnershipInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PlotInfoOwnershipInfo.label', default: 'PlotInfoOwnershipInfo'), plotInfoOwnershipInfoInstance.id])
                redirect plotInfoOwnershipInfoInstance
            }
            '*'{ respond plotInfoOwnershipInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PlotInfoOwnershipInfo plotInfoOwnershipInfoInstance) {

        if (plotInfoOwnershipInfoInstance == null) {
            notFound()
            return
        }

        plotInfoOwnershipInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PlotInfoOwnershipInfo.label', default: 'PlotInfoOwnershipInfo'), plotInfoOwnershipInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'plotInfoOwnershipInfo.label', default: 'PlotInfoOwnershipInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
