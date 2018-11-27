package practica12_grails

class Category {

    String name
    Date created
    Date lastUpdated
    String byUser
    static hasMany = [contacts : Contact]
    static constraints = {
        byUser(nullable: false, display: false, editable: false)
        lastUpdated(display: false, editable: false)
        created(display: false, editable: false)
    }

    String toString(){
        name
    }
}
