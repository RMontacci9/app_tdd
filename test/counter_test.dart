
import 'package:flutter_test/flutter_test.dart';
import 'package:teste_project/classes/counter.dart';

void main() {
  test('teste da classe counter', () async {
    final counter = Counter();

    counter.increment();

    expect(counter.value, 1);

  });

  test('teste com parametros', () {
    final counter = Counter();

    counter.value = 3;

    counter.incrementParams(5);

    expect(counter.value, 8);

  });


}