/* 1-In an anonymous apex file, Create a set of strings named as uniqueNameSet with “Tom” and
“Jerry” as the default values in it */
Set<String> uniqueNameSet = new Set<String>{'Tom', 'Jerry'};

//2-Print the size of the above created Set.
System.debug('Unique names size---> ' + uniqueNameSet.size());

//3-Add new elements in the uniqueNameSet.
uniqueNameSet.add('Casper');
uniqueNameSet.add('Super Man');
system.debug('Unique names adding some elements ---> ' + uniqueNameSet);

//4-Check if uniqueNameSet contains your name?
System.debug('Do Unique names contains Kate?---> ' + uniqueNameSet.contains('Kate'));

//5-Check if the uniqueNameSet is Empty.
System.debug('Unique names are empty?--> ' +  uniqueNameSet.isEmpty());

//6-Clear the set and print it.
uniqueNameSet.clear();

//7-Now check if the set is empty or not. 
System.debug('set is empty or not? ---> ' + uniqueNameSet.isEmpty());

//8-Is it possible to get an element from a set with the help of an index? If Yes, then please write the
//code for the same and If No, then why is it not possible


//9-List down at the differences between set and list.