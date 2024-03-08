@Timeout(Duration(seconds: 40)) //altera o timeout do switch inteiro
//@Skip('pode skipar a switch inteira tambem')

import 'package:flutter_test/flutter_test.dart';
import 'package:teste_project/classes/person.dart';

void main() {
  setUpAll(() {
    print('inicia a switch inteira');
    //aqui ele chama uma vez só
  }); //initState da switch toda

  tearDownAll(() {
    print('destroi a switch inteira');
    //aqui ele destroi so no fim de todos os testes da switch
  });

  setUp(() {
    print('inicia o teste');
    //é uma boa prática iniciar as classes dentro do setUp
  }); // como se fosse o initState de cada teste. Inicio do ciclo de vida do teste

  tearDown(() {
    print('destroi o teste');
    // para deixar o p´roximo teste mais limpo nós usamos ele
  }); //como se fosse o dispose(), destroi o teste.
  //esse arquivo se chama switch de teste

  //para testar os dois automaticamente e juntos
  group('testes do person', () {
    test('verificar se o imc está sendo correto', () {
      final person = Person('Roberta', 24, 163, 53.3);

      final otherPerson = Person('Jacob', 29, 177, 64.4);

      person.calculateIMC;
      otherPerson.calculateIMC;

      expect(person.imc!.toStringAsPrecision(4), '20.06');
      expect(otherPerson.imc!.toStringAsPrecision(4), '20.56');
    });

    test('verifica a idade se é mais velho ou não', () {
      final person = Person('Roberta', 24, 163, 53.3);

      person.isOlder(person.age);

      expect(person.isOlder(person.age), true);
    });

    test(
      'Testes com matchs',
      () {
        final person = Person('Roberta', 24, 163, 53.3);

        expect(person.name, isA<String>); // verifica se é uma string
        expect(person.name,
            equals('Roberta')); //boas práticas no lugar de == 'Roberta'
        expect(person.name, isNotNull); // verifica se não é nulo
        expect(
            person.name,
            contains(
                'ber')); //verifica se na string contém os caracteres solicitados

        expect(
            person.name,
            allOf([
              isA<String>,
              equals('Roberta'),
              isNotNull,
              contains('ber')
            ])); // substitui usando o allOf, no lugar
        //de escrever varias vezes expect, faça tudo dentro de um só
      },
      timeout: Timeout(
        Duration(seconds: 40),
      ), skip: 'teste esquipado, ou seja, invalido. não se comenta um teste no switch, quando queremos desconsiderar um teste usamos esse skip'
    );
  });

  //os testes duram geralmente 30 minutos, mas podemos aumentar isso em alguns casos usando o timeout
}
