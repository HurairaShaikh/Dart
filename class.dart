import 'dart:io';

abstract class bankAccount { // abstract class for bank account
  void withdraw();
  void deposit();
}

class bankaccount extends bankAccount {  // class to override abstract functions
  int balance = 10000;
  int amount = 0;
  @override
  void withdraw() {
    print("enter amount to withdraw"); //user input
    var withdraw = int.parse(stdin.readLineSync()!);
    amount = balance - withdraw;
    print("withdraw amount is $withdraw, now remaining amount is $amount");
  }

  @override
  void deposit() {
    print("enter amount to deposit");
    var deposit = int.parse(stdin.readLineSync()!);
    amount = balance + deposit;
    print("deposit amount is $deposit, now total amount is $amount");
  }
}
// creating object for class bankaccount
void main() {
  var obj = bankaccount();
  print("IF YOU WANT TO DEPOSIT PRESSED '1' OR PRESSED '0' FOR WITHDRAW ");
  String input = stdin.readLineSync()!;
  if (input == "1") {
    obj.deposit();
  } else {
    obj.withdraw();
  }
}
