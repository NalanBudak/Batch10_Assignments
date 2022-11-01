
public class OppTriggerHandler {
   public static void highestAmountOpp(set<Id> accId){

    List<Opportunity> oppList = new List<Opportunity>();
    List<Account> accListWithOpps = new List<Account>();
    accListWithOpps = [SELECT id, Name, Highest_Amount_Opportunity_Name__c, 
                      (Select Amount, Name from Opportunities ORDER BY Amount DESC NULLS LAST LIMIT 1) 
                      FROM Account WHERE Id =: accId];

    for (Account eachAcc : accListWithOpps) {
       eachAcc.Highest_Amount_Opportunity_Name__c =  eachAcc.Opportunities[0].Name;

    }  
    update accListWithOpps;     
   }
}
