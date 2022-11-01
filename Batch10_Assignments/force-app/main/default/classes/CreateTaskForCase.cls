public class CreateTaskForCase implements Database.Batchable<sObject>, Database.stateful {
    
    public Database.QueryLocator start(Database.BatchableContext ab){
        if (Test.isRunningTest()){
            Database.QueryLocator q = Database.getQueryLocator([SELECT id, status FROM Case WHERE status != 'Closed']);
            return q;

        } else {
            Database.QueryLocator q = Database.getQueryLocator([SELECT id, status FROM Case WHERE status != 'Closed' and LastModifiedDate >= last_n_Days:5]);
            return q;

        }
        
    
    }

  public void execute(Database.BatchableContext ab, List<Case> listCs){
    list<task> listTs = new list<task>();
    
        for (Case eachCs : listCs) {
            task ts = new task();
            ts.Subject = System.label.Subject;
            ts.Description =System.label.Comments;
            ts.WhatId = eachCs.Id;
            ts.OwnerId = eachCs.OwnerId;
            ts.Status = 'In Progress';
            ts.ActivityDate = date.today().addDays(2);
            listTs.add(ts);
            
            
        }
        if(!listTs.isEmpty()){
            insert listTs;
        }
       
    }
    public void finish(Database.BatchableContext ab){
   
    }
  }