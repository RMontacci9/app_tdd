import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';

class ClientMock extends Mock implements http.Client {}

void main(){
  final client = ClientMock();

}
