package cms

import org.springframework.dao.DataIntegrityViolationException

class ContentsController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [contentsInstanceList: Contents.list(params), contentsInstanceTotal: Contents.count()]
    }

    def create() {
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

    def show(Long id) {
        def contentsInstance = Contents.get(id)
        if (!contentsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'contents.label', default: 'Contents'), id])
            redirect(action: "list")
            return
        }

        [contentsInstance: contentsInstance]
    }

    def edit(Long id) {
        def contentsInstance = Contents.get(id)
        if (!contentsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'contents.label', default: 'Contents'), id])
            redirect(action: "list")
            return
        }

        [contentsInstance: contentsInstance]
    }

    def update(Long id, Long version) {
        def contentsInstance = Contents.get(id)
        if (!contentsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'contents.label', default: 'Contents'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
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

    def delete(Long id) {
        def contentsInstance = Contents.get(id)
        if (!contentsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'contents.label', default: 'Contents'), id])
            redirect(action: "list")
            return
        }

        try {
            contentsInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'contents.label', default: 'Contents'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'contents.label', default: 'Contents'), id])
            redirect(action: "show", id: id)
        }
    }
}
