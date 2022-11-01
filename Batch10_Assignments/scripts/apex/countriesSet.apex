CountriesSet_HW.capitalizeCountries();


//Task 2
Map<String,Integer> marksObtainInMaths = new Map<String,Integer>();
marksObtainInMaths.put('0111CE112', 40);
marksObtainInMaths.put('0111CE102', 19);
marksObtainInMaths.put('0111CE100', 33);
marksObtainInMaths.put('0111CE098', 40);

integer markObtain = marksObtainInMaths.get('0111CE098');
system.debug('Mark obtain by student with roll number 0111CE098 ' + markObtain);

/*

/*Create a Map<string,Integer> type named marksObtainInMaths which should contain the 
Student Roll Number to Marks Obtain (out off 50) mapping. Like below:
a. 0111CE112 => 40
b. 0111CE102 => 19
c. 0111CE100 => 33
d. 0111CE098 => 40
Now do following Operation in the Above Map.
• Add multiple mappings of your choice in the marksObtainInMaths Map.
• Print marks of student with Roll Number 0111CE098. */