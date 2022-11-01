public  class day13Ass_SOQL {
 
/* Write an SOQL query for contact Object querying Account object fields in the 
same query referring ID and Name and pass them to a list<Contact> 
lstcontact records.
---Run the above the over the for loop and display the account id and 
account name  */
public  static void cntAndAcc(){
    List<Contact> lstContact = [select Account.Id, Account.Name from Contact];
    for (Contact eachContact : lstContact) {
        string accName = eachContact.Account.Name;
        String accId = eachContact.Account.Id;
        System.debug('Account id is--> '+  accId + 'Account name id ---> '+ accName);        
    }
}
/*Write an SOQL query for Account Object querying contact object fields in the 
same query referring ID and Name and pass them to a list<Account> 
lstaccount records.
--Run the above the over the for loop and display the Contact id and 
Contact name.  */
public  static void cntToAcc(){
    List<Account> lstAcc = [select id, name, (Select id, name FROM Contacts) FROM Account];
    for (account eachAcc : lstAcc) {
        System.debug('Parent account ---> ');

    List<Contact> lstContact2 = eachAcc.Contacts;
    for (contact eachCnt  : lstContact2) {
        System.debug('Contact id is--> ' +  eachCnt.Id);
        System.debug('Contact name is --> ' + eachCnt.Name);
        
    }
        
    }

}



    
}
