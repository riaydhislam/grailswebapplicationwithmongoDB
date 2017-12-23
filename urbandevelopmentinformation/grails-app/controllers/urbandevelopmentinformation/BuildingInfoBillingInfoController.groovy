package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*

import java.util.Date;

import grails.transaction.Transactional

@Transactional(readOnly = true)
class BuildingInfoBillingInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        redirect(controller: "buildingInfoBillingInfo", action: "list")
    }
 
 def list() {
  
 
  def buildingInfoBillingInfoList = BuildingInfoBillingInfo.createCriteria().list (params) {
   
   if(params.biId!=null && params.biId?.toString().isLong() ) {
    Long value=params.biId as Long
    
    if (value!=0) {
    eq('biId',value)
     }
     
    }
   if(params.biBuId!=null && params.biBuId?.toString().isLong() ) {
	   Long value=params.biBuId as Long
	   
	   if (value!=0) {
	   eq('biBuId',value)
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
 
  [buildingInfoBillingInfoList: buildingInfoBillingInfoList , buildingInfoBillingInfoListTotal: buildingInfoBillingInfoList.size()]
 }


    def show(BuildingInfoBillingInfo buildingInfoBillingInfoInstance) {
        respond buildingInfoBillingInfoInstance
    }
	
	def viewImageLayoutPrintCopy(BuildingInfoBillingInfo buildingInfoBillingInfoInstance) {
		response.outputStream << buildingInfoBillingInfoInstance.biPrintCopy
		response.outputStream.flush()
		}

    def create() {
        respond new BuildingInfoBillingInfo(params)
    }

    @Transactional
    def save(BuildingInfoBillingInfo buildingInfoBillingInfoInstance) {
        if (buildingInfoBillingInfoInstance == null) {
            notFound()
            return
        }

        if (buildingInfoBillingInfoInstance.hasErrors()) {
            respond buildingInfoBillingInfoInstance.errors, view:'create'
            return
        }

        buildingInfoBillingInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'buildingInfoBillingInfo.label', default: 'BuildingInfoBillingInfo'), buildingInfoBillingInfoInstance.id])
                redirect buildingInfoBillingInfoInstance
            }
            '*' { respond buildingInfoBillingInfoInstance, [status: CREATED] }
        }
    }

    def edit(BuildingInfoBillingInfo buildingInfoBillingInfoInstance) {
        respond buildingInfoBillingInfoInstance
    }

    @Transactional
    def update(BuildingInfoBillingInfo buildingInfoBillingInfoInstance) {
        if (buildingInfoBillingInfoInstance == null) {
            notFound()
            return
        }

        if (buildingInfoBillingInfoInstance.hasErrors()) {
            respond buildingInfoBillingInfoInstance.errors, view:'edit'
            return
        }

        buildingInfoBillingInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'BuildingInfoBillingInfo.label', default: 'BuildingInfoBillingInfo'), buildingInfoBillingInfoInstance.id])
                redirect buildingInfoBillingInfoInstance
            }
            '*'{ respond buildingInfoBillingInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(BuildingInfoBillingInfo buildingInfoBillingInfoInstance) {

        if (buildingInfoBillingInfoInstance == null) {
            notFound()
            return
        }

        buildingInfoBillingInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'BuildingInfoBillingInfo.label', default: 'BuildingInfoBillingInfo'), buildingInfoBillingInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'buildingInfoBillingInfo.label', default: 'BuildingInfoBillingInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
