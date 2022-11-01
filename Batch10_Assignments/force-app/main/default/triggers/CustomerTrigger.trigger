trigger CustomerTrigger on Customers__c (after insert, before delete) {
    if (trigger.isAfter && trigger.isInsert) {
         CustomerHandler.newPayments(trigger.new);        
    }
    if (trigger.isBefore && trigger.isDelete) {
        CustomerHandler.deleteActiveCustomer(trigger.Old);
        CustomerHandler.deleteInActiveCustomer(trigger.old);
        
    }

}