package urbandevelopmentinformation



import grails.test.mixin.*
import spock.lang.*

@TestFor(UnitInfoOwnershipInfoController)
@Mock(UnitInfoOwnershipInfo)
class UnitInfoOwnershipInfoControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.unitInfoOwnershipInfoInstanceList
            model.unitInfoOwnershipInfoInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.unitInfoOwnershipInfoInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def unitInfoOwnershipInfo = new UnitInfoOwnershipInfo()
            unitInfoOwnershipInfo.validate()
            controller.save(unitInfoOwnershipInfo)

        then:"The create view is rendered again with the correct model"
            model.unitInfoOwnershipInfoInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            unitInfoOwnershipInfo = new UnitInfoOwnershipInfo(params)

            controller.save(unitInfoOwnershipInfo)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/unitInfoOwnershipInfo/show/1'
            controller.flash.message != null
            UnitInfoOwnershipInfo.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def unitInfoOwnershipInfo = new UnitInfoOwnershipInfo(params)
            controller.show(unitInfoOwnershipInfo)

        then:"A model is populated containing the domain instance"
            model.unitInfoOwnershipInfoInstance == unitInfoOwnershipInfo
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def unitInfoOwnershipInfo = new UnitInfoOwnershipInfo(params)
            controller.edit(unitInfoOwnershipInfo)

        then:"A model is populated containing the domain instance"
            model.unitInfoOwnershipInfoInstance == unitInfoOwnershipInfo
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/unitInfoOwnershipInfo/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def unitInfoOwnershipInfo = new UnitInfoOwnershipInfo()
            unitInfoOwnershipInfo.validate()
            controller.update(unitInfoOwnershipInfo)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.unitInfoOwnershipInfoInstance == unitInfoOwnershipInfo

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            unitInfoOwnershipInfo = new UnitInfoOwnershipInfo(params).save(flush: true)
            controller.update(unitInfoOwnershipInfo)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/unitInfoOwnershipInfo/show/$unitInfoOwnershipInfo.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/unitInfoOwnershipInfo/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def unitInfoOwnershipInfo = new UnitInfoOwnershipInfo(params).save(flush: true)

        then:"It exists"
            UnitInfoOwnershipInfo.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(unitInfoOwnershipInfo)

        then:"The instance is deleted"
            UnitInfoOwnershipInfo.count() == 0
            response.redirectedUrl == '/unitInfoOwnershipInfo/index'
            flash.message != null
    }
}
