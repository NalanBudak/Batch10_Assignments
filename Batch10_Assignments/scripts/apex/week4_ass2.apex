
//TASK2- Maps – Iteration

Map< string, decimal> currISOCodeAndExchangeRateMap = new Map<string, decimal>();
currISOCodeAndExchangeRateMap.put('AUD', 0.73);
currISOCodeAndExchangeRateMap.put('CAD', 0.78);
currISOCodeAndExchangeRateMap.put('EUR', 1.13);
currISOCodeAndExchangeRateMap.put('NZD', 0.68);
currISOCodeAndExchangeRateMap.put('INR', 0.013);

//2-Fetch the currency conversion rate for any one currency ISO code and print it.
System.debug('AUD Currency  rate---> '+ currISOCodeAndExchangeRateMap.get('AUD'));


//3-Check if the above Map has a conversion rate for SAD ISO code.
//System.debug(currISOCodeAndExchangeRateMap.containsKey('SAD'));
Boolean checkSad = currISOCodeAndExchangeRateMap.containsKey('SAD');
System.debug(checkSad);


//4-Collect all the currency ISO codes from currISOCodeAndExchangeRateMap for which the
//conversion rate is >= 1 in one variable and other iso codes in other variables.
set<string> moreThanOne = new Set<String>();
set<string> lessThanOne = new Set<String>();
for(String eachRate : currISOCodeAndExchangeRateMap.keySet()){
    if (currISOCodeAndExchangeRateMap.get(eachRate) >= 1){
        moreThanOne.add(eachRate);
    }else{
        lessThanOne.add(eachRate);
    }      
    }
    System.debug(moreThanOne);
    System.debug(lessThanOne);


//Expected Output: EUR – In one variable. AUD, CAD, NZD, and INR – In another variable.
