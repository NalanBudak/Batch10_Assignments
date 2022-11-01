public class PaymentsTriggerHandler {
   public static void updateTotalAmount(List<Payments__c> triggerNew ) {
       set<Id> customerIds = new Set<Id>();    
       for (Payments__c eachpymnt : triggerNew) {
             customerIds.add(eachpymnt.Customers__c);           
       } 
       List<Customers__c> listUpdate= [SELECT id , Total_Amount__c,(SELECT Id, Amount__c FROM Payments__r) FROM Customers__c WHERE id IN : customerIds];
       List<customers__c> insertCustomer = new List<customers__c>()   ;
       
       for (Customers__c eachCust : listUpdate) {
               decimal totalAmount =0;
               for (Payments__c eachPymnt : eachCust.Payments__r ) {
                   totalAmount = totalAmount + eachPymnt.Amount__c;                  
                   
               }
               eachCust.Total_Amount__c	 = totalAmount;
               insertCustomer.add(eachCust);                            
           }
           if (! customerIds.isEmpty()) {
               update insertCustomer;
               
           }
       }
}

/** Assignment Week6  
 * PART 4 
 * Create a field in Customer object called ‘Total Amount’ - this field should be auto-updated
when payments are created/updated/deleted (NO UNDELETE SCENARIO   */
