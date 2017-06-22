package grailsangular

import groovy.sql.Sql

class PersonController {

    def dataSource

    static counter = 0;

    def index() {

        println "Current Thread:::" + Thread.currentThread().toString()

        Sql sql = new Sql(dataSource)
        def sum = 0;

/*
            //Async way is depreciated now.
            def tasks = callTask.collect{z->
            task{
                println "Calling Stored Procedure::: " + z + "  Current Thread::" + Thread.currentThread().toString()

                if(z == 1){
                    def row = sql.rows("{call Proc_1()}");
                    sum = sum + Integer.parseInt(row[0].get("output").toString());
                }else if( z == 2){
                    def row = sql.rows("{call Proc_2()}");
                    sum = sum + Integer.parseInt(row[0].get("output").toString());
                }else if( z == 3){
                    def row = sql.rows("{call Proc_3()}");
                    sum = sum + Integer.parseInt(row[0].get("output").toString());
                }else if( z == 4){
                    def row = sql.rows("{call Proc_4()}");
                    sum = sum + Integer.parseInt(row[0].get("output").toString());
                }

                sql.close()

            }
        }
        waitAll(tasks)
*/


        def row = sql.rows("{call Proc_1()}");
        sum = sum + Integer.parseInt(row[0].get("output").toString());


        counter++;
        println "Count::: " + counter
        render sum
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
