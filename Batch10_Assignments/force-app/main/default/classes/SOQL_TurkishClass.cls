public with sharing class SOQL_TurkishClass {
    public static void account_SOQL() {
        /*  "account_SOQL" methodu ile: Account objesinde, telefon numaraları boş olmayanları 
             her bir record ayrı satırlarda olacak şekilde print ediniz. */
        List<Account> accPhone =[select  phone from Account where phone != null];
        for (account eachPhone : accPhone) {
            System.debug(eachPhone.Phone);            
        }

       /*  "account_SOQL" methodu ile: Account objesinde, id, name'i çağırınız    ve name field'inin sonunda 'a'
            geçenleri filtreleyerek her bir record ayrı satırlarda olacak şekilde print ediniz.  */
            List<Account> lst2 = [select id, name FROM Account WHERE name LIKE '%a'];
            for (account eachAcc2 : lst2) {
                System.debug(lst2);                
            }    
    }
    //"contact_SOQL" methodu ile: contact objesinden homePhone'u ve phone'u boş olanları getiriniz 
    //ve her bir record ayrı satırlarda olacak şekilde print ediniz.

    public static void contact_SOQL(){
        List<Contact> lstContact = [select Name, HomePhone, Phone from Contact WHERE HomePhone= NULL AND Phone= NULL ];
        for (Contact eachContact : lstContact) {
            System.debug(eachContact.name);            
        }
}
// "account_SOQL_3" methodu ile: Account objesinde Annual Revenue'lerinin (boş olmayan)
// toplamını bulan bir method yazın ve debug mesajı ile görüntüleyin.
public static void account_SOQL_3(){
    Decimal sum = 0;
    List<Account> annRevenue = [select AnnualRevenue from Account WHERE AnnualRevenue != NULL];
    for (Account eachAnnRvn : annRevenue) {
        System.debug(eachAnnRvn.name + '---> ' + eachAnnRvn.AnnualRevenue );
        sum += eachAnnRvn.AnnualRevenue;
    }
}
}