import 'package:Belajar_Dart/Belajar_Dart.dart' as Belajar_Dart;
import 'dart:io';

//// Fungsi [a] akan menampilkan ladfad
//// [Belajar_Dart]

void main(List<String> arguments) {
  print('Sahibul, selamat belajar dart');
  print('Hello world: ${Belajar_Dart.calculate()}!');

//  var a;
//  stdout.write('My name: ');
//  a =  stdin.readLineSync();
//  stdout.write('Your age: ');
//  var b = stdin.readLineSync();
//  print('Halo $a, your age is $b. Goodluck $a\u2665.');

  print('');

  try {
    var a = 7,
        b = 0;
    print(a ~/ b);
  } catch(e, t) {
    print('Can\'t divide by $e');
    print('Stack $t');
  } finally {
    print('This donecare');
  }
}
