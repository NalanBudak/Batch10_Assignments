trigger OpportunityTrigger on Opportunity( before update, after update) {
   // DAY 28 TURKCE ASSIGNMENT
   //28. Bir Opportunity update edildiğinde description bölümünü aşağıdaki örnekte görülen 
   //şekilde düzenleyen bir trigger tasarlayınız.
    if (trigger.isBefore && trigger.isUpdate) {
        for (Opportunity eachOpp : trigger.new) {
           id oppId =eachOpp.Id; 
          String oldStage = trigger.oldMap.get(oppId).StageName;
          String newStage = trigger.newMap.get(oppId).StageName;
            
           if (oldStage != newStage) {
               eachOpp.Description ='Stage Updated from '+ oldStage + ' and new Stage is '+ newStage;               
           }
           Decimal oldAmount = trigger.oldMap.get(oppId).Amount;
            Decimal newAmount = trigger.newMap.get(oppId).Amount;
            if(newAmount != oldAmount){
                eachOpp.Description = 'Amount updated from =>'+trigger.oldMap.get(oppId).Amount+' and New Ampunt is => '+trigger.newMap.get(oppId).Amount;
                
            }
            if(oldstage != newStage && newAmount != oldAmount){
                eachOpp.Description = 'Stage Updated from '+ oldStage + ' and new Stage is '+ newStage + ' & ' +'Amount updated from =>'+ oldAmount +' and New Ampunt is => '+newAmount;
            }
            if (oldstage == newStage && newAmount == oldAmount) {
                eachOpp.Description = 'Record is not updated';
                
            }             
            }
        }       
    }
  
   //===================================================================
    //Assinmnet week5 10/09/2022 
    //QUSTION 2
    // 2 -Print the new and old field values for (Opportunity Name and Amount) fields whenever
     //an opportunity is updated.
     
/*     if (trigger.isBefore && trigger.isUpdate) {     
         Map<Id, Opportunity> oldOpt = trigger.oldMap;
            for (Opportunity opp : trigger.new) {
                System.debug(oldOpt.get(opp.Id).Name + ' : '+  oldOpt.get(opp.Id).Amount );
                system.debug(opp.Name + ' : '+ opp.Amount);
                
            }        
     }  */

   //QUESTION 2 
   //Part 4
   // When the StageName of an opportunity is updated, then print the value of description
   // field and opportunity name  
/*
   if (trigger.isBefore && trigger.isUpdate) {
       Map<Id, Opportunity> oldOpt = trigger.oldMap;
       for (Opportunity eachOpp : trigger.new) {
           if (oldOpt.get(eachOpp.Id).StageName != eachOpp.stageName) {
               system.debug( eachOpp.Description + ' '+  eachOpp);
               
           }           
       }      
   }
   
*/

