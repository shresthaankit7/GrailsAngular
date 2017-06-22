package grailsangular

import grails.plugins.rest.client.RestBuilder
import org.springframework.http.HttpStatus

class TaskController {

    def index() { }

    def listTask(){
        println "Here Listing Tasks of Person!!!!" + params.name
        def pId = Person.findByName(params.name)
        def tasks = Task.findAllByPerson(pId)
        println "Tasks::" + tasks
        [taskList: tasks,personName:params.name]
    }

    def saveTask(){
        println "Saving new Task for person!!!!!----- " + params.id + "  Name:::" + params.name
        [id:params.id,name:params.name]
    }

    def save(){

        Person person = Person.findByName(params.personName)
//        println "Person::::" + pId
        println "taskName::" + params.taskName
        println "deadLine::" + params.deadLine

        person.addToTask(new Task(taskName: params.taskName,deadLine: params.deadLine))

        person.save(flush:true,failOnError: true)
    }

    def sendRequest(){
        RestBuilder restBuilder = new RestBuilder();
        def response = restBuilder.get("http://localhost:8080/GrailsAngular/person/")
        if( response.statusCode == HttpStatus.OK){
            render response.text
        }else{
            println "Error in getting response from rest client!"
            render "ERROR getting response"
        }

    }
}
