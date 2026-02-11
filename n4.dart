import 'dart:io';

void main() {
  int n = 3;
  int num = 1;
  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= n; j++) {
      stdout.write(num);
      num++;
    }
    stdout.write("\n");
  }
}
