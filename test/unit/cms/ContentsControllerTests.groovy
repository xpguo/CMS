package cms



import org.junit.*
import grails.test.mixin.*

@TestFor(ContentsController)
@Mock(Contents)
class ContentsControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/contents/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.contentsInstanceList.size() == 0
        assert model.contentsInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.contentsInstance != null
    }

    void testSave() {
        controller.save()

        assert model.contentsInstance != null
        assert view == '/contents/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/contents/show/1'
        assert controller.flash.message != null
        assert Contents.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/contents/list'

        populateValidParams(params)
        def contents = new Contents(params)

        assert contents.save() != null

        params.id = contents.id

        def model = controller.show()

        assert model.contentsInstance == contents
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/contents/list'

        populateValidParams(params)
        def contents = new Contents(params)

        assert contents.save() != null

        params.id = contents.id

        def model = controller.edit()

        assert model.contentsInstance == contents
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/contents/list'

        response.reset()

        populateValidParams(params)
        def contents = new Contents(params)

        assert contents.save() != null

        // test invalid parameters in update
        params.id = contents.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/contents/edit"
        assert model.contentsInstance != null

        contents.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/contents/show/$contents.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        contents.clearErrors()

        populateValidParams(params)
        params.id = contents.id
        params.version = -1
        controller.update()

        assert view == "/contents/edit"
        assert model.contentsInstance != null
        assert model.contentsInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/contents/list'

        response.reset()

        populateValidParams(params)
        def contents = new Contents(params)

        assert contents.save() != null
        assert Contents.count() == 1

        params.id = contents.id

        controller.delete()

        assert Contents.count() == 0
        assert Contents.get(contents.id) == null
        assert response.redirectedUrl == '/contents/list'
    }
}
