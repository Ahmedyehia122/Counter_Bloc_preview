import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int teamACounter = 0;
  int teamBCounter = 0;

  void incrementTeam({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamACounter += buttonNumber;
      emit(IncreaseCouterA());
    } else {
      teamBCounter += buttonNumber;
      emit(IncreaseCouterB());
    }
  }
}
