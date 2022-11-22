import 'dart:async';

import 'package:assignment/repo/data_repository.dart';
import 'package:assignment/repo/models/UserModel.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final DataRepository dataRepository;

  HomeBloc({required this.dataRepository}) : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {});
    on<HomeEventGetData>(_mapGetDataToState);
  }

  FutureOr<void> _mapGetDataToState(HomeEventGetData event, Emitter<HomeState> emit) async {
    List<UserModel> data = await dataRepository.getData();
    emit(HomeDataReceived(data: data));
  }
}
