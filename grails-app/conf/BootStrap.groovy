import cms.Codes
class BootStrap {

    def init = { servletContext ->
        new Codes(name: "root").save(flush: true)
    }
    def destroy = {
    }
}
