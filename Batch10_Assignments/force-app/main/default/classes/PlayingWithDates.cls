public class PlayingWithDates {    //Assignment Week-2
    public  void printDateOutput() {
        
        //Print today's date.
        date todayDate = Date.today();
        System.debug('Today date is : '+ todayDate);

        //Create an instance of a date for 5th November 2789.
        Date newDate = Date.newInstance(2789, 11, 05);
        System.debug('New Date is : '+ newDate);

        //Create an instance of a date for 4th March 1459.
        Date secondDate = Date.newInstance(1459, 03,04);
        System.debug('Second Date is : '+ secondDate);


        //Create three Integer variables (dayInt, monthInt, yearInt) for storing day, month, year
       //respectively, and provide some default values. Using the three Integer variables (dayInt,
       // monthInt, yearInt) create a new date instance and save it in a new variable
        Integer yearInt = 2022;
        integer mounthInt =09;
        integer dayInt = 18;
        Date customDate = Date.newInstance(yearInt, mounthInt, dayInt);
        System.debug('My custom date is '+ customDate);


    }
}
