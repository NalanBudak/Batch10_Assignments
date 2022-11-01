trigger OppTrigger on Opportunity (after insert) {
    if (trigger.isAfter && trigger.isInsert) {
        Set<Id> accIdSet = new Set<Id>();
        for (Opportunity eachOpp : trigger.new) {
            if (eachOpp.AccountId != Null) {
                accIdSet.add(eachOpp.AccountId);
            }            
        }     
        OppTriggerHandler.highestAmountOpp(accIdSet);

     }

    }