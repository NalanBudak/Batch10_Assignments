trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, before update, after insert, after update ) {
//Day 15 Daily assignment practice
if (trigger.isBefore && trigger.isInsert) { //yeni record cretae edersen ilk 2 if blogu calisir
    System.debug('BEFORE INSERT  CALLED');
   }
if (trigger.isAfter && trigger.isInsert) {
    System.debug('AFTER INSERT CALLED');
    
}
if (trigger.isBefore && trigger.isUpdate) {  // recordu update edersen son 2 if blogu calisir
    System.debug('BEFORE UPDATE CALLED');
   }
if (trigger.isAfter && trigger.isUpdate) {
    System.debug(' AFTER UPDATE CALLED');
    
}
}





/*

    if (trigger.isBefore) {  
        if (trigger.isInsert) {
          System.debug('Before Insert Trigger called');        
    }
        if (trigger.isUpdate) {
          system.debug('Before Update trigger called' );        
    }
}

    if (trigger.isAfter) {
        if (trigger.isInsert) {
            System.debug('After Insert Trigger called');            
        }
        if (trigger.isUpdate) {
            system.debug('After Update Trigger called');            
        }        
    }
*/

//DAY 15 Assignment

/*  Create a trigger on Salesforce_Project__c

---Trigger should work on before update, before insert, after insert, after 
update.

---Add multiple if conditions using context variable for insert, update, 
before and after and add system.debug() statement under every 
condition.

--Try Creating New record for Salesforce_Project__c object. You should be 
able to see logs for before insert and after Insert.

--Try Updating existing record for Salesforce_Project__c object. You 
should be able to see logs for before update and after update    */