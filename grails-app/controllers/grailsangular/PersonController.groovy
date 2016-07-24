package grailsangular

class PersonController {

    def index() {
        def list = Person.getAll()
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
