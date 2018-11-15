package practica12_grails

class Contact {

    String name
    String lastName
    String email
    String phone
    String address
    String work_position
    String mobile
    Category category
    Date created
    Date lastUpdated
    String byUser


    static belongsTo = [category: Category]
    static hasMany = [departmentList: Department]

    static constraints = {
        name(blank: false)
        lastName(blank: false)
        email(email: true)
        phone(blank: false)
        address(blank: false)
        work_position(blank: false)
        mobile(blank: false)
        category(blank: false)
        byUser(nullable: false)
    }
}
