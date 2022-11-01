trigger ContactTrigger on Contact (before insert, before update, after insert, after update) {
   /*Day27 Turkce assignment
      27. Bir Contact insert edildiğinde First Name yazılmamışsa (whitespace, empty (''), and null)
         'Bu record'da First Name yazılmadı.. Name sadece Last Name = [lastName] den oluşuyor.' 
          mesajını system debug ile konsolda yazdıran bir trigger tasarlayınız  */
          for (Contact eachContact : trigger.new) {
              if (eachContact.Name == NULL) {
                  system.debug('Bu record\' da First Name yazilmadi..Bos birakildi. sadece last name -->  '+  eachContact.LastName + ' yazildi');
                  
              }
              
          }
   
   
    //============================================================

    // WEEK6 Extra Assignment
    //Question 1   Part 4
    /*When a new contact is created for an existing account then set contact other phone as account
       phone  
    if (trigger.isBefore && trigger.isInsert) {
        ContactTriggerHandler.updateContactsPhone(trigger.new);
        
    } 
 */
 //============================================================
 
    /*Day14 Assignment Part 2    
    Create a trigger for contact object
    Write a system.debug for before update.
    Write a system.debug for after update  */

    /*   if (trigger.isBefore) {
        system.debug('Trigger is Before Update');        
    }
    else if (trigger.isAfter) {
        System.debug('Trigger is After Update');       
    } */
}

//============================================================