package grailsangular

import groovy.sql.Sql

class PersonController {

    def dataSource

    def index() {

//        def task1 = task {
//            println "task1 - starting"
//            Thread.sleep(5000)
//            println "task1 - ending"
//        }
//        def task2 = task {
//            println "task2 - starting"
//            Thread.sleep(1000)
//            println "task2 - ending"
//        }
//        waitAll(task1, task2)

        [1,2,3,4].each { i ->
            println "Value::" + i
        }

        try {
            Sql sql = new Sql(dataSource)
            def row = sql.rows("{call Proc_1()}");

            println "OUTPUT:::" + row[0].get("output")

        }catch (Exception e){
            e.printStackTrace()
        }




//        def list = Person.getAll()
//        println("HERE!!!!")
//        [list:list]
    }

    def newPerson(){
        //form page
    }

    def save(){
        println "Parameters::" + params
        def p = new Person(params)
        p.save()
        render "successfully added"
    }
}
