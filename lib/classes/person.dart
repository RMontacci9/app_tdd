import 'dart:math' as math;

class Person {
  final String name;
  final int age;
  final double height;
  final double weight;
  double? imc;

  Person(this.name, this.age, this.height, this.weight);

  double get calculateIMC {
    String result;
    double newHeight = height / 100;

    //imc = weight / (newHeight * newHeight); // metodo tradicional;
    imc = weight /
        math.pow(newHeight, 2); // calculo otimizado de algo ao quadrado
    return imc!;
  }

  bool isOlder(int age){
    if(age >= 18){
      return true;
    } else {
      return false;
    }
  }
}
