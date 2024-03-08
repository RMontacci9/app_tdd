import 'package:flutter/material.dart';

import 'classes/person.dart';

void main(List<String> arguments) {

  final person = Person('Roberta', 24, 163, 53.3 );
  final otherPerson = Person('Jacob', 29, 177, 64.4 );

    person.calculateIMC;
    otherPerson.calculateIMC;

  print('seu imc é ${person.imc!.toStringAsPrecision(4)}');
  print('seu imc é ${otherPerson.imc!.toStringAsPrecision(4)}');

}



