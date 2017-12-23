package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AddressLocationInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
       
        redirect(controller: "addressLocationInfo", action: "list")
    }
 
 def list() {
  
 // params.max = Math.min(params.max ? params.int('max') : 5, 100)
  
   def addressLocationInfos =AddressLocationInfo.createCriteria().list (params) {
	   if(params.alId!=null && params.alId?.toString().isLong() ) {
		   Long value=params.alId as Long
		   
		   if (value!=0) {
		   eq('alId',value)
			}
			
		   }
	   
	   
	   if(params.adId!=null && params.adId?.toString().isLong() ) {
		   Long value=params.adId as Long
		   
		   if (value!=0) {
		   eq('adId',value)
			}
			
		   }
	   
    if (params.alDivisionName!=null) {
     ilike("alDivisionName", "%${params.alDivisionName}%")
    }
    
    if (params.alDistictName!=null) {
     ilike("alDistictName", "%${params.alDistictName}%")
    }
    
    if (params.alUpzillaOrThanaName!=null) {
     ilike("alUpzillaOrThanaName", "%${params.alUpzillaOrThanaName}%")
    }
    
    if (params.alUnionName!=null) {
     ilike("alUnionName", "%${params.alUnionName}%")
    }
    
    if (params.alRoadName!=null) {
     ilike("alRoadName", "%${params.alRoadName}%")
    }
    if (params.alType!=null) {
     ilike("alType", "%${params.alType}%")
    }
    
   }
   
   [addressLocationInfoInstanceList:addressLocationInfos,addressLocationInfoInstanceCount:addressLocationInfos.size()]
  }

    def show(AddressLocationInfo addressLocationInfoInstance) {
        respond addressLocationInfoInstance
    }

	def viewImageLayoutLocation (AddressLocationInfo addressLocationInfoInstance) {
		response.outputStream <<addressLocationInfoInstance.alLocationPic
		response.outputStream.flush()
		}
	
    def create() {
        respond new AddressLocationInfo(params)
    }

    @Transactional
    def save(AddressLocationInfo addressLocationInfoInstance) {
        if (addressLocationInfoInstance == null) {
            notFound()
            return
        }

        if (addressLocationInfoInstance.hasErrors()) {
            respond addressLocationInfoInstance.errors, view:'create'
            return
        }

        addressLocationInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'addressLocationInfo.label', default: 'AddressLocationInfo'), addressLocationInfoInstance.id])
                redirect addressLocationInfoInstance
            }
            '*' { respond addressLocationInfoInstance, [status: CREATED] }
        }
    }

    def edit(AddressLocationInfo addressLocationInfoInstance) {
        respond addressLocationInfoInstance
    }

    @Transactional
    def update(AddressLocationInfo addressLocationInfoInstance) {
        if (addressLocationInfoInstance == null) {
            notFound()
            return
        }

        if (addressLocationInfoInstance.hasErrors()) {
            respond addressLocationInfoInstance.errors, view:'edit'
            return
        }

        addressLocationInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AddressLocationInfo.label', default: 'AddressLocationInfo'), addressLocationInfoInstance.id])
                redirect addressLocationInfoInstance
            }
            '*'{ respond addressLocationInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AddressLocationInfo addressLocationInfoInstance) {

        if (addressLocationInfoInstance == null) {
            notFound()
            return
        }

        addressLocationInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AddressLocationInfo.label', default: 'AddressLocationInfo'), addressLocationInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'addressLocationInfo.label', default: 'AddressLocationInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
