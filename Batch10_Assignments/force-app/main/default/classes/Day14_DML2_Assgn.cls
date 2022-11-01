public  class Day14_DML2_Assgn {
   
    //Insert  two or more record in account object  with yourname + ‘Assignment’.
    public static void insert_dml() {
        List<Account> listAcc = new List<Account>();
       
        Account acc1 = new Account();
        acc1.Name = 'Day 14 assignment';
        acc1.Phone = '832-255-6525';
        listAcc.add(acc1);

        Account acc2 = new Account();
        acc2.Name = 'Day 14 assignment Part 2';
        acc2.Phone ='832-666-2066';
        listAcc.add(acc2);
        insert listAcc;
    }


    /*  --- Write a query for fetching all account records with a string matching  yourname + ‘Assignment’  */

        public static void updating_dml(){
            List<Account> updateList =[Select id, name FROM Account WHERE name = 'Day 14 assignment'];

        //--- Update the same account record name with yourname + ‘Assignment updation 

          List<Account> accUpdate = new List<Account>();
          for (account eachAcc : updateList) {
              eachAcc.Name =eachAcc.Name + ' updating';
              accUpdate.add(eachAcc);              
          }
          if (accUpdate.isEmpty()) {
              update accUpdate;
              
          }
        }   
    
}
