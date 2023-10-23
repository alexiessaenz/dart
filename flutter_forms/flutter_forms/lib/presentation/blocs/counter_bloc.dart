import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc {
  void _onCounterIncreased(
    CounterIncreased event,
    Emitter<CounterState> emit
    ){
      emit(state.copyWith(
          counter: state.counter + event.value,
          transactionCount: state.transactionCount + 1
        )
      );
    }

  void _onCounterReset( CounterReset event, Emitter<CounterState> emit ) {
    emit(state.copyWith(
        counter: 0,
      )
    );
  }

  void increaseBy( [int value = 1] ) {
    add( CounterIncreased(value) );
  }

  void resetCounter() {
    add( CounterReset() );
  }
  
}