void main() {
  // Bonus1 - Palindrome 
  String word = "otto";
  List<String> words = ["otto", "Anna", "Lagerregal", "Hannah", "Test"];
  bool isPalindrom = true;

  for (var i = 0, j = word.length - 1; i < word.length; i++, j--) {
    if (word[i] != word[j]) {
      isPalindrom = false;
      break;
    }
  }

  if (isPalindrom) {
    print('$word ist ein Palindrom');
  } else {
    print('$word ist kein Palindrom');
  }

  for (var word in words) {
    bool isPalindrom = checkPalindrom(word);
    if (isPalindrom) {
      print('$word ist ein Palindrom');
    } else {
      print('$word ist kein Palindrom');
    }
  }


  // Bonus2 - Zahlenmuster
  String numberPattern = "";
  int max = 5;
  for (var i = 1; i <= max; i++) {
    numberPattern += i.toString();
  }
  for (var i = max - 1; i >= 1; i--) {
    numberPattern += i.toString();
  }
  numberPattern += "\n";

  print("Zahlenmuster: $numberPattern");
}

bool checkPalindrom(String word) {
  for (var i = 0, j = word.length - 1; i < word.length; i++, j--) {
    if (word[i] != word[j]) {
      return false;
    }
  }
  return true;
}
