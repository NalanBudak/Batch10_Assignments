public  class StringDemoHW{
    public void StringDemoMethod() {
       
        String str = 'I am learning String Methods in APEX.';
       
        // Length of this string.
        Integer lgth = str.length();
        System.debug('The length of the string is '+ lgth);

        //Display complete string in capital letters.
        String capitalLetters = str.toUpperCase();
        System.debug('String in uppercase = '+ capitalLetters);

        // Check if this string contains ‘learning’.
        Boolean check = str.contains('learning');
        System.debug('String contain learning ---> ' + check);


       
        



    }
}
