//1-Decide the data type for key and value.
Map<String,Integer> studentRank = new Map<String,Integer>();

//2-Store 4 students' names and their ranks.
studentRank.put('John', 7);
studentRank.put('Janet', 1);
studentRank.put('Olya', 3);
studentRank.put('Tanya', 5);

//Print all the students' names one by one.
for (string students : studentRank.keySet()) {
    System.debug('Print all the students names --> '+ students);
}
    for (string students : studentRank.keySet()){
        System.debug('Student Name is ---> '+  students + ' and rank is---> ' + studentRank.get(students));
}
//Print all the student names and rank one by one in the below format.
   //Student Name : ??????? and Rank : ???? 

