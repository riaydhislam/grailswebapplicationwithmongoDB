package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserRegistrationController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
 
    def index(Integer max) {
       // params.max = Math.min(max ?: 10, 100)
       redirect(controller: "userRegistration", action: "list")
    }
	
	
	def list() {
		
	  // params.max = Math.min(params.max ? params.int('max') : 10, 100)
	  def userRegistrations =UserRegistration.createCriteria().list (params) {
	   
	   if(params.userRegistrationId!=null && params.userRegistrationId?.toString().isLong() ) {
		Long value=params.userRegistrationId as Long
		
		if (value!=0) {
		eq('userRegistrationId',value)
		 }
		 
		}
	   
	   
	   if(params.userAddressId!=null && params.userAddressId?.toString().isLong() ) {
		Long value=params.userAddressId as Long
		
		if (value!=0) {
		eq('userAddressId',value)
		 }
		 
		}
	  
	  if (params.userRegistrationFName!=null) {
	   ilike("userRegistrationFName", "%${params.userRegistrationFName}%")
	  }
	  
	  if (params.userRegistrationMName!=null) {
	   ilike("userRegistrationMName", "%${params.userRegistrationMName}%")
	  }
	  
	  if (params.userRegistrationLName!=null) {
	   ilike("userRegistrationLName", "%${params.userRegistrationLName}%")
	  }
	  
	  if (params.userRegistrationName!=null) {
	   ilike("userRegistrationName", "%${params.userRegistrationName}%")
	  }
	 
	 }
	  
	  [userRegistrations:userRegistrations,counter:userRegistrations.size()]
	 }
	
 
 def loginAdmin = {
 
 }

 def login = {
  
 }
 
 
 def about = {
 
}
 
 def service = {
 
}
 
 def index4 = {
 
}
 
 
 def authenticateWebPortal = {
  render(view:'/publicApplicationList')
 }
 

 def authenticateWebApplication = {
  def user = UserRegistration.findByUserRegistrationNameAndUserRegistrationPassword(params.userRegistrationName, params.userRegistrationPassword)
  
  if(user){
   session.user = user
   flash.message = "Hello ${user.userRegistrationfullName}!"
  // redirect(action:"login")
   render(view:'/index')
  
  }else{
  flash.message = "Your user name or password is wrong!"
  redirect(action:"login")
  //redirect(action:"create")
  }
 }
 
 
 def authenticateWebAdministrator = {
  def user = UserRegistration.findByUserRegistrationNameAndUserRegistrationPassword(params.userRegistrationName, params.userRegistrationPassword)
  
  if(user){
   session.user = user
   flash.message = "Hello ${user.userRegistrationfullName}!"
  // redirect(action:"login")
   render(view:'/index2')
  
  }else{
  flash.message = "Your user name or password is wrong!"
  redirect(action:"loginAdmin")
  //redirect(action:"create")
  }
 }
 
  def logout = {
   flash.message = "Please Login"
   redirect(action:"login")
  }

    def show(UserRegistration userRegistrationInstance) {
        respond userRegistrationInstance
    }

    def create() {
        respond new UserRegistration(params)
    }

    @Transactional
    def save(UserRegistration userRegistrationInstance) {
        if (userRegistrationInstance == null) {
            notFound()
            return
        }

        if (userRegistrationInstance.hasErrors()) {
            respond userRegistrationInstance.errors, view:'create'
            return
        }

        userRegistrationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'userRegistration.label', default: 'UserRegistration'), userRegistrationInstance.id])
                redirect userRegistrationInstance
            }
            '*' { respond userRegistrationInstance, [status: CREATED] }
        }
    }

    def edit(UserRegistration userRegistrationInstance) {
        respond userRegistrationInstance
    }

    @Transactional
    def update(UserRegistration userRegistrationInstance) {
        if (userRegistrationInstance == null) {
            notFound()
            return
        }

        if (userRegistrationInstance.hasErrors()) {
            respond userRegistrationInstance.errors, view:'edit'
            return
        }

        userRegistrationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UserRegistration.label', default: 'UserRegistration'), userRegistrationInstance.id])
                redirect userRegistrationInstance
            }
            '*'{ respond userRegistrationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UserRegistration userRegistrationInstance) {

        if (userRegistrationInstance == null) {
            notFound()
            return
        }

        userRegistrationInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UserRegistration.label', default: 'UserRegistration'), userRegistrationInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'userRegistration.label', default: 'UserRegistration'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

