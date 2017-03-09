package grailsangular

class PersonController {

    def dataSource

    def index() {
        def list = Person.getAll()
        println("HERE!!!!")
        [list:list]
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
