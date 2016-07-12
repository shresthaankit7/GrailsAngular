package grailsangular

class Task {

    String taskName;
    int deadLine;

    static hasMany = [subTasks: SubTask]

    static constraints = {
    }

    static mapping = {
        version false;
        autoTimestamp false;
        table 'Tasks'

    }
}
