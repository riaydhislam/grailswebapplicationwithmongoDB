<%@ page import="urbandevelopmentinformation.AddressLocationInfo" %>



<div class="fieldcontain ${hasErrors(bean: addressLocationInfoInstance, field: 'alId', 'error')} required">
	<label for="alId">
		<g:message code="address.locationInfo.alId.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:field name="alId" type="number" value="${addressLocationInfoInstance.alId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressLocationInfoInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="addressLocationInfo.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="address" name="address.id" from="${urbandevelopmentinformation.AddressInfo.list()}" optionKey="id" required="" value="${addressLocationInfoInstance?.address?.id}" class="many-to-one"/>

</div>


<div class="fieldcontain ${hasErrors(bean: addressLocationInfoInstance, field: 'adId', 'error')} required">
	<label for="adId">
		<g:message code="adId.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:field name="adId" type="number" value="${addressLocationInfoInstance.adId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressLocationInfoInstance, field: 'alReferenceId', 'error')} required">
	<label for="alReferenceId">
	
		<g:message code="addressLocationInfo.alReferenceId.label" default="Al Reference Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="alReferenceId" type="number" value="${addressLocationInfoInstance.alReferenceId}" required=""/>
	<g:link controller="databaseInfoImpl2" action="getAddressLocationData">
    <input type="button" value="<g:message code="addresslocation.search.label"/>" > </g:link>
    
</div>

<div class="fieldcontain ${hasErrors(bean: addressLocationInfoInstance, field: 'alType', 'error')} required">
	<label for="alType">
		<g:message code="addressLocationInfo.alType.label" default="Al Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="alType" from="${[
    message(code:'address.location.personal.private.label'),
    message(code:'address.location.personal.official.label'),
    message(code:'address.location.personal.other.label'),
       message(code:'address.location.plot.label'),
    message(code:'address.location.building.label'),
    message(code:'address.location.floor.label'),
    message(code:'address.location.unit.label')
     ]}" onSelection="${[(null):message(code:'general.any')] }"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressLocationInfoInstance, field: 'alThanaCode', 'error')} required">
	<label for="alThanaCode">
		<g:message code="addressLocationInfo.alThanaCode.label" default="Al Thana Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="alThanaCode" type="number" value="${addressLocationInfoInstance.alThanaCode}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressLocationInfoInstance, field: 'alDistictCode', 'error')} required">
	<label for="alDistictCode">
		<g:message code="addressLocationInfo.alDistictCode.label" default="Al Distict Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="alDistictCode" type="number" value="${addressLocationInfoInstance.alDistictCode}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressLocationInfoInstance, field: 'alDivisionName', 'error')} required">
	<label for="alDivisionName">
		<g:message code="addressLocationInfo.alDivisionName.label" default="Al Division Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="alDivisionName" required="" value="${addressLocationInfoInstance?.alDivisionName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressLocationInfoInstance, field: 'alDistictName', 'error')} required">
	<label for="alDistictName">
		<g:message code="addressLocationInfo.alDistictName.label" default="Al Distict Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="alDistictName" required="" value="${addressLocationInfoInstance?.alDistictName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressLocationInfoInstance, field: 'alUpzillaOrThanaName', 'error')} required">
	<label for="alUpzillaOrThanaName">
		<g:message code="addressLocationInfo.alUpzillaOrThanaName.label" default="Al Upzilla Or Thana Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="alUpzillaOrThanaName" required="" value="${addressLocationInfoInstance?.alUpzillaOrThanaName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressLocationInfoInstance, field: 'alUnionName', 'error')} required">
	<label for="alUnionName">
		<g:message code="addressLocationInfo.alUnionName.label" default="Al Union Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="alUnionName" required="" value="${addressLocationInfoInstance?.alUnionName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressLocationInfoInstance, field: 'alWardNumber', 'error')} required">
	<label for="alWardNumber">
		<g:message code="addressLocationInfo.alWardNumber.label" default="Al Ward Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="alWardNumber" required="" value="${addressLocationInfoInstance?.alWardNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressLocationInfoInstance, field: 'alBlockNumber', 'error')} required">
	<label for="alBlockNumber">
		<g:message code="addressLocationInfo.alBlockNumber.label" default="Al Block Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="alBlockNumber" required="" value="${addressLocationInfoInstance?.alBlockNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressLocationInfoInstance, field: 'alSectionNumber', 'error')} required">
	<label for="alSectionNumber">
		<g:message code="addressLocationInfo.alSectionNumber.label" default="Al Section Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="alSectionNumber" required="" value="${addressLocationInfoInstance?.alSectionNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressLocationInfoInstance, field: 'alRoadName', 'error')} required">
	<label for="alRoadName">
		<g:message code="addressLocationInfo.alRoadName.label" default="Al Road Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="alRoadName" required="" value="${addressLocationInfoInstance?.alRoadName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressLocationInfoInstance, field: 'alRoadType', 'error')} required">
	<label for="alRoadType">
		<g:message code="addressLocationInfo.alRoadType.label" default="Al Road Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="alRoadType" required="" value="${addressLocationInfoInstance?.alRoadType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressLocationInfoInstance, field: 'alRoadNumber', 'error')} required">
	<label for="alRoadNumber">
		<g:message code="addressLocationInfo.alRoadNumber.label" default="Al Road Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="alRoadNumber" required="" value="${addressLocationInfoInstance?.alRoadNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressLocationInfoInstance, field: 'alBuildingNumber', 'error')} required">
	<label for="alBuildingNumber">
		<g:message code="addressLocationInfo.alBuildingNumber.label" default="Al Building Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="alBuildingNumber" required="" value="${addressLocationInfoInstance?.alBuildingNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressLocationInfoInstance, field: 'alBuildingFloorNumber', 'error')} required">
	<label for="alBuildingFloorNumber">
		<g:message code="addressLocationInfo.alBuildingFloorNumber.label" default="Al Building Floor Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="alBuildingFloorNumber" required="" value="${addressLocationInfoInstance?.alBuildingFloorNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressLocationInfoInstance, field: 'alBuildingFloorUnitNumber', 'error')} required">
	<label for="alBuildingFloorUnitNumber">
		<g:message code="addressLocationInfo.alBuildingFloorUnitNumber.label" default="Al Building Floor Unit Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="alBuildingFloorUnitNumber" required="" value="${addressLocationInfoInstance?.alBuildingFloorUnitNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressLocationInfoInstance, field: 'alLocationPic', 'error')} required">
	<label for="alLocationPic">
		<g:message code="addressLocationInfo.alLocationPic.label" default="Al Location Pic" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="alLocationPic" name="alLocationPic" />

</div>



