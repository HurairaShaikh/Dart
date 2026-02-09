import 'dart:io';

void main() {
  List<String> numbers = ["3", "1", "5", "2", "4"];
  print('sorted in "acending" or "desending" order');
  String sortorder = stdin.readLineSync()!;
  int n = numbers.length;
  for (int i = 0; i < n - 1; i++) {
    int min = i;
    for (int j = i + 1; j < n; j++) {
      if (numbers[j].compareTo(numbers[min]) < 0) min = j;
    }
    String swap = numbers[i];
    numbers[i] = numbers[min];
    numbers[min] = swap;
  }
  if (sortorder == "acending") {
    print(numbers);
  } else {
    numbers.sort((a, b) => b.compareTo(a));
    print(numbers);
  }
}