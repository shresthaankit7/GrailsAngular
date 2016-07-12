package grailsangular

class Person {

    String name;
    String address;
    String occupation;

    static hasMany = [task : Task]

    static constraints = {
    }

    static mapping = {
        version false;
        autoTimestamp false;
        table 'Person'
    }
}
