part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeInitial extends HomeState {
  @override
  List<Object> get props => [];
}

class HomeDataReceived extends HomeState {
  final List<UserModel> data;
  const HomeDataReceived({required this.data});

  @override
  List<Object> get props => [data];
}

class HomeError extends HomeState {
  final String error;
  const HomeError({required this.error});

  @override
  List<Object> get props => [error];
}
