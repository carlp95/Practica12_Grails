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
    Date dateCreated
    Date lastUpdated
    String byUser


    static belongsTo = [category: Category]
    static hasMany = [departments: Department]

    static constraints = {
        name(blank: false)
        lastName(blank: false)
        email email: true, unique: true
        phone blank: false, maxSize: 10, matches: "^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\\s\\./0-9]*\$"
        address(blank: false)
        work_position(blank: false)
        mobile blank: false, unique: true, maxSize: 10, matches: "^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\\s\\./0-9]*\$"
        category(blank: false)
//        created display: false, editable: false
        byUser(nullable: false, display: false, editable: false)
    }

    String toString(){
        name + " " + lastName
    }
}
