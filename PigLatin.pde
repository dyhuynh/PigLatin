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
public int findFirstVowel(String word)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  int vowel = 100000;
  if (word.indexOf("a")!=-1 && word.indexOf("a") <= vowel) {vowel = word.indexOf("a");}
  
  if (word.indexOf("e")!=-1 && word.indexOf("e") <= vowel) {vowel = word.indexOf("e");}

  if (word.indexOf("i")!=-1 && word.indexOf("i") <= vowel) {vowel = word.indexOf("i");}

  if (word.indexOf("o")!=-1 && word.indexOf("o") <= vowel) {vowel = word.indexOf("o");}

  if (word.indexOf("u")!=-1 && word.indexOf("u") <= vowel) {vowel = word.indexOf("u");}
  
  if (vowel == 100000) {vowel = -1;}
  
  return vowel;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{	int check = 0;
	int counter = 0;
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if (findFirstVowel(sWord)==0)
	{
		return sWord + "way";
	}

	if(sWord.substring(0,2).equals("qu")) 
	{
		return (sWord.substring(2)+"quay");
	}
	//issue
	if (findFirstVowel(sWord)>0) {
		return sWord.substring(findFirstVowel(sWord))+sWord.substring(0,findFirstVowel(sWord))+"ay";
	}
	
			return sWord;

}

