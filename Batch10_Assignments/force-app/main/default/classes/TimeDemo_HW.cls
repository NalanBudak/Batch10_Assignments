public  class TimeDemo_HW {
    public void dateTimeDemoMethod() {

       //Display Current date
        Date todayDate =Date.today();

       //Display No of days between 2 dates (i.e. 1/1/2019-1/1/2020). 
        Date date1 = date.newInstance(2019,1,1);
        Date date2 = date.newInstance(2020,1,1);
        Integer numberOfDays = date1.daysbetween(date2);


         //My subscription expired 30 days before, Print subscription expiration date.
        Date subscriptionStartDate = date.today();
        Date subscriptionEndDate = subscriptionStartDate.addDays(-30);

        System.debug('Current date is ' + todayDate);
        System.debug('No of days in between is '+ numberOfDays);
        System.debug('Subscription expartion date is ' + subscriptionEndDate);
}
}







