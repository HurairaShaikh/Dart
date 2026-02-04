import "dart:io";
import 'dart:math';

void main() {
  int score1 = 0;
  int score2 = 0;
  while (true) {
    print("Rock, Paper, scissors or 'quit' game ");
    String userpick = stdin.readLineSync()!;
    if (userpick == 'quit') {
      break;
    }
    List<String> choices = ["rock", "paper", "scissors"];
    String computerpick = choices[Random().nextInt(choices.length)];
    print("computer pick:$computerpick");
    if (computerpick == userpick) {
      print("it is tie");
    } else if ((computerpick == 'scissors' && userpick == 'rock') ||
        (computerpick == 'rock' && userpick == 'paper') ||
        (computerpick == 'paper' && userpick == 'scissors')) {
      print("you win");
      score1++;
      print("your score =$score1");
      print("Computer score = $score2");
    } else {
      print("computer wins");
      score2++;
      print("your score =$score1");
      print("Computer score = $score2");
    }
  }
}
