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
    static hasMany = [departments: Department]

    static constraints = {
        name(blank: false)
        lastName(blank: false)
        email email: true, unique: true
        phone blank: false
        address(blank: false)
        work_position(blank: false)
        mobile blank: false, unique: true
        category(blank: false)
        byUser(nullable: false, display: false, editable: false)
    }

    String toString(){
        name + " " + lastName
    }
}
