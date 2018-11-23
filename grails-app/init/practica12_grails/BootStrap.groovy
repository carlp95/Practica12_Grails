package practica12_grails

class BootStrap {

//    def springSecurityService

    def init = { servletContext ->
//        new User(username: "admin", name: "Juanito", lastName: "Rodríguez", password: "admin1234").save(failOnError: true)
        def admin_role = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
        def accountant_role = Role.findOrSaveWhere(authority: 'ROLE_ACCOUNTANT')
        def ti_role = Role.findOrSaveWhere(authority: 'ROLE_TI')
        def hr_role = Role.findOrSaveWhere(authority: 'ROLE_HUMANR')
        def admin = new User(username: 'admin', name: 'Juanito', lastname: 'Rodríguez',
                password: 'admin123', email: 'admin@banagreen.me').save(failOnError: true)

        UserRole.create(admin,admin_role)
    }
    def destroy = {
    }
}
