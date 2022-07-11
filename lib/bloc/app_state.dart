part of 'app_bloc.dart';

@immutable
abstract class AppState extends Equatable {
  @override
  List<Object?> get props => [];
}

class AppInitial extends AppState {}

class HandledEventState extends AppState {
  final int number;
  HandledEventState({required this.number});
  @override
  List<Object?> get props => [number];
}
