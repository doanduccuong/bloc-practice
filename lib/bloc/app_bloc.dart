import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  int number = 0;
  AppBloc() : super(HandledEventState(number: 0)) {
    on<IncreaseEvent>(
      (event, emit) {
        number++;
        emit(HandledEventState(number: number));
      },
    );
  }
}
