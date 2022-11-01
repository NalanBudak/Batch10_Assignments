@isTest
public class ClosedWonOpportunitiesTest {
    @TestSetup    
    public static void makeData() {
        List<Opportunity> listOpp = new List<Opportunity>();
        for (Integer i = 0; i < 200; i++) {
            Opportunity opp = new Opportunity();
            opp.name = 'Test Opp' + i;
            opp.CloseDate = date.today();
            opp.StageName ='Closed Lost';
            listOpp.add(opp);            
        }        
        insert listOpp;        
    }
@isTest
    public static void deleteOpp(){        
        test.startTest();
        closedWonOpportunities clsOpp = new closedWonOpportunities();
        Database.executeBatch(clsOpp, 200);
        test.stopTest();

        //assertion
        List<Opportunity> results = [Select id from Opportunity];
        System.assertEquals( 0,results.size());
    }

    //1-Write a Batch class to delete all the opportunities with a stage name  as Closed Lost. Print the
    // total number of records deleted by batch apex.

    @isTest
    public  static void schedTest() {
        test.startTest();
        SchedulableCls scdCls = new SchedulableCls();
        String aa = '0 0 15 * * ?';
        System.schedule('Schedule', aa, scdCls);
        test.stopTest();
        
    }
    
}

//WEEK 8 assignment
//10/30/2022
//1-Write a Batch class to delete all the opportunities with a stage name  as Closed Lost. Print the
//  total number of records deleted by batch apex.
