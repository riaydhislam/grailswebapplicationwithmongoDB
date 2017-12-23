package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AddressInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
       // params.max = Math.min(max ?: 10, 100)
        redirect(controller: "addressInfo", action: "list")
    }
	
	def list() {
		
	 
	  def addressInfos =AddressInfo.createCriteria().list (params) {
	   
	   if(params.adId!=null && params.adId?.toString().isLong() ) {
		Long value=params.adId as Long
		
		if (value!=0) {
		eq('adId',value)
		 }
		 
		}
	   
	   if(params.adalId!=null && params.adalId?.toString().isLong() ) {
		Long value=params.adalId as Long
		
		if (value!=0) {
		eq('adalId',value)
		 }
		 
		}
	   if(params.adalId!=null && params.adalId?.toString().isLong() ) {
		   Long value=params.adalId as Long
		   
		   if (value!=0) {
		   eq('adalId',value)
			}
			
		   }
	   
	  if (params.adFirstName!=null) {
	   ilike("adFirstName", "%${params.adFirstName}%")
	  }
	  
	  if (params.adMiddleName!=null) {
	   ilike("adMiddleName", "%${params.adMiddleName}%")
	  }
	  
	  if (params.adLastName!=null) {
	   ilike("adLastName", "%${params.adLastName}%")
	  }
	  
	  if (params.adNationalIdNumber!=null) {
	   ilike("adNationalIdNumber", "%${params.adNationalIdNumber}%")
	  }
	  
	  if (params.adEMail!=null) {
	   ilike("adEMail", "%${params.adEMail}%")
	  }
	  
	 }
	  
	  [addressInfos:addressInfos,addressInfoInstanceCount:addressInfos.size()]
	  
	 
	 }
	

    def show(AddressInfo addressInfoInstance) {
        respond addressInfoInstance
    }
	
	
	def viewImageLayoutBirthCertificate (AddressInfo addressInfoInstance) {
		response.outputStream << addressInfoInstance.adBirthCertificateNumberPic
		response.outputStream.flush()
		}
		
	  def viewImageLayoutNationIdPic (AddressInfo addressInfoInstance) {
		response.outputStream << addressInfoInstance.adNationalIdNumberPic
		response.outputStream.flush()
		}
	  def viewImageLayoutPassport (AddressInfo addressInfoInstance) {
		  response.outputStream << addressInfoInstance.adPassportNumberPic
		  response.outputStream.flush()
		  }

    def create() {
        respond new AddressInfo(params)
    }

    @Transactional
    def save(AddressInfo addressInfoInstance) {
        if (addressInfoInstance == null) {
            notFound()
            return
        }

        if (addressInfoInstance.hasErrors()) {
            respond addressInfoInstance.errors, view:'create'
            return
        }

        addressInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'addressInfo.label', default: 'AddressInfo'), addressInfoInstance.id])
                redirect addressInfoInstance
            }
            '*' { respond addressInfoInstance, [status: CREATED] }
        }
    }

    def edit(AddressInfo addressInfoInstance) {
        respond addressInfoInstance
    }

    @Transactional
    def update(AddressInfo addressInfoInstance) {
        if (addressInfoInstance == null) {
            notFound()
            return
        }

        if (addressInfoInstance.hasErrors()) {
            respond addressInfoInstance.errors, view:'edit'
            return
        }

        addressInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AddressInfo.label', default: 'AddressInfo'), addressInfoInstance.id])
                redirect addressInfoInstance
            }
            '*'{ respond addressInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AddressInfo addressInfoInstance) {

        if (addressInfoInstance == null) {
            notFound()
            return
        }

        addressInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AddressInfo.label', default: 'AddressInfo'), addressInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'addressInfo.label', default: 'AddressInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
