import 'dart:io';

void main() {

  Users user = Users();
  User ser = User();

  print('\t\tSignUp');
  print('= = = = = = = = = = =\n');
  print('\t\tInput');
  stdout.write('Name : ');
  user.name = stdin.readLineSync();
  stdout.write('Username : ');
  user.username = stdin.readLineSync();
  stdout.write('Password : ');
  user.password = stdin.readLineSync();
  stdout.write('Status : [admin/user] ');
  user.status = stdin.readLineSync();

  print('');
  ser.status = user.status;

}

class Users {
  String name, username, password, status;

  String getUsers() {
    return
        name + username + password + status;
  }

  void setUsers() {
    getUsers();
    print('\t\tOutput \nName : $name \nUsername : $username \nPassword : $password \nStatus : $status');
  }
}

class User extends Users{

  String userName, userUsername, userPassword, userStatus;

  @override
  void set username(String _username) {
    _username = userName;
    // TODO: implement username
    super.username = _username;
  }

  @override
  void set status(String _status) {
    // TODO: implement status
    super.status = _status;
    var a = (super.status == 'user') ? 'User' : '';
    print(a);
  }

  @override
  void setUsers() {
    // TODO: implement setUsers
    super.setUsers();
  }
}