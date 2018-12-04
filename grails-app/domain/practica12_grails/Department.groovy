package practica12_grails

class Department {

    String name
    Date dateCreated
    Date lastUpdated
    String byUser

    static hasMany = [contacts : Contact, users: User]
    static belongsTo = [Contact, User]

    static constraints = {
        name unique: true, blank: false
        byUser(display:false, editable:false, nullable: true)
    }
    String toString(){
        name
    }
}
