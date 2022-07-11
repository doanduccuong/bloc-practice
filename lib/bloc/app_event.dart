part of 'app_bloc.dart';

@immutable
abstract class AppEvent extends Equatable {}

class IncreaseEvent extends AppEvent {
  final int number;
  IncreaseEvent({required this.number});
  @override
  List<Object?> get props => [number];
}

class DecreaseEvent extends AppEvent {
  final int number;
  DecreaseEvent({required this.number});
  @override
  List<Object?> get props => [number];
}
