import "dart:io";
import "dart:math";

void main() {
  Random ran = Random();
  int random = ran.nextInt(2);
  print("Enter number");
  int input = int.parse(stdin.readLineSync()!);
  print(random);
  if (input == random) {
    print("You win");
  }
  print("You Lose");
}
