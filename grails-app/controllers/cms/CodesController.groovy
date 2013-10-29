package cms

import org.springframework.dao.DataIntegrityViolationException

/**
 * CodesController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class CodesController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [codesInstanceList: Codes.list(params), codesInstanceTotal: Codes.count()]
    }

    def create() {
        [codesInstance: new Codes(params)]
    }

    def save() {
        def codesInstance = new Codes(params)
        if (!codesInstance.save(flush: true)) {
            render(view: "create", model: [codesInstance: codesInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'codes.label', default: 'Codes'), codesInstance.id])
        redirect(action: "show", id: codesInstance.id)
    }

    def show() {
        def codesInstance = Codes.get(params.id)
        if (!codesInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'codes.label', default: 'Codes'), params.id])
            redirect(action: "list")
            return
        }

        [codesInstance: codesInstance]
    }

    def edit() {
        def codesInstance = Codes.get(params.id)
        if (!codesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'codes.label', default: 'Codes'), params.id])
            redirect(action: "list")
            return
        }

        [codesInstance: codesInstance]
    }

    def update() {
        def codesInstance = Codes.get(params.id)
        if (!codesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'codes.label', default: 'Codes'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (codesInstance.version > version) {
                codesInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'codes.label', default: 'Codes')] as Object[],
                          "Another user has updated this Codes while you were editing")
                render(view: "edit", model: [codesInstance: codesInstance])
                return
            }
        }

        codesInstance.properties = params

        if (!codesInstance.save(flush: true)) {
            render(view: "edit", model: [codesInstance: codesInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'codes.label', default: 'Codes'), codesInstance.id])
        redirect(action: "show", id: codesInstance.id)
    }

    def delete() {
        def codesInstance = Codes.get(params.id)
        if (!codesInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'codes.label', default: 'Codes'), params.id])
            redirect(action: "list")
            return
        }

        try {
            codesInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'codes.label', default: 'Codes'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'codes.label', default: 'Codes'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
