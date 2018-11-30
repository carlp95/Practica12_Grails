package practica12_grails

import org.springframework.security.access.annotation.Secured

@Secured(['ROLE_ADMIN', 'ROLE_ACCOUNTANT', 'ROLE_TI', 'ROLE_HUMANR'])
class HomeController {

    def index() {
//        [user: (User) applicationContext.springSecurityService.getCurrentUser()]
//        def departments = Department.list()

//        [departmentsColumns: Department.list(), departmentsData: Contact.findAllByDepartments(Department.list() as Set<Department>)]

        def date = new Date()
        def calendar = GregorianCalendar.getInstance()
        calendar.setTime(date)

        def departments = Department.findAll()
        def departmentList = []

        departments.each {
            departmentList.add(['string',it.name])
        }

        def contacts = Contact.findAll()
        def contact_department_list = []

        contacts.each {
            def tempContact = it.name
            it.departments.each {
                contact_department_list.add([it.name,tempContact])
            }
        }

        [user: (User) applicationContext.springSecurityService.getCurrentUser(),departmentsColumns: departmentList,
         departmentsData: contact_department_list ,hour: calendar.get(calendar.HOUR_OF_DAY)]
    }

}
