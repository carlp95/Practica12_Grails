package practica12_grails

class HomeController {

    def index() {
        [departments: Department.list()]
    }

}
