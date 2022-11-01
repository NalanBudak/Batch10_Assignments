public class AccountTriggerHandler {
   /* public static void updateAccountDescription(list<account> accTriggerNew, list<account> accTriggerOld, map<id, account> accTriggerNewMap, map<id, account> accTriggerOldMap) {
        for(Account eachAcc : accTriggerNew){
            Boolean updateDesc = false;

            if(accTriggerOldMap == null && eachAcc.Active__c == 'Yes'){
                updateDesc = true;
            }
            if(accTriggerOldMap != null){
                if(eachAcc.active__c == 'Yes' && accTriggerOldMap.get(eachAcc.id).active__c != accTriggerNewMap.get(eachAcc.id).active__c){
                    updateDesc=true;
                }
                if(updateDesc)
                     eachAcc.Description = 'Account is now active. Islem Tamam!';
            }
        }
    }
*/  // ustteki kod UI da description bos geliyor, Kod calismiyor



    //=========================================================================

   public static void createContactForAccount(List<Account> newAccList) {
     List<Contact> lstContact = new List<Contact>();
        for (account eachAccount : newAccList) {
           Contact newContact = new Contact();
           newContact.LastName = eachAccount.Name;
           newContact.Phone = eachAccount.Phone;
           newContact.AccountId = eachAccount.Id;  
           lstContact.add(newContact);          
           
       }       
       if (lstContact.size() > 0) {
           insert lstContact;           
       }
   }
   ////Assignment WEEK 6- EXTRA
/* QUESTION 1- 
   Part1
/*Whenever a New Account Record is created, an associated Contact Record must be created
automatically. Contact record fields as below:
- Account name as Contact last name
- Account phone as contact phone   */
//=========================================================================

public static void updateAllOpps(List<Account> newAccList) {
    List<Opportunity> newOpps = [select id, name, stageName FROM Opportunity WHERE AccountId IN :newAccList AND stageName != 'Closed Won'];
    List<Opportunity> updatedOppsList = new List<Opportunity>();
    if (newOpps.size() > 0 && !newOpps.isEmpty()) {     
    
    for (opportunity eachOpp : newOpps) {
        eachOpp.StageName = 'Closed Lost';
        updatedOppsList.add(eachopp);
    }        
    }    
    update updatedOppsList;
}


/*Part2
 Write a trigger on the Account when the Account is updated, check all opportunities related to
the account. Update all Opportunity Stage to close lost if stage name not already set to closed
won.  */
//=========================================================================

public static void updatePhone(Map<Id, Account> newMapList, Map<Id, Account> oldMapList) { //ayni id ler gelecek cunku ID ler hicbir zman degismez , account isimler farkli gelecbilir
   Set<Id> setIds = new set<Id>();
    for (ID ids  : oldMapList.keySet()) { //
        Account oldAcc = oldMapList.get(ids);
        Account newAcc = newMapList.get(ids);

        if (oldAcc.Phone != newAcc.Phone) {
            setIds.add(ids);            
        }        
    }
    // all contacts for the accounts where phone is updated
    List<Contact> lstContact = [SELECT otherPhone, mobilePhone, accountId FROM Contact WHERE AccountId IN : setIds];
    for (Contact eachContact : lstContact) {
        eachContact.OtherPhone = oldMapList.get(eachContact.AccountId).Phone;
        eachContact.MobilePhone = newMapList.get(eachContact.AccountId).Phone;        
    }
    update lstContact;
    
}
/* Part3
Whenever an Account phone number is modified, update all the contacts of the Account as
follows:
- Contacts otherPhone as Old phone no of account
- Contacts mobilePhone as New phone no of Account   */
//=========================================================================
        
}

