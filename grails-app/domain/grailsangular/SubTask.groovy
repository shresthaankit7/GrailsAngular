package grailsangular

class SubTask {

    String subTaskName;
    int deadLine;

    static belongsTo = [task: Task]

    static constraints = {
    }

    static mapping = {
        version false;
        autoTimestamp false;
        table 'SubTasks';
    }
}
