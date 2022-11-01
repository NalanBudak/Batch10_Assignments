public class ValidateAddress { // Assignment 2
    public void validateHomeAddress() {
      
        String houseName = 'Budak';
        String streetName = 'SugarLake';
        String cityName = 'SugarLand';
        String stateName = 'Texas';
        String stateIsoCode = 'TX';
        String countryName = 'United State Of America';
        String countryIsoCode= 'USA';

        //The number of characters in the street name.
        Integer lengthOfStreetName = streetName.length();
        System.debug('Number of characters in street name =' + lengthOfStreetName);

        //Check if the street name contains a house name in it or not
        Boolean checkHouseName = streetName.contains(houseName);
        System.debug('Is street name contains house name? '+ checkHouseName);

        //Find if the street name contains the state iso code in it
        Boolean checkStateIsoCode = streetName.contains(stateIsoCode);
        System.debug('Is street name contains ISO Code? ' + checkStateIsoCode);

        //Convert the state iso code, country iso code, country name to uppercase and
        String cnvrtUpperCase = stateIsoCode.toUpperCase();
        String cnvrtUpperCase2= countryIsoCode.toUpperCase();
        String cnvrtUpperCase3= countryName.toUpperCase(); 

        System.debug('State ISO CODE : ' + cnvrtUpperCase);
        System.debug('Country ISO CODE : ' +cnvrtUpperCase2);
        System.debug('Country Name is: ' + cnvrtUpperCase3);
//==========================================================
        String cnvrtLowerCase4 = cityName.toLowerCase();
        String cnvrtLowerCase5= stateName.toLowerCase();
        String cnvrtLowerCase6= countryName.toLowerCase(); 
        
        System.debug('City Name : ' + cnvrtLowerCase4);
        System.debug('State Name: ' +cnvrtLowerCase5);
        System.debug('Country Name : ' + cnvrtLowerCase6);
    }
    }

