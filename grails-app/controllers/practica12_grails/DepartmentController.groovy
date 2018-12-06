package practica12_grails

import grails.validation.ValidationException
import org.springframework.security.access.annotation.Secured

import static org.springframework.http.HttpStatus.*

@Secured(['ROLE_ADMIN'])
class DepartmentController {

    DepartmentService departmentService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Secured(['permitAll'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond departmentService.list(params), model:[departmentCount: departmentService.count()]
    }

    @Secured(['permitAll'])
    def show(Long id) {
        def user = (User) applicationContext.springSecurityService.getCurrentUser()

        if (user.getAuthorities().toList().find {it.authority == 'ROLE_ADMIN'} && departmentService.get(id).name == 'Administration'){
            respond departmentService.get(id)
        }else if (user.getAuthorities().toList().find {it.authority == 'ROLE_ACCOUNTANT'} && departmentService.get(id).name == 'Accounting'){
            respond departmentService.get(id)
        }else if (user.getAuthorities().toList().find {it.authority == 'ROLE_TI'} && departmentService.get(id).name == 'Information Technology'){
            respond departmentService.get(id)
        }else if (user.getAuthorities().toList().find {it.authority == 'ROLE_HUMANR'} && departmentService.get(id).name == 'Human Resources'){
            respond departmentService.get(id)
        }

    }

    def create() {
        respond new Department(params)
    }

    def save(Department department) {
        if (department == null) {
            notFound()
            return
        }

        try {
            department.byUser = ((User)applicationContext.springSecurityService.getCurrentUser()).username
            departmentService.save(department)
        } catch (ValidationException e) {
            respond department.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'menu.title.department', default: 'Department'), department.name])
                redirect department
            }
            '*' { respond department, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond departmentService.get(id)
    }

    def update(Department department) {
        if (department == null) {
            notFound()
            return
        }

        try {
            departmentService.save(department)
        } catch (ValidationException e) {
            respond department.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'department.label', default: 'Department'), department.id])
                redirect department
            }
            '*'{ respond department, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        departmentService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'department.label', default: 'Department'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'department.label', default: 'Department'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
