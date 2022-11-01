public  class CountriesSet_HW { // Day10 - Assignment
    public static void capitalizeCountries() {
        Set<String> countries = new Set<String>{'India', 'Japan', 'America', 'Turkey'};

       
        Set<String>  countriesInCaps = new Set<String>();          
            for (String EachCountries : countries) {
                String capEachOne = EachCountries.toUppercase();
                countriesInCaps.add(capEachOne);        
                 }
            System.debug('Countries in caps====> '+ countriesInCaps);
        
              }
}        
                
    
/*Create a class as countriesSet , Inside it create a method capitalizeCountries().
-Create a Set of Countries inside this method and insert values Like (India, Japan, America...)
-Create another Set of CountriesInCaps inside this method. Use toUppercase() method to make
country name in capital and print it  */
//------------------------------------------------------------------------------------------------
