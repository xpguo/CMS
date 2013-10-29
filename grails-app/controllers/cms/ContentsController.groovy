package cms

import org.springframework.dao.DataIntegrityViolationException

/**
 * ContentsController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class ContentsController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [contentsInstanceList: Contents.list(params), contentsInstanceTotal: Contents.count()]
    }

    def create() {
        println new Contents().class.name.substring(new Contents().class.name.lastIndexOf(".") + 1).toLowerCase()
        [contentsInstance: new Contents(params)]
    }

    def save() {
        def contentsInstance = new Contents(params)
        if (!contentsInstance.save(flush: true)) {
            render(view: "create", model: [contentsInstance: contentsInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'contents.label', default: 'Contents'), contentsInstance.id])
        redirect(action: "show", id: contentsInstance.id)
    }

    def show() {
        def contentsInstance = Contents.get(params.id)
        if (!contentsInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'contents.label', default: 'Contents'), params.id])
            redirect(action: "list")
            return
        }

        [contentsInstance: contentsInstance]
    }

    def edit() {
        def contentsInstance = Contents.get(params.id)
        if (!contentsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'contents.label', default: 'Contents'), params.id])
            redirect(action: "list")
            return
        }

        [contentsInstance: contentsInstance]
    }

    def update() {
        def contentsInstance = Contents.get(params.id)
        if (!contentsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'contents.label', default: 'Contents'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (contentsInstance.version > version) {
                contentsInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'contents.label', default: 'Contents')] as Object[],
                          "Another user has updated this Contents while you were editing")
                render(view: "edit", model: [contentsInstance: contentsInstance])
                return
            }
        }

        contentsInstance.properties = params

        if (!contentsInstance.save(flush: true)) {
            render(view: "edit", model: [contentsInstance: contentsInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'contents.label', default: 'Contents'), contentsInstance.id])
        redirect(action: "show", id: contentsInstance.id)
    }

    def delete() {
        def contentsInstance = Contents.get(params.id)
        if (!contentsInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'contents.label', default: 'Contents'), params.id])
            redirect(action: "list")
            return
        }

        try {
            contentsInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'contents.label', default: 'Contents'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'contents.label', default: 'Contents'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
