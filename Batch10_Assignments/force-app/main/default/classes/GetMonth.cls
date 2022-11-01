public class GetMonth {
    public string getMonthName(integer mnth) {
        string output_Month ='Not a valid Month';

        if (mnth == 1) {
            output_Month = 'January';            
        }else if (mnth ==2) {
            output_Month = 'February';            
        }else if (mnth ==3) {
            output_Month = 'March';            
        }else if (mnth ==4) {
            output_Month = 'April';            
        }else if (mnth ==5) {
            output_Month = 'May';            
        }else if (mnth ==6) {
            output_Month = 'Jun';            
        }else if (mnth ==7) {
            output_Month = 'July';            
        }else if (mnth ==8) {
            output_Month = 'August';            
        }else if (mnth ==9) {
            output_Month = 'September';            
        }else if (mnth ==10) {
            output_Month = 'October';            
        }else if (mnth ==11) {
            output_Month = 'November';            
        }else if (mnth ==12) {
            output_Month = 'December';            
        }else {
            output_Month = 'Not a valid month';
        }
            return output_Month;

    }
}
