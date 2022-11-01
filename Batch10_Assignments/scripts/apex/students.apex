Students std = new Students();
std.firstName = 'John';
std.lastname = 'Wick';
std.classYear = 2022;
std.major = 'Chemistry';
System.debug('Student John\' info : ' + std.generateReport());
//System.debug(std.generateReport());   //bir diger yol



Students std2 = new Students();
std2.firstName = 'Mark';
std2.lastname ='Joe';
std2.classYear= 1994;
std2.major = 'Math';
System.debug('Student Mark\' info: ' + std2.generateReport());
