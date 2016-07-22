package com.mail.grailsangular

import grails.plugin.asyncmail.AsynchronousMailService

class MailController {

    AsynchronousMailService asynchronousMailService
    def index() { }

    def sendSampleMail(){
        asynchronousMailService.sendMail {
            to "shresthaankit7@gmail.com"
            subject "Hello test memail"
            body 'This is a test mail'
        }
    }
}
