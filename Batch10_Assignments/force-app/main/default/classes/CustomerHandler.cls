public  class CustomerHandler {

/*Assinment Week6   10/16/2022
 PART 1__Whenever a new Customer is created, create following default Payment records
- Amount = $0.1, Mode = Online
- Amount = $1, Mode = Crypto   */
//  code yazdiktan sonra org da yeni customer create et ve kodumuzun calistigini gor

   public static void newPayments(List<customers__c> cstTriggerNew) {
       List<Payments__c> newPaym = new List<Payments__c>();

       for (customers__c  eachCust : cstTriggerNew) {
           payments__c pym = new payments__c();
           pym.mode__c = 'Online';
           pym.amount__c = 0.1;
           pym.Customers__c = eachCust.Id;
           newPaym.add(pym);           
        
           payments__c pym2 = new payments__c();
           pym2.mode__c = 'Crypto';
           pym2.amount__c = 1;
           pym2.Customers__c = eachCust.Id;
           newPaym.add(pym2);
           
       }
       
    if (!newPaym.isEmpty()) {
        System.debug('Check new payment is empty or not');
         insert newPaym;   
    }       
   }

//=============================================================================
/* PART 2 __Whenever Active Customers are deleted, all the corresponding payments should be deleted.  */

public static void deleteActiveCustomer(List<Customers__c > triggerOld) {
    Set<Id> cstActiveIds = new Set<Id>();
    for (Customers__c eachCustomer : triggerOld) {
        if (eachCustomer.Active__c == true) {
            cstActiveIds.add(eachCustomer.Id);                            
        }
        System.debug('This is set of Ids '  + cstActiveIds);

        List<payments__c>  activePym = [SELECT id from payments__c WHERE Customers__c IN : cstActiveIds];
            if ( !activePym.isEmpty()) {
                system.debug(activePym);
                delete activePym;                
            }        
    }
    }// org da yeni customer create et active tikli olsun.sonra related ten payment number ini  akilinda tur.
    //sonra bu recordu sil. cehck etmek icin payment a git ve silinmis diye bak

    //=============================================================================

  /* PART 3__ Whenever In Active Customers are deleted, all the corresponding online payment records
should be deleted  */

public static void deleteInActiveCustomer(List<Customers__c > triggerOld) {
    Set<Id> cstActiveIds = new Set<Id>();
    for (Customers__c eachCustomer : triggerOld) {
        if (eachCustomer.Active__c == false) {
            cstActiveIds.add(eachCustomer.Id);                            
        }
        System.debug('This is set of Ids '  + cstActiveIds);

        List<payments__c>  InactivePym = [SELECT id from payments__c WHERE Customers__c IN : cstActiveIds AND Mode__c = 'Online'];
            if ( !inActivePym.isEmpty()) {
                system.debug(inActivePym);
                delete inActivePym;                
            }        
    }
}
}