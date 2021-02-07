import 'dart:io';

void main() {

  stdout.write('Input angka: ');
  int number = int.parse(stdin.readLineSync());

  for (int i = 0; i <= number.round(); i++) {
    for (int s = 0; s <= i; s++) {
      stdout.write('*');
    }
    print('');
  }
}