package practica12_grails

import org.springframework.security.access.annotation.Secured

@Secured(['ROLE_ADMIN', 'ROLE_ACCOUNTANT', 'ROLE_TI', 'ROLE_HUMANR'])
class HomeController {

    def index() {
        [user: (User) applicationContext.springSecurityService.getCurrentUser() ,departments: Department.list()]

    }

}
