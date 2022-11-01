public class closedWonOpportunities  implements Database.Batchable<sObject>, database.stateful{
    //WEEK 8 assignment 10/30/2022
    //Write a Batch class to delete all the opportunities with a stage name  as Closed Lost. Print the
//    total number of records deleted by batch apex.
 
   public integer numberOfRecords = 0;
   public Database.QueryLocator start(Database.BatchableContext ab){
       Database.QueryLocator q = Database.getQueryLocator([select id, stageName from Opportunity WHERE stageName ='Closed Lost']);
           return q;    
   }

  public void execute(Database.BatchableContext ab , List<Opportunity> listOpp){
      if (!listOpp.isEmpty()) {
          delete listOpp; 
          numberOfRecords = numberOfRecords + listOpp.size();
      }
  }
  public void finish(Database.BatchableContext ab){
      System.debug('Print number of deleted Opportunities---> ' + numberOfRecords);
      
  }
  
}
