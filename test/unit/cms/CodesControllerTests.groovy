package cms



import org.junit.*
import grails.test.mixin.*

@TestFor(CodesController)
@Mock(Codes)
class CodesControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/codes/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.codesInstanceList.size() == 0
        assert model.codesInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.codesInstance != null
    }

    void testSave() {
        controller.save()

        assert model.codesInstance != null
        assert view == '/codes/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/codes/show/1'
        assert controller.flash.message != null
        assert Codes.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/codes/list'

        populateValidParams(params)
        def codes = new Codes(params)

        assert codes.save() != null

        params.id = codes.id

        def model = controller.show()

        assert model.codesInstance == codes
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/codes/list'

        populateValidParams(params)
        def codes = new Codes(params)

        assert codes.save() != null

        params.id = codes.id

        def model = controller.edit()

        assert model.codesInstance == codes
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/codes/list'

        response.reset()

        populateValidParams(params)
        def codes = new Codes(params)

        assert codes.save() != null

        // test invalid parameters in update
        params.id = codes.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/codes/edit"
        assert model.codesInstance != null

        codes.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/codes/show/$codes.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        codes.clearErrors()

        populateValidParams(params)
        params.id = codes.id
        params.version = -1
        controller.update()

        assert view == "/codes/edit"
        assert model.codesInstance != null
        assert model.codesInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/codes/list'

        response.reset()

        populateValidParams(params)
        def codes = new Codes(params)

        assert codes.save() != null
        assert Codes.count() == 1

        params.id = codes.id

        controller.delete()

        assert Codes.count() == 0
        assert Codes.get(codes.id) == null
        assert response.redirectedUrl == '/codes/list'
    }
}
