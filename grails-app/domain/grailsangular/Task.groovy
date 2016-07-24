package grailsangular

class Task {

    String taskName;
    int deadLine;

    static hasMany = [subTasks: SubTask]

    static belongsTo = [person: Person]

    static constraints = {
    }

    static mapping = {
        version false;
        autoTimestamp false;
        table 'Tasks'

    }
}
