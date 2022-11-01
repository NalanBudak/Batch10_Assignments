trigger PaymentsTrigger on Payments__c (before insert,after insert, before update,after update, before delete, after delete) {

    if (trigger.isAfter && trigger.isInsert) {
        PaymentsTriggerHandler.updateTotalAmount(trigger.new);
        
    }



}