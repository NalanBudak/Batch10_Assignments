public class AccConAndOppOperations { //Week4 Assignment 4
 // 1- Write the logic to fetch and return all the accounts. Include account name, annual revenue, type,
//    and source of account
public static List<Account> fetchAllAccounts(){
    List<Account> allAcc = [ SELECT name, annualRevenue, type, AccountSource FROM Account];
    System.debug(allAcc);
    return allAcc;
}

/* 2- Find all the opportunities which have Lead Source as 'Web' and Stage as 'Closed Lost'. Make it
dynamic so that it works for other stages and Lead sources as well */

 public static List<Opportunity> fetchAllOpportunies(String leadStr, String stageN){
        List<Opportunity> allOpp = [Select name, LeadSource, StageName 
                                    FROM Opportunity WHERE LeadSource =: leadStr AND StageName=: stageN];     
        System.debug(allOpp);
        return allOpp;
    }

    /*3-Print the Annual revenue and name of all the accounts of type 'Customer - Direct' and print the
Opportunity Name and Amount for the related 'Closed Won' opportunities. Each opportunity
record should be printed in a different line  */

 public static void printAccAndOpp(){
     List<Account> allAcc = [select name, AnnualRevenue, 
                            (SELECT name, amount, StageName FROM Opportunities WHERE StageName = 'Closed Won') 
                             FROM Account WHERE Type = 'Customer - Direct' ];

        for (account eachAcc : allAcc) {
            System.debug(eachAcc.Name);
            for (opportunity eachOpp : eachAcc.Opportunities) {
                System.debug('Print all eachOpp ---> ' + eachOpp);               
            }            
        }                             
 }
 /*4-Write a method which should return the account record after creating it. Take Name, Annual
Revenue, Type as input parameters and populate the values in the account record. If Name is not
provided, then do not create the account and show a message like Account without name
cannot be created  */

 public static Account accReturn(string name, decimal annualRvn, string type1){
     Account acc = new Account();
     if(name != null){
     acc.Name = name;
     acc.AnnualRevenue= annualRvn;
     acc.Type = type1;
     insert acc;
        System.debug(acc);
     }else {
         system.debug('Account without name account be created');
     }
     return acc;

 }
}
