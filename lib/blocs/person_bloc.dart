import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste_project/classes/person_state.dart';

enum PersonEvent {
  clear,
  fetch,
}

class PersonBloc extends Bloc<PersonEvent, PersonState> {
  // bloc recebe um evento ou lista de eventos e uma saída
  PersonBloc() : super(PersonListState([]));

  @override
  Stream<PersonState> mapEventToState(PersonEvent event) async* { // o asterisco significa que podemos ter multiplos retornos

    if(event == PersonEvent.clear){
      PersonListState([]);
      yield PersonListState([]); //esse yield é o retorno do stream
    } else if(event == PersonEvent.fetch){
      yield PersonLoadingState();
    }

    throw UnimplementedError();
  }
}
