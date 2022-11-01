@isTest
public class CreateTaskForCaseTest {
    @isTest
    public static void testCase(){
        list<case> cs = new list<case>();
        for(Integer i = 0; i < 200; i++) {
            case cse = new case();
            cse.status = 'New';
            cse.origin = 'Web';
            cs.add(cse);
            
        }
        insert cs;
        test.startTest();
        CreateTaskForCase cst = new CreateTaskForCase();
        Database.executeBatch(cst);

        test.stopTest();
        List<Task> tskList = [SELECT id FROM Task];
        System.assertEquals(200, tskList.size());

    }    
}