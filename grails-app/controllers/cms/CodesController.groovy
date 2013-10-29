package cms

import org.springframework.dao.DataIntegrityViolationException

class CodesController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
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

    def show(Long id) {
        def codesInstance = Codes.get(id)
        if (!codesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'codes.label', default: 'Codes'), id])
            redirect(action: "list")
            return
        }

        [codesInstance: codesInstance]
    }

    def edit(Long id) {
        def codesInstance = Codes.get(id)
        if (!codesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'codes.label', default: 'Codes'), id])
            redirect(action: "list")
            return
        }

        [codesInstance: codesInstance]
    }

    def update(Long id, Long version) {
        def codesInstance = Codes.get(id)
        if (!codesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'codes.label', default: 'Codes'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
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

    def delete(Long id) {
        def codesInstance = Codes.get(id)
        if (!codesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'codes.label', default: 'Codes'), id])
            redirect(action: "list")
            return
        }

        try {
            codesInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'codes.label', default: 'Codes'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'codes.label', default: 'Codes'), id])
            redirect(action: "show", id: id)
        }
    }
}
