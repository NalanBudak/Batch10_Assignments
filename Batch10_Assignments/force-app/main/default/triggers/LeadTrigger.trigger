//Assignment week5 10/09/2022
trigger LeadTrigger on Lead (before insert,before update, after insert, after update) {
    //QUESTION2-
    //  1-Whenever Lead is created with LeadSource as Web then show "Rating should be Cold"
    //    message otherwise show "Rating should be hot".
    if (trigger.isBefore && trigger.isInsert) {
        for (lead  eachLead : trigger.new) {
            if (eachLead.LeadSource == 'Web' ) {//double equal sign for check the condition for if statement
                System.debug('Rating should be Cold');
            }
            else  {
                System.debug('Rating should be hot');                
            }            
        }        
    }


}