package practica12_grails

class Category {

    String name
    Date created
    Date lastUpdated
    String byUser

    static hasMany = [contacts : Contact]
    static constraints = {
        byUser(nullable: false)
    }

    String toString(){
        name
    }
}
