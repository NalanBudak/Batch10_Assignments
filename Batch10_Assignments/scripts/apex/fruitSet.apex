List<String> fruitSet = new List<String>{'Apple','Orange', 'Mango', 'Peach'};

for (string fruit1 : fruitSet) {
    System.debug(fruit1);    
}
//Print the size of the fruitsSet.
System.debug(fruitSet.size());

//Add a fruit name “Apricot” to the fruitsSet and print the fruitsSet.
fruitSet.add('Apricot');
System.debug(fruitSet);

//Check if the fruitsSet contains the fruit ‘Apricot
System.debug(fruitSet.contains('Apricot'));

//Check if the fruitsSet is empty?
System.debug(fruitSet.isEmpty());
