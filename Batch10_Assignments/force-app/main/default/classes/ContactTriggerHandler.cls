public class ContactTriggerHandler {
    // WEEK6 Extra Assignment
    /* Question 1   Part 4
        When a new contact is created for an existing account then set contact
         other phone as account phone   */
            public static void updateContactsPhone(List<Contact> newCon) {
                Set<Id> ids = new Set<Id>();
                for (Contact eachCon : newCon) {
                  ids.add(eachCon.AccountId);  
                }
                List<Account> acc = [SELECT Id, Phone FROM Account WHERE Id in :ids];
                Map<id, Account> mapAccIdAcc = new map<id, Account>();
                for (Account variable : acc) {
                    mapAccIdAcc.put(variable.id, variable);
                }
                
                for (Contact eachCon : newCon) {
                    id accId = eachCon.AccountId;
                    eachCon.OtherPhone = mapAccIdAcc.get(accId).Phone;
                  }
            }
        
        }
