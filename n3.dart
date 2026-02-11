import 'dart:io';

void main() {
  int n = 7;
  for (int i = 1; i <= n; i++) {
  int char = 65;
    for (int j = 1; j <= n; j++) {
      stdout.write(String.fromCharCode(char));
      char=char+1;
    }
    stdout.write("\n");
  }
}
