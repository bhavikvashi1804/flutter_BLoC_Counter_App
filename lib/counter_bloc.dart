
import 'package:flutter_bloc/flutter_bloc.dart';

//Events for Counter
enum CounterEvent { increment, decrement }

//BLOC for Counter
class CounterBloc extends Bloc<CounterEvent, int> {

  //we must have to provide initial value 
  @override
  int get initialState => 0;

  // convert the Event to State
  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.decrement:
        yield state - 1;
        break;
      case CounterEvent.increment:
        yield state + 1;
        break;
    }
  }
}
