package urbandevelopmentinformation

import java.util.Date;

class UserRole {

 Long userRoleId
 String userRoleName
 String userRoleType
 Date userRoleDate
 
 String toString () {
   "${userRoleType}"
 }
 
 static constraints = {
  userRoleId()
  userRoleName(inList: ["Admin Tasks", "Officer Tasks", "Web General User"])
  userRoleType(inList: ["Admin", "Officer", "General User"])
  userRoleDate()
  
  
    }
 static belongsTo =[userRegistrations:UserRegistration]
}

