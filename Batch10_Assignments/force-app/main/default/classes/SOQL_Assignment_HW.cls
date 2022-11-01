public  class SOQL_Assignment_HW { //Day12 Assignment

    public static  void soql_WhereClause(){
       List<Contact> lstContact = [select lastName from Contact WHERE LastName LIKE '%A%'];
       System.debug('All contact records ' + lstContact);
       System.debug('Size of Variable '+ lstContact.size());
    }

    public static void soql_formethod(){
        List<Contact> lstContact = [select  lastName ,phone FROM Contact];
        System.debug('All Contacts LastName and Phone Number --> ' + lstContact);

        for (contact eachContact : lstContact) {
            string lastName = eachContact.LastName;
            String phoneNumber = eachContact.Phone;
            System.debug('Contact last name ' + lastName);
            system.debug('Contact phone number '+ phoneNumber);
            
        }
    }

}
    /*Create a static method soql_WhereClause 
---Create a variable lstcontact which is list<Contact>.
---Write an SOQL statement which gets all contact records where 
lastname contains string ‘A’.
---Display the size of the variable.

    Create a static method soql_formethod
---Create a variable lstcontact which is list<Contact>.
---Write an SOQL statement which gets all contact records with 
fields Lastname,phone number.
---Display the data of each record Lastname and phone number in 
for loop  */

