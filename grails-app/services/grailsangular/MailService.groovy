package grailsangular

import grails.plugin.asyncmail.AsynchronousMailService
import grails.transaction.Transactional

@Transactional
class MailService {

    AsynchronousMailService asynchronousMailService

    public sendMail(String template,String emailSubject,String receiver,Map map) {
        asynchronousMailService.sendMail {
            to receiver
            subject emailSubject
            body (view:template,model:[body:map])
        }
    }

    public sendMultipleMail(String template,String emailSubject,List receivers,Map map){
        asynchronousMailService.sendMail {
            to receivers
            subject emailSubject
            body (view:template,model:[body:map])
        }
    }
}
