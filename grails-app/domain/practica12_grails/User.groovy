package practica12_grails

class User {

    String username
    String name
    String lastName
    String password

    static hasOne = [roles : Role]

    static constraints = {
        username(blank: false)
        name(blank: false)
        lastName(blank: false)
        password(blank: false)
    }
}
