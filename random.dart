import "dart:io";
import "dart:math";

void main() {
  Random ran = Random();
  int random = ran.nextInt(10);
  while (true) {
    print("Enter number or 'q' to quit");
    var input = int.parse(stdin.readLineSync()!);
    if (input == "q") {
      break;
    }
    print(random);
    if (input == random) {
      print("You win");
    }
    print("You Lose");
  }
}
