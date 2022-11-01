@isTest
public class CaseTriggerHandlerTest {
  
    @isTest
    private static void withoutPassword () { //ilk once negatif test senaryoyu yapiyoruz
       List<Case> caseList = new List<Case>();
        for (Integer i = 0; i < 200; i++) { // trigger maximum 200 record dondurur.201 olsa 2 defa dondurur
            case cs= new case();
            cs.Subject = 'Test Subject';
            cs.Priority = 'High';
            cs.Description = 'Test';
            caseList.add(cs);

        }
        insert caseList;
        List<Case>  ts =[select id from Case];
       System.assertEquals(400, ts.size());
   }
@isTest
   private static void withpassword() {  // simdi positive test senario  yu yapiyoruz
    List<Case> caseList = new List<Case>();
    for (Integer i = 0; i < 200; i++) { // trigger maximum 200 record dondurur.201 olsa 2 defa dondurur
        case cs= new case();
        cs.Subject = 'Test Subject';
        cs.Priority = 'High';
        cs.Description = 'Password';
        caseList.add(cs);
    }
    insert caseList;
    List<Case> ys = [select id from case];
    system.assertEquals(00, ys.size());
   }
   
}

