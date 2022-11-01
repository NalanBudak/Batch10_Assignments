trigger AccountTrigger on Account (before insert, after insert, before update, after update){
    if(trigger.isBefore){
      system.debug('Before insert/update trigger on Account object');
      AccountTriggerHandler.updateAccountDescription(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
  
    } 
    }
  
    /*
    if (trigger.isBefore) {
        for (Account eachAcc : trigger.new) {
            if (trigger.isInsert && eachAcc.Active__c == 'Yes') {
                eachAcc.Description =  'Account is active.Enjoy!!';                
            }
            if(trigger.isUpdate){
            if (eachAcc.Active__c == 'Yes' && trigger.oldMap.get(eachAcc.id).Active__c != trigger.newMap.get(eachAcc.id).active__c) {                
                eachAcc.Description =  'Account is active.Enjoy!!';   
        }
    }
        }
 }
}
    */
  /*
      //=================================================================== 
    //DAY 17 PDF CALISMASI
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('After update trigger of Account object');
        integer countWSupdate = 0;
        for (Id eachAccId : trigger.newMap.keySet()) {
            string oldWS = trigger.oldMap.get(eachAccId).Website;
            Account newAcc = trigger.newMap.get(eachAccId);

            if (oldWS != newAcc.Website) {
                system.debug('For Account '+ newAcc.Name + ', New WEBSITE is  '+ newAcc.Website);
                countWSupdate++; // tek tek saydirmak icin ++ kullaniyoruz
                
            }            
        }  
        System.debug('# of accounts website update -->  '+ countWSupdate);      
    }
}    /*
    //=================================================================== 
    //DAY 17 PDF CALISMASI
    //Print OLD and NEW Account.Name for all the UPDATED
    //accounts in AFTER UPDATE
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('After update trigger of Account object');
        Map<Id,Account> accNewMap = Trigger.newMap;   // id ler gerekiyorsa Map kullaniyoruz
        Map<Id,Account> accOldMap = Trigger.oldMap;

        //for loop on SET<ID> ----> keySet() for a map
        for (Id  eachId : accNewMap.keySet()) {  //keyset --->butun key leri yani Id leri getirir
            System.debug('acc Id = '+ eachId);
           
            //get value using .get(key) method
            Account newAcc = accNewMap.get(eachId);  // get() --> Id lerin value larini getirir
            System.debug('new acc name = '+ newAcc.Name);  //new version u verir

            Account oldAcc = accOldMap.get(eachId);
            system.debug('old acc name = '+ + oldAcc.Name);   //oldAcc.Name ---> old version u verir       
        }        
        
    }
}     */    
 //=================================================================== 

    //DAY 17 PDF CALISMASI
    /*  Req: Print values of new, newMap, old, and oldMap in before
             insert, after insert, before update, and after update  */
 /* 
      map<Id, Account> trgNewMap = trigger.newMap;
      map<id, Account> trgOldMap = trigger.oldMap;

      if (trigger.isBefore && trigger.isInsert) {
          system.debug('=======BEFORE INSERT========');
          system.debug('Before Insert OLD MAP = '+trgOldMap);
          system.debug('Before Insert NEW MAP = '+ trgNewMap);                 
      }
      if (trigger.isAfter && trigger.isInsert) {
          System.debug('=======AFTER INSERT========');
          system.debug('AFTER insert OLD MAP = '+ trgOldMap);
          system.debug('AFTER insert NEW MAP = '+ trgNewMap);
          
      }
      if (trigger.isBefore && trigger.isUpdate) {
          system.debug('=======BEFORE UPDATE========');
          System.debug('Before UPDATE OLD MAP = '+ trgNewMap);
          system.debug('Before UPDATE NEW MAP = ' + trgNewMap);      
        }
        if (trigger.isAfter && trigger.isUpdate) {
            system.debug('=======AFTER UPDATE========');
            system.debug('AFTER UPDATE OLD MAP = '+ trgOldMap);
            System.debug('AFTER UPDATE NEW MAP = '+ trgNewMap);            
        }          
      }      
    */
    /*=================================================================== 
 
    //DAY 17 PDF CALISMASI
    // Print the SET<ID> of all inserted/updated records
if (trigger.isAfter) {
    system.debug('After trigger of Account object');

    List<Account> newAccounts = trigger.new;
    system.debug('size trigger.new in  after trigger = ' + trigger.new.size());

    Set<Id> accIdSet = new Set<Id>();
    for (Account acc : newAccounts) {
        accIdSet.add(acc.Id);        
    }
    system.debug('Set of acc Ids --' + accIdSet);    
}

}
    
     
    /*=================================================================== 
 //DAY 17 PDF CALISMASI
//Print old and new names of all updated accounts.
//Test by Update Names of 5 Accounts.
   if (trigger.isAfter && trigger.isUpdate) {
    for (account oldAcc : trigger.old) {
        system.debug('oldAcc id = '+ oldAcc.Id + ', Old accName = '+ oldAcc.Name);           
    }
    for (Account newAcc : trigger.new) {
        system.debug('New acc Id = '+ newAcc.Id + ', New accName = '+ newAcc.Name);
                   
    }
    
}
    //=================================================================== 

    //DAY 17 PDF CALISMASI
   // Print Trigger.old in ‘Before Update and ‘After Update’ too.
   if (trigger.isBefore && trigger.isInsert) {
       System.debug('trigger.old before Insert = '+  trigger.old);       
   }
   if (trigger.isAfter && trigger.isInsert) {
       System.debug('trigger.old after Insert = '+ trigger.old);   // yeni kayit olusturdugumuz icin , yeninin eski Id si yoktur bu yuzden NULL gelir
   }
   if (trigger.isBefore && trigger.isUpdate) {
       system.debug('trigger.old before update = '+ trigger.old);      // olusturulmus olan kaydi update ettigimiz icin  update trigger.old bir onceki kaydi verir
   }
   if (trigger.isAfter && trigger.isUpdate) {
       System.debug('trigger.old after update = ' + trigger.old);       
   }

}
   
    /*=================================================================== 
    //DAY 16 PDF CALISMASI
     if(trigger.isBefore && trigger.isUpdate){
        System.debug('Trigger.new before update ' + trigger.new );
    }
    if(trigger.isAfter && trigger.isUpdate){
        System.debug('terigger.new  after update = '+ trigger.new);
    }

}

    /*===================================================================

  //DAY 16 PDF CALISMASI
    if(trigger.isAfter && trigger.isInsert){
      System.debug('trigger.new after insert = ' + trigger.new);
      List<Account> newAccounts = trigger.new;
      System.debug('TOTAL ACCOUNT INSERTED = '+ newAccounts.size());
      for (account acc : newAccounts) {
          system.debug('Account id is = '+ acc.id + ', account name is '+ acc.Name);
          
      }  //Account create etmek icin  accTrigger.apex  file actik orada record create ettik. DML yapmis olduk
  }
  }
  
  
  
  
  /*===================================================================
    /* if(trigger.isAfter){
         system.debug('trigger.new AFTER INSERT = '+ trigger.new);
    }

     if(trigger.isBefore){
        system.debug('trigger.new AFTER INSERT = '+ trigger.new);
    }
}
    
   */ 
   /*===================================================================
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('1-before insert trigger called.');        
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('2-after insert called too.');
        
    }
   
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('3-before Update trigger called.');        
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('4-after update called too.');       
    }

    
//===================================================================
if(trigger.isBefore){
    system.debug('We are in BEFORE trigger.');
    if(trigger.isInsert){
        system.debug('Before insert trigger called.');
    }
    if(trigger.isUpdate){
        system.debug('Before update trigger called.');
    }
}
if(trigger.isAfter){
    system.debug('We are in AFTER trigger. SBNC. ');
    if(Trigger.isInsert){
        system.debug('Before insert trigger called.');
    }
    if(trigger.isUpdate){
        system.debug('Before update trigger called.');
    }
}
}
*/

 /*  ===================================================================
    if (trigger.isAfter && trigger.isInsert) {
        AccountTriggerHandler.createContactForAccount(trigger.new);              
   }
   if (trigger.isAfter && trigger.isUpdate) {
       AccountTriggerHandler.updateAllOpps(trigger.new);
       AccountTriggerHandler.updatePhone(trigger.newMap, trigger.oldMap);
        }  

}
 
//  ===================================================================
//  ===================================================================

*/

//Assignment WEEK 6- EXTRA
/** QUESTION 1- 
Part1
Whenever a New Account Record is created, an associated Contact Record must be created
automatically. Contact record fields as below:
- Account name as Contact last name
- Account phone as contact phone  

Part2
 Write a trigger on the Account when the Account is updated, check all opportunities related to
the account. Update all Opportunity Stage to close lost if stage name not already set to closed
won.  */
