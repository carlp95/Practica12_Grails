package practica12_grails

class Department {

    String name
    Date created
    Date lastUpdated
    String byUser

    static hasMany = [contacts : Contact, users: User]
    static belongsTo = [Contact, User]

    static constraints = {
        byUser(nullable: true)
        name unique: true

    }
    String toString(){
        name
    }
}
