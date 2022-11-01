public  class AccConAndOppOperations2 {
    public static decimal sumOfAllOpp() {
        list<Opportunity> amnt = [select id, name, amount, stageName from Opportunity where stageName = 'Closed Won'];
        Decimal sumOpp = 0;
        for(Opportunity opp : amnt) {
           sumOpp = sumOpp + opp.Amount;
        }
        system.debug(sumOpp);
        return sumOpp;
    }
    public static list<Account> allAcc (string stageName){
        list<Account>accwithOpps = [select id, name, (select name, stageName from opportunities where stageName = : stageName)from Account where id in(select accountid from Opportunity)];
        list<Account>acc1 =new list<Account>();
        for (Account acc : accwithOpps){
            if(acc.Opportunities != null&& acc.Opportunities.size()>0){
                acc1.add(acc);
                system.debug(acc);
            }
        }
        system.debug(acc1);
        return acc1;
    }
    public static list<Account> allAccCnct (){
        list<Account> accwithcntcs = [select id, name,( select name from contacts) from Account where id in(select accountid from contact)];
         system.debug(accwithcntcs);
         return accwithcntcs;
    }
    /* Week 5---> Qustion 1
    Take account Id as input parameter and create a new contact for the provided account’s Id.
    Populate Contact last name as same as Account’s Name  */

    public static void newCntct(Id accId){
        Account acc =[select id, name from Account WHERE id = :accId ];
        Contact cntct = new Contact();
        cntct.lastName = acc.Name;
        cntct.AccountId = acc.Id;
        insert cntct;
        system.debug( 'contact is created'+ cntct);
    }
    //Week 5 ---> Question 2
    //Update the description field of top 10 opportunities as "This is one of the top 10 opportunities.
    // Please work on this properly “
    public static void OppDescriptionUpdate() {
        List<Opportunity> OppTop10 =[ select id, name, amount, description from Opportunity where amount != null order by amount desc limit 10];
        List<Opportunity>OppUpdate = new List<Opportunity>();
        for (Opportunity opp : OppTop10){
            opp.Description = 'This is one of the top oppotunities.Please work on this properly!!!';
            OppUpdate.add(opp);
        }
        update OppUpdate;
        system.debug(OppTop10);
    }
    //=====================================================================
    //week5--->  Qustion 3
    /*Write a logic to create and return the number of opportunities for a particular AccountId.
        AccountId and n will be passed as parameters in the method.
        Populate opportunity fields as follows:
        Close date as 3 years from today
        Stage name as Prospecting
        Opportunity amount as Account’s annual revenue divided by n
        and Opportunity name same as Account name
        For Ex: if n=2, Then two new opportunities If n=0, Print the message as “Please tell us how many
        opportunities needs to be created */
    public static List<Opportunity> numOpt(Id AccId, integer n){
        List<Opportunity> opts = new List<Opportunity>();
        if (n > 0) {            
        
        Account acc= [Select name, annualRevenue FROM Account WHERE Id =: AccId];
        for (integer i = 1; i <= n; i++) {
            Opportunity opp = new Opportunity();
            opp.CloseDate = date.today().addYears(3);
            opp.StageName = 'Prospecting';
            Opp.Amount = acc.AnnualRevenue / n;
            opp.Name = acc.Name + i;   
            opp.AccountId = acc.Id;          
            opts.add(opp);
        }
        insert opts;
        System.debug(opts);        
        }    
        else {
            System.debug('Please tell us how many Opp needs to be created');
        }
        return opts;
    }

}

/*Qustion 4 -Find out all the accounts which have no contacts attached to them. Add a contact for each one
of them and update the last Name of contact with the Name field of account.

Question 5- Delete all the opportunities with an amount less than 20000 and status as closed lost  */

