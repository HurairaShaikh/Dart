import 'dart:io';

void main() {
  List<String> questions = [
    "1- what is 8x12?",
    "2- what is capital of USA?",
    "3- which is dart framework?",
    "4- founder of Microsoft?"
  ];
  List<List<String>> options = [
    ["12", "96", "50", "29"],
    ["New York", "California", "Los angeles", "Texas"],
    ["Dijango", "React Native", "Node.js", "Flutter"],
    ["Jeff bezos", "Elon MUsk", "Bill Gates", "Google"]
  ];
  List answer = [1, 0, 3, 2];
  int x = 0;
  for (int i = 0; i < questions.length; i++) {
    print(questions[i]);

    for (int j = 0; j < options[i].length; j++) {
      print("${j + 1}.${options[i][j]}");
    }
    int s = int.parse(stdin.readLineSync()!) - 1;

    if (answer[i] == s) {
      x++;
      print("correct  ");
    } else {
      print("wrong \ncorrect option is ${options[i][answer[i]]}");
    }
  }
  print("YOUR SCORE $x out of ${questions.length}");
}
