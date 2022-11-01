List <string>colorList = new List<string>();
colorList.add('Blue');
colorList.add('Pink');
colorList.add('White');
colorList.add('Red');
colorList.add('Gray');

// bu kisa yol
//List <string>colorList = new List<string>{'Bule', 'Pink', 'White',};

//Print the size of the above-created List.
System.debug(colorList.size()); 

//Check if the coloursList contains ‘Red’ color in it or not.
System.debug(colorList.contains('Red'));

//Retrieve the last element of the List and print it in the upper case.
String toUpper2 = colorList.get((colorList.size()-1));
System.debug(toUpper2.toUpperCase());

//Make the fourth element in the List as Upper case.
String toUpper3 = colorList[3].toUpperCase();
System.debug(toUpper3);


//Create a different List named colourCodesList in which we need to store some color codes
// For example: ‘#FF0000’ is code for red color.
List<String> colorCodesList = new List<String>{'#FF0000','#FF0001', '#FF0002','#FF0003', '#FF0004', '#FF0005'};


//Compare if the two lists colourCodesList and coloursList are equal or not.
Boolean check = colorList.equals(colorCodesList);
System.debug(check);

//Merge the two Lists (colourCodesList, coloursList) and print the newly created list.
List<String> mergedList = new List<String>();
mergedList.addAll(colorList);
mergedList.addAll(colorCodesList);
system.debug(mergedList);
