package urbandevelopmentinformation
import urbandevelopmentinformation.UserRegistration

class AddressInfo {
  String adFirstName
 String adMiddleName
 String adLastName
 Long   adalId
 Date adBirthDate
 String adBirthCertificateNumber
 byte[] adBirthCertificateNumberPic
 String adNationalIdNumber
 byte[] adNationalIdNumberPic
 String adPassportNumber
 byte[] adPassportNumberPic
 String adSexStatus
 String adMobileNumber
 String adLandNumber
 String adEMail
 String adWeb
 String adWifeOrHaFullName
 String adWifeOrHusbandNationalId
 
 String adFamilySize
 String adEducationLevel
 String adJobId
 String adJobStatus
 String adJobPosition
 String adJobProvider
 String adJobType
 Date adJoiningDate
 
 String adFatherFullName
 String adFatherNationalId
 String adMotherFullName
 String adMotherNationalId
 Long adId
 
 
 static hasMany =[addressLocation:AddressLocationInfo]
 

    static constraints = {
  adId()
  adalId()
  adFirstName()
  adMiddleName()
  adLastName()
  adBirthDate()
  adBirthCertificateNumber()
  adBirthCertificateNumberPic()
  adNationalIdNumber()
  adNationalIdNumberPic()
  adPassportNumber()
  adPassportNumberPic()
  adSexStatus()
  adMobileNumber()
  adLandNumber()
  adEMail()
  adWeb()
  adWifeOrHaFullName()
  adWifeOrHusbandNationalId()
  adFamilySize()
  adEducationLevel()
  adJobId()
  adJobStatus()
  adJobPosition()
  adJobProvider()
  adJobType()
  adJoiningDate()
  adFatherFullName()
  adFatherNationalId()
  adMotherFullName()
  adMotherNationalId()

    }
    
    String toString() {
        "${adId}"
    }
 static mapping = {
      table 'addressinfo'
      version false
  
 columns {
  adId column:'ad_id'
  adalId cloumn:'adal_id'
  adFirstName column:'ad_fir_name'
  adMiddleName column:'ad_mid_name'
  adLastName column:'ad_las_name'
  adBirthDate column:'ad_bir_date'
  adBirthCertificateNumber column:'ad_bc_num'
  adBirthCertificateNumberPic column:'ad_bc_num_pic'
  adNationalIdNumber column:'ad_nid_num'
  adNationalIdNumberPic column:'ad_nid_pic'
  adPassportNumber column:'ad_pass_num'
  adPassportNumberPic column:'ad_pass_num_pic'
  adSexStatus column:'ad_sex_status'
  adMobileNumber column:'ad_mo_num'
  adLandNumber column:'ad_la_num'
  adEMail column:'ad_email'
  adWeb column:'ad_web'
  adWifeOrHaFullName column:'ad_worh_name'
  adWifeOrHusbandNationalId column:'ad_worh_nid'
  adFamilySize column:'ad_fa_size'
  adEducationLevel column:'ad_edu_level'
  adJobId column:'ad_job_id'
  adJobStatus column:'ad_job_status'
  adJobPosition column:'ad_job_pos'
  adJobProvider column:'ad_job_pro'
  adJobType column:'ad_job_type'
  adJoiningDate column:'ad_joi_date'
  adFatherFullName column:'ad_faf_name'
  adFatherNationalId column:'ad_fa_nid'
  adMotherFullName column:'ad_mof_name'
  adMotherNationalId column:'ad_wo_nid'
 
  
   

      }
  }
}
