// Reverse a string without using built-in methods.
main() {

  String s = "Hello World";
  print(reverseString(s));

}

String reverseString(String s){
  String res = "";

  for(int i=s.length-1; i>=0; i--){
    res += s[i];
  }

  return res;
}