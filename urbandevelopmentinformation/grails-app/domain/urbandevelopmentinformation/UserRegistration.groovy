package urbandevelopmentinformation

import java.util.Date;
import urbandevelopmentinformation.AddressInfo
import urbandevelopmentinformation.UserRole

class UserRegistration {
 Long userRegistrationId
 Long userAddressId
 String userRegistrationFName
 String userRegistrationMName
 String userRegistrationLName
 String userRegistrationName
 String userRegistrationPassword
 String userRegistrationfullName
 Date   userRegistrationCrDate
 Date userRegistrationLDate
 
 String toString() {
  "${userRegistrationfullName}"
 }
 
 static hasMany =[roles:UserRole,addresses:AddressInfo]

 static constraints = {
  userRegistrationId()
  userAddressId()
  userRegistrationFName()
  userRegistrationMName()
  userRegistrationLName()
  userRegistrationfullName()
  userRegistrationCrDate()
  userRegistrationLDate()
  userRegistrationName(unique: true)
  userRegistrationPassword(password: true)
  roles()
  addresses()
  
    
 }
    
}
