public class OperationsHelper {// 09/25/2022 - week 3assignment 

  /*  --a. Method Name – largestOutOfTwoNumbers
    Description - It should have two parameters that can accept two decimal numbers and
    should return the largest number.*/

    public decimal largestOutOfTwoNumbers(decimal a, decimal b) {
        if (a > b) {
            return a;            
        }
            return b;

    }
    //this is second way to find largest number.
    public decimal largestOutOfTwoNumbers2(decimal x, decimal y){
        decimal num = Math.max(x, y);
        return num;
    }
    //===========================================================
    /*
--b. Method Name – smallestOutOfThreeNumbers
Description - It should have three parameters that can accept three decimal numbers
and should return the smallest number.*/
    // find smallest number.

    public decimal smallestOutOfThreeNumbers(decimal a, decimal b, decimal c){
        decimal smallestNum = Math.min(a, b);
        decimal smallestNum2 =Math.min(b, c);
        Decimal all = Math.min(smallestNum, smallestNum2);
        return all;
    }
  
    //===========================================================
      //this is second way to find smallest number.
    public  decimal smallestOutOfThreeNumbers2(decimal k, decimal l, decimal m){
        if (k<=l && k<=m) {
            return k;            
        }
        else if (l<=k && l<=m) {
            return l;            
        }
            return m;
            
        }
        //===========================================================

        /*--c. Method Name - sumofPositiveIntegers
        Description - It should return the summation of first n numbers. n is the input parameter
        of type Integer. if n is negative then show this message- "We are not calculating the sum
        for negative numbers" and return null value */

        public integer sumofPositiveIntegers(integer n){
            Integer sum;
            if (n < 0) {
                System.debug('We are not calculating the sum for negative numbers');
                sum = null;                     
            }
            else {
                sum =0;
               for (Integer i = 1; i <= n; i++) {
                   sum = sum + i;                                  
            }                             
            }
            return sum;   
        }

        public integer sumofPositiveIntegers2(integer m){
            integer sum;
            if( m < 0){
                System.debug('We are not calculating the sum for negative numbers');
            }
            else {
                sum = m*(m+1)/2;
            }
            return sum;
        }
    }
