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
if(sWord.charAt(0)=='a'||sWord.charAt(0)=='e'||sWord.charAt(0)=='i'||sWord.charAt(0)=='o'||sWord.charAt(0)=='u'){
 return 0;
}
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  String a = sWord;
  String b = sWord;
	if(findFirstVowel(sWord) == -1){
    if(sWord.substring(0,2).equals("qu")||sWord.substring(0,2).equals("st")){
      a = sWord.substring(0,2);
      b = sWord.substring(2,sWord.length());
    }else if(sWord.substring(0,3).equals("thr")){
      a = sWord.substring(0,3);
      b = sWord.substring(3,sWord.length());
    }else if(sWord.substring(0,3).equals("try")){
      a = sWord.substring(3,sWord.length());
      b = sWord.substring(0,3);
    }else{
    a = sWord.substring(0,1);
    b = sWord.substring(1,sWord.length());
    }
		return b + a + "ay";
	}
	else 
	{
    return sWord + "way";
	}
}
