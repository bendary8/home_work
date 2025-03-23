//Count Words in a Sentence
//Write a function that counts the number of words in a given sentence.
// Words are separated by spaces, and the function should ignore extra spaces.

void main() {
  // ignore: unused_local_variable
  String sentence = "  The quick brown fox jumps over the lazy dog  ";
  print("Word count: \${countWords(sentence)}");
}

int countWords(String sentence) {
  List<String> words = sentence.trim().split(RegExp(r'\s+'));
  return words.isEmpty ? 0 : words.length;
}
