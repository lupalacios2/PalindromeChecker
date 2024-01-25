public void setup() {
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  
  for (int i=0; i < lines.length; i++) {    
    if (palindrome(lines[i])==true) {
      System.out.println(lines[i] + " IS a palindrome.");
    } else {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public boolean palindrome(String word) {
  String a = onlyLetters(noSpaces(noCapitals(word)));
  
  return (a.equals(reverse(a)));
}

public String reverse(String sWord) {
  String str = "";
  
  for (int i = sWord.length(); i > 0; i--) {
    str = str + sWord.substring(i - 1, i);
  }
  
  return str;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

public String noSpaces(String sWord){
  String str = "";
  
  for (int i = 0; i < sWord.length(); i++) {
    if (!sWord.substring(i, i + 1).equals(" ")) {
      str += sWord.substring(i, i + 1);
    }
  }
  
  return str;
}

public String onlyLetters(String sString){
  String str = "";
  
  for (int i = 0; i < sString.length(); i++) {
    if (Character.isLetter(sString.charAt(i))) {
      str += sString.charAt(i);
    }
  }
  
  return str;
}
