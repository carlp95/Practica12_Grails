package practica12_grails

class Category {

    String name
    Date dateCreated
    Date lastUpdated
    String byUser

    static hasMany = [contacts : Contact]
    static constraints = {
        name nullable: false, blank: false
        byUser(nullable: false, display: true, editable: false)
        lastUpdated(display: false, editable: false)
        dateCreated(display: false, editable: false)
    }

    String toString(){
        name
    }
}
