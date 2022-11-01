public class Calculator { //09/25/2022 WEEK3 ASSIGNMENT
    public static decimal dynamicCalulationMethod(decimal a, decimal b, String operationType) {
        decimal result = 0;
        switch on operationType {
            when 'ADDITION' {
                result= a +b;
            
            }
            when 'SUBSTRACTION' {
                result=  a - b;
            
            }
            when 'DIVISION'{
                result= a/b;
            }
            when 'MULTIPLACATION'{
                result = a*b;
            }
            when else {
                System.debug('Error!!!');
                result =null;
            
            }
        }
            return result;
    }
    
}
