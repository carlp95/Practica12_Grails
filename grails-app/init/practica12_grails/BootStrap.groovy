package practica12_grails

class BootStrap {

//    def springSecurityService

    def init = { servletContext ->
//        new User(username: "admin", name: "Juanito", lastName: "Rodríguez", password: "admin1234").save(failOnError: true)
        def admin_role = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
        def accountant_role = Role.findOrSaveWhere(authority: 'ROLE_ACCOUNTANT')
        def ti_role = Role.findOrSaveWhere(authority: 'ROLE_TI')
        def hr_role = Role.findOrSaveWhere(authority: 'ROLE_HUMANR')

        def administration_department = new Department(name: 'Administration', created: new Date(), byUser: null).save(failOnError: true)
        def ti_department = new Department(name: 'Information Technology', created: new Date(), byUser: null).save(failOnError:true)

        def admin = new User(username: 'admin', name: 'Juanito', lastname: 'Rodríguez',
                password: 'admin123', email: 'admin@banagreen.me', department: administration_department).save(failOnError: true)

        UserRole.create(admin,admin_role)

        def category = new Category(name: 'Business', created: new Date(), byUser: admin.username).save(failOnError: true)

        def test_contact = new Contact(name: 'Carlos', lastName: 'Pérez Ureña', email: 'carlosperezurena@gmail.com', phone: '8097247726', address: 'Calle 7, #292, Urb. Don José María, Llanos de Gurabo, Santiago',
                work_position: 'Chief', mobile: '8298742286', category: category, created: new Date(),
                byUser: admin.username, departments: [administration_department,ti_department]).save(failOnError: true)

    }
    def destroy = {
    }
}
