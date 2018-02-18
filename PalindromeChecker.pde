public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String bob= "";
  for(int i =0; i<word.length(); i++){
    if(Character.isLetter(word.charAt(i)) == true){
      bob = bob + word.charAt(i);
    }
  }
  bob.toLowerCase();
  if(reverse(bob.toLowerCase()).equals(bob.toLowerCase())){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length(); i>0; i--){
      sNew = sNew + str.substring(i-1, i);
    }
    //your code here
    return sNew;
}