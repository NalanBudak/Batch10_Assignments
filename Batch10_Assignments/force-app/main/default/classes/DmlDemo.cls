public class DmlDemo {  //Day 14 Pdf calismasi
    public static void dmlInsertDemo_stndObj() {
    
        Account acc = new Account();  // 1.creating new instance of account object
        acc.Name= 'SoftInnovas';  // 2.set field values

        insert acc;    
        acc.Name = 'Softinnovas Nalan';
        update acc;
    }

    //insert record of custom object
    public static void dmlInsertDemo_cstObj() {
        salesforce_project__c sp = new salesforce_project__c();
        sp.Project_Name__c = 'Teach DML to falcons';
        sp.description__c = 'All 50% are great learners';
        
        insert sp;   
                
    }
public static void dmlUpdateDemo_1() {
    Account acc = [select id, Name FROM Account WHERE Name = 'SoftInnovas Nalan' LIMIT 1];
    acc.Name = 'SoftInnovas Update Denemesi';

    update acc;
    system.debug('acc =' + acc);
    
}       

public static void dmlUpdateDemo_2() {
    //soql o get ONE account
    Account acc = [SELECT id, name FROM Account WHERE Name = 'SoftInnovas Nalan' LIMIT 1];

    //2- create contacts instance
    Contact cnt = new Contact();
    //2.1 set contact fields as usual
    cnt.LastName = 'Biden';
    //3- set accountId (fieldrelationship field)
    cnt.AccountId = acc.Id;
    insert cnt;    
}


public static void dmlUpdateDemo_2CO () {
    //1 Soql to get One salesforce Object
    salesforce_project__c sp = [select id, name FROM  salesforce_project__c 
                                ORDER BY createdDate DESC LIMIT 1];

    //2 - Create tickets's instance
    salesforce_ticket__c st = new salesforce_ticket__c ();
    //2.1 Set ticket fields as usual
    st.Subject__c = 'Learn Apex';
    st.Priority__c = 'High';
    st.Status__c = 'New';
    st.Requested_by_date__c = date.newInstance(2021, 12, 06);
    //3- IMPORTANT: set relationship
    st.Salesforce_Project__c = sp.id;  //
    //4- DML
    insert st;
    system.debug('salesforce ticket : ' + st);
    
}

public static void dmlMultipleRecordInsert_right() {
    //1- create list of object
    List<Account> listAcc = new List<Account>();
    //2-create first instance
    account acc1 =new Account();
    acc1.name = 'bulk acc 1';
    //3- add instance in list
    listAcc.add(acc1);

    //4- Report the same for 2 more instance
    account acc2 = new Account();
    acc2.name = 'bulk acc 2';
    listAcc.add(acc2);

    account acc3 = new Account();
    acc3.Name = 'bulk acc 3';
    listAcc.add(acc3);

    insert listAcc;
    
}

public static void dmlMultipleRecordInsert_right2() {
    //1- create new empty list
    List<Account> listAcc = new List<Account>();     

    //create one record
    account acc = new Account();
    acc.Name ='SoftInnovas-10Sept v' ;
    acc.AccountNumber = 'ACSI-1';
    acc.Active__c = 'Yes';
    System.debug('before saving acc =' + acc );

    //2- add that account in a list
    listAcc.add(acc);
    
    // add 15 more accounts in list using for loop
    for (Integer i = 1; i < 15; i++) {
        Account acc2 =new Account();
        acc2.Name = 'SoftInnovas-10Sept v' +i;
        acc.AccountNumber = 'ACSI-2' +i;
        acc.Active__c = 'Yes';
        listAcc.add(acc2);
      //  listAcc.sort();
    }
    System.debug('Size of list = ' + listAcc.size());
    //Check if list is not empty, then insert
    if (!listAcc.isEmpty()) 
        insert listAcc;
        
    }   

    public static void dmlMultipleRecordInsert_right3() {
        // 1- get list of acc via query
        List<Account> listAcc = [select id, name FROM Account  ORDER BY CreatedDate desc limit 15];

        //2- create new list of account which will be used to update record
        List<Account> updateAccounts = new  List<Account>();

        //3- for each loop
        for (Account eachAcc : listAcc ) {
            //4- set field value
           eachAcc.Name  =  eachAcc.Name+ ' via 8.0';
            //5- add in updateAccounts list
            updateAccounts.add(eachAcc);                       
        }
        // optinal but recomended Check if not empty
        if (!updateAccounts.isEmpty()) {
            update updateAccounts;
            
        }
        
    } 
}
