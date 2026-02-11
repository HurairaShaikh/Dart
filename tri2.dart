import 'dart:io';

void main() {
  int n = 7;
  for (int i = 1; i <= n; i++) {
     for (int j = 1; j <= i+1; j++) {
      stdout.write(i);
     
    }
    stdout.write("\n");
  }
}
