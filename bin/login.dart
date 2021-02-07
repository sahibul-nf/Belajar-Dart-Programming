import 'dart:io';

void main() {

}

class Auth {

  Admin ne = Admin();

  void login() {
    stdout.write('Username : ');
    ne.username = stdin.readLineSync();
    stdout.write('Password : ');
    ne.password = stdin.readLineSync();

//    if () {
//
//    }
  }
}

class Admin {
  String name, username, password;

  Admin({
   this.name,
   this.password,
   this.username
  });
}

class User {
  String name, username, password;

  User({
    this.name,
    this.password,
    this.username
  });
}