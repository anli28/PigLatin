public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	for(int i = 0; i < sWord.length(); i++){
    	String s  = sWord.substring(i,i+1);
    	if(s.equals("a") || s.equals("e") || s.equals("i") || s.equals("o") || s.equals("u")){
     		return i;         
    }
    	if(sWord.substring(0,1).equals("q") && sWord.substring(1,2).equals("u")){
    		return 2;
    	}
    	else{
    		return 3;
    	}
 	 }
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	if(findFirstVowel(sWord) == 0){
		return sWord + "way";
	}
	if(findFirstVowel(sWord) == 2){
		return sWord.substring(2,sWord.length()) + "quay";
	}
	if(findFirstVowel(sWord) == 3){
		return sWord.substring(1,sWord.length()) + sWord.substring(0,1) + "ay";
	}
	else
	{
		return "ERROR!";
	}
}
