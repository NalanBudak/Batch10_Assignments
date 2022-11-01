trigger CaseTrigger on Case (before insert, before update, after insert, after update) {
//WEEK5 10/09/2022 
    //QESTION 1
    //Create a trigger on a Case object named “CaseTrigger”. Show the debug messages as follows:
//  Triggers - "We are in the triggers"
  /*system.debug('We are in the triggers');

//b-after triggers - "We are in the after triggers"
if (trigger.isAfter) {
    System.debug('We are in the after triggers');  
//after Insert - "We are in the after-Insert triggers".
     if (trigger.isInsert) {
          system.debug('We are in the after-Insert triggers');    
          for (Case eachCase : trigger.new) {
              if (eachCase.Id != null) {
                  System.debug('Case number '+  eachCase.CaseNumber + ' was created with ID '+ eachCase.Id + ' on '+ eachCase.CreatedDate + '.');
                  
              }
              
          }
}
    //after update - "We are in the after-Update triggers"
      if (trigger.isUpdate) {
         System.debug('We are in the after-Update triggers');
         }    
}
//===========================================================
//before triggers - "We are in the before triggers"
if (trigger.isBefore) {
    System.debug('We are in the before triggers'); 
    //before Insert - "We are in the before-Insert triggers"
         if (trigger.isInsert) {
            System.debug('We are in the before-Insert triggers');     
        
    }
    ////before Update - "We are in the before-Update triggers"
    if (trigger.isUpdate) {
        System.debug('We are in the before-Update triggers');   
    }  
} 

//===========================================================
*/

//QUSTION 2 
// Part 3
//Show the message as 'Case origin is changed for [Case Number]' whenever case origin
//field value is changed
/* if (trigger.isBefore && trigger.isUpdate) {
    Map<id, Case> oldMap = trigger.oldMap;
    for (case eachCase : trigger.new) {
        if (oldMap.get(eachCase.Id).Origin != eachCase.Origin) {
            System.debug('Case origin is changed : '+ eachCase.CaseNumber);
        }        
    }    
}  */

/*QUESTION 3
//Whenever a case is created with origin as email then set status as new and Priority as Medium.
if (trigger.isBefore && trigger.isInsert) {
    for (case eachCase : trigger.new) {
        if (eachCase.origin == 'Email' ) {
            eachCase.Status = 'New';
            eachCase.Priority = 'Medium';
            
        }
        
    }
    
}
*/

//=========================================================================================
//10/23/2022  Assignment Week9
/*
if (trigger.isAfter && trigger.isInsert) {
    CaseTriggerHandler.checkForDescription(trigger.new);

    
}
*/

}