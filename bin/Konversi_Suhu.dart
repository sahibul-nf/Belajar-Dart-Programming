import 'dart:io';
import 'dart:isolate';

import 'package:test/test.dart';

void main() {
  var fahrenheit, celcius, kelvin, delisle, rankine, reaumur, romer, newton;

  print(
      '               KETERANGAN PILIHAN CONVERT\n'
      'F = Fahrenheit \tC = Celcius \tK = Kelvin \t\tN = Newton \n'
      'Ra = Rankine \tDe = Delisle \tRe = Reaumur \tRo = Romer \n'
  );

  var repeat;
  do {
    stdout.write(
        'Tentukan pilihan jenis conversi dari [F/C/K/N/Ra/De/Re/Ro]: ');
    var choise = stdin.readLineSync();
    stdout.write('Masukkan nilai suhu dalam derajat: ');

    switch (choise) {
      case 'F':
        fahrenheit = num.parse(stdin.readLineSync());

        // rumus convert dari fahrenheit ke ...
        celcius = (fahrenheit - 32) / 1.8;
        kelvin = (fahrenheit + 459.67) / 1.8;
        rankine = fahrenheit + 459.67;
        delisle = (212 - fahrenheit) * 5 / 6;
        newton = (fahrenheit - 32) * 11 / 60;
        reaumur = (fahrenheit - 32) * 0.44;
        romer = (fahrenheit - 32) * 7 / 24 + 7.5;

        print('$fahrenheit derajat Fahrenheit = $celcius derajat celcius.');
        print('$fahrenheit derajat Fahrenheit = $kelvin derajat kelvin.');
        print('$fahrenheit derajat Fahrenheit = $rankine derajat rankine.');
        print('$fahrenheit derajat Fahrenheit = $delisle derajat delisle.');
        print('$fahrenheit derajat Fahrenheit = $newton derajat newton.');
        print('$fahrenheit derajat Fahrenheit = $reaumur derajat reaumur.');
        print('$fahrenheit derajat Fahrenheit = $romer derajat romer.');
        break;
      case 'C':
        celcius = num.parse(stdin.readLineSync());

        // rumus convert dari celcius ke ...
        kelvin = celcius - 273.15;
        fahrenheit = celcius * 1.8 + 32;
        rankine = (celcius + 491.67) * 1.8;
        delisle = (100 - celcius) * 1.5;
        newton = celcius * 33 / 100;
        reaumur = celcius * 0.8;
        romer = celcius * 21 / 40 + 7.5;

        print('$celcius derajat Celcius = $kelvin derajat kelvin.');
        print('$celcius derajat Celcius = $fahrenheit derajat fahrenheit.');
        print('$celcius derajat Celcius = $rankine derajat rankine.');
        print('$celcius derajat Celcius = $delisle derajat delisle.');
        print('$celcius derajat Celcius = $newton derajat newton.');
        print('$celcius derajat Celcius = $reaumur derajat reaumur.');
        print('$celcius derajat Celcius = $romer derajat romer.');
        break;
      case 'K':
        kelvin = num.parse(stdin.readLineSync());

        // rumus convert dari kelvin ke ...
        celcius = kelvin - 273.15;
        fahrenheit = kelvin * 1.8 - 459.67;
        rankine = kelvin * 1.8;
        delisle = (373.15 - kelvin) * 1.5;
        newton = (kelvin - 273.15) * 33 / 100;
        reaumur = (kelvin - 273.15) * 0.8;
        romer = (kelvin - 273.15) * 21 / 40 + 7.5;

        print('$kelvin derajat Kelvin = $celcius derajat celcius.');
        print('$kelvin derajat Kelvin = $fahrenheit derajat fahrenheit.');
        print('$kelvin derajat Kelvin = $rankine derajat rankine.');
        print('$kelvin derajat Kelvin = $delisle derajat delisle.');
        print('$kelvin derajat Kelvin = $newton derajat newton.');
        print('$kelvin derajat Kelvin = $reaumur derajat reaumur.');
        print('$kelvin derajat Kelvin = $romer derajat romer.');
        break;
      case 'N':
        newton = num.parse(stdin.readLineSync());

        // rumus convert dari newton ke ...
        celcius = newton - 100 / 33;
        fahrenheit = newton * 60 / 11 + 32;
        rankine = newton * 60 / 11 + 491.67;
        delisle = (33 - newton) * 55 / 11;
        kelvin = newton * 100 / 33 + 273.15;
        reaumur = newton * 80 / 33;
        romer = newton * 35 / 22 + 7.5;

        print('$newton derajat Newton = $celcius derajat C.');
        print('$newton derajat Newton = $fahrenheit derajat F.');
        print('$newton derajat Newton = $rankine derajat Ra.');
        print('$newton derajat Newton = $delisle derajat De.');
        print('$newton derajat Newton = $kelvin derajat K.');
        print('$newton derajat Newton = $reaumur derajat Re.');
        print('$newton derajat Newton = $romer derajat Ro.');
        break;
      case 'Ra':
        rankine = num.parse(stdin.readLineSync());

        // rumus convert dari rankine ke ...
        celcius = rankine / 1.8 + 273.15;
        fahrenheit = rankine - 459.67;
        kelvin = rankine / 1.8;
        delisle = (671.67 - rankine) * 5 / 6;
        newton = (rankine - 491.67) * 11 / 60;
        reaumur = (rankine / 1.8 + 273.15) * 0.8;
        romer = (rankine - 491.67) * 7 / 24 + 7.5;

        print('$rankine derajat Ra = $celcius derajat C.');
        print('$rankine derajat Ra = $fahrenheit derajat F.');
        print('$rankine derajat Ra = $kelvin derajat K.');
        print('$rankine derajat Ra = $delisle derajat De.');
        print('$rankine derajat Ra = $newton derajat N.');
        print('$rankine derajat Ra = $reaumur derajat Re.');
        print('$rankine derajat Ra = $romer derajat Ro.');
        break;
      case 'De':
        delisle = num.parse(stdin.readLineSync());

        // rumus convert dari delisle ke ...
        celcius = 100 - delisle * 2 / 3;
        fahrenheit = 212 - delisle * 1 / 2;
        rankine = 671.67 - delisle * 1 / 2;
        kelvin = 373.15 - delisle * 2 / 3;
        newton = 33 - delisle * 0.22;
        reaumur = 80 - delisle * 8 / 15;
        romer = 60 - delisle * 0.35;

        print('$delisle derajat De = $celcius derajat C.');
        print('$delisle derajat De = $fahrenheit derajat F.');
        print('$delisle derajat De = $rankine derajat Ra.');
        print('$delisle derajat De = $kelvin derajat K.');
        print('$delisle derajat De = $newton derajat N.');
        print('$delisle derajat De = $reaumur derajat Re.');
        print('$delisle derajat De = $romer derajat Ro.');
        break;
      case 'Re':
        reaumur = num.parse(stdin.readLineSync());

        // rumus convert dari reaumur ke ...
        celcius = reaumur / 0.8;
        fahrenheit = reaumur * 2.25 + 32;
        rankine = reaumur * 2.25 + 491.67;
        delisle = (80 - reaumur) * 1.875;
        newton = reaumur * 33 / 80;
        kelvin = reaumur / 0.8 + 273.15;
        romer = reaumur * 21 / 32 + 7.5;

        print('$reaumur derajat Re = $celcius derajat C.');
        print('$reaumur derajat Re = $fahrenheit derajat F.');
        print('$reaumur derajat Re = $rankine derajat Ra.');
        print('$reaumur derajat Re = $delisle derajat De.');
        print('$reaumur derajat Re = $newton derajat N.');
        print('$reaumur derajat Re = $kelvin derajat K.');
        print('$reaumur derajat Re = $romer derajat Ro.');
        break;
      case 'Ro':
        romer = num.parse(stdin.readLineSync());

        // rumus convert dari romer ke ...
        celcius = (romer - 7.5) * 40 / 21;
        fahrenheit = (romer - 7.5) * 24 / 7 + 32;
        rankine = (romer - 7.5) * 24 / 7 + 491.67;
        delisle = (60 - romer) * 20 / 7;
        newton = (romer - 7.5) * 22 / 35;
        reaumur = (romer - 7.5) * 32 / 21;
        kelvin = (romer - 7.5) * 40 / 21 + 273.15;

        print('$romer derajat Ro = $celcius derajat C.');
        print('$romer derajat Ro = $fahrenheit derajat F.');
        print('$romer derajat Ro = $rankine derajat Ra.');
        print('$romer derajat Ro = $delisle derajat De.');
        print('$romer derajat Ro = $newton derajat N.');
        print('$romer derajat Ro = $reaumur derajat Re.');
        print('$romer derajat Ro = $kelvin derajat K.');
        break;
    }

    stdout.write('Ingin convert nilai lain? [y/n]: ');
    repeat = stdin.readLineSync();
  } while (repeat == 'y');

  print('\nProgram is done!');

}