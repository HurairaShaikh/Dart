import 'dart:io';

void main() {
  print("Enter year in no");
  int year = int.parse(stdin.readLineSync()!);
  print("Enter month in no");
  int month = int.parse(stdin.readLineSync()!);
  if (month > 12) {
    print("enter again ");
   month = int.parse(stdin.readLineSync()!);
  }
  print("enter date in no");
  int date = int.parse(stdin.readLineSync()!);
  String day = getweekname(date, year,month);
  print("the day at $date-$month-$year is $day");
}

String getweekname(int day, int year, int month) {
  DateTime date = DateTime(year, month, day);
  int d = date.weekday;
  switch (d) {
    case 1:
      return "MOnday";
    case 2:
      return "tuesday";
    case 3:
      return "Wednesday";
    case 4:
      return "Thursday";
    case 5:
      return "friday";
    case 6:
      return "Saturday";
    case 7:
      return "sunday";
    default:
      return "invalid";
  }
}