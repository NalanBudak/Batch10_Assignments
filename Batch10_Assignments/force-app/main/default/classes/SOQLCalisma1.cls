public class SOQLCalisma1 { // Day11 SOQL Pdf
    public static void accountSOQL_1() {
        //SOQL Query always return yhe List<sObject>        
        List<Account> listAcc = [Select ID, Name from Account WHERE Name LIKE 'A%'];   //ismi A ile baslayan account lari getir
        system.debug('accunt list = ' + listAcc);

        //SOQL can return only sObject if it is returning ONLY if 1 RECORD
        Account acc =[Select id, Name FROM Account ORDER BY CreatedDate DESC LIMIT 1];  // Create edilen en sondaki Account record u getirir
        System.debug('Latest account created is '+ acc);
    }


    public static void accountSOQL_2(){
        Account acc = [SELECT Id, Name, Phone, AccountNumber FROM Account ORDER BY CreatedDate DESC LIMIT 1];
        system.debug('Latest account created  is ' + acc);
        // store name in a variable
        string accName = acc.Name;
        string accPhone =acc.Phone;
        system.debug('accName = '+  accName + ', phone is '+  accPhone );
        system.debug('account number is ' +  acc.AccountNumber);
        
    }

    public static void accountSOQL_3(){
       List<Account> listAcc = [SELECT Id, Name, Phone, AccountNumber FROM Account ORDER BY CreatedDate DESC];
        system.debug('all accounts '+ listAcc);
        //Datatype same as LIST
        for (Account eachAcc : listAcc) {
            String accName =eachAcc.Name;
            string accPhone = eachAcc.Phone;
            system.debug('accName = '+ accName + ', phone is '+ accPhone) ;
            system.debug('account number is '+ eachAcc.AccountNumber);
           
        }
}
public static void accountSOQL_Filter() {
    string accNameFilter = 'Salesforce Inc.';
    List<Account> listAcc =[Select id, Name FROM Account WHERE name = :accNameFilter];
    System.debug(listAcc);
    
}
public static void accountSOQL_Filter2(String accNameFilter) {
    List<Account> listAcc = [Select id, name FROM Account WHERE Name = :accNameFilter];
    system.debug(listAcc);    
}
//==============================================================
//CHILD TO PARENT
//Child to Parent 'ta parent nokta koyuyoruz 

public static void childToParent_Soql1() {
    // querying on child returns list<child_sObject>
    List<Contact> lstCnt = [select id, name, Account.Name FROM Contact WHERE Account.Industry = 'Energy'];
    for (Contact eachCnt : lstCnt) {
        string accName= eachCnt.Account.Name;
        system.debug('Contact name is ====> '+ eachCnt.Name + ', its acc is '+ accName);
        
    }    
}

//PARENT TO CHILD
//Parent to child da inner query kullaniyoruz. Child olani parentezin icine yaziyoruz

//SELECT Id, Name, (SELECT lastName FROM Contacts) FROM Account   =======> Burda Account un icinden Contact olanlari cagirdik
//==============================================================

    public static void sampleSoql4() {
        List<Account> accountWithOppList = [Select Name, AnnualRevenue, 
                                           (Select Name, Amount from Opportunities Where StageName = 'Closed Won') 
                                           FROM Account Where Type= 'Customer - Direct'];
                                           
        for (account acc : accountWithOppList) {
            system.debug('Account name ' + acc.Name + ' and its annual revenue is ' + acc.AnnualRevenue);
            for (opportunity opp : acc.Opportunities) {
                system.debug('Opportunity Name  ' + opp.Name);
                system.debug('Opportunity Amount' + opp.Amount);
            
            }
        }
    }

}

