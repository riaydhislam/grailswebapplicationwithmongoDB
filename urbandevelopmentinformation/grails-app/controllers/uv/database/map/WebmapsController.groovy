package uv.database.map
import urbandevelopmentinformation.PlotInfo


class WebmapsController {

    def index = {
    redirect(action:"createVectorLayer")
  }
     def drawfeatures = {}
  def exportmap={}
  def getFeatureInfo={}
  def allMaps={}
  def mapQuest={}
  def drawAndModifyFeatures={}
  def viewdynamicdata={}
  def osmandgoogle={}
  def overviewMapControl={}
  def mapRotation={}
  def simpleMaps={}
  def WFSExampleFirst={}
  def WMSExampleFirst={}
  def dragFeatures={}
  def geoserverApplication={}
  def spectrumManagementMapsApplicationTest={}
  def spectrumManagementMapsTemplate={}
  def mapMeasurement={}
  def kmlDataMap={}
  def createVectorLayer={}
  
  def registeredPlotForMapVisualization={
	  
	  
	  def plots = PlotInfo.createCriteria().list (params) {
	   
	   if(params.plId!=null && params.plId?.toString().isLong() ) {
	   Long value=params.plId as Long
	   
	   if (value!=0) {
	   eq('plId',value)
		}
		
	   }
	   
	   
	   if (params.plType!=null) {
		ilike("plType", "%${params.plType}%")
	   }
	   
	   if (params.plMonzaNumber!=null) {
		ilike("plMonzaNumber", "%${params.plMonzaNumber}%")
	   }
	   
	   if (params.plCSNumber!=null) {
		ilike("plCSNumber", "%${params.plCSNumber}%")
	   }
	   
	   if (params.plMSNumber!=null) {
		ilike("plMSNumber", "%${params.plMSNumber}%")
	   }
	   
	  }
	  
	 
	  [plotInfoList: plots,counter:plots.size()]
	  
	 }
}
