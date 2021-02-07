import 'dart:io';

void main() {

  String username;
  bool not_valid = false;

  do {
    stdout.write('Input your name (min. 6 character): ');
    username = stdin.readLineSync();

    if (username.length < 6) {
      not_valid = true;
      print('Your username is not valid');
    } else {
      not_valid = false;
      print('Yups, Successful');
    }

  } while (not_valid);
}