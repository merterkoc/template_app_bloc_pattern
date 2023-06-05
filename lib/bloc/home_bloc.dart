import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super( const HomeState()) {
    on<HomeDecrement>((event, emit) => (_onHomeDecrement(event, emit)));
    on<HomeIncrement>((event, emit) => (_onHomeIncrement(event, emit)));
    on<HomeReset>((event, emit) => (_onHomeReset(event, emit)));
  }

  _onHomeDecrement(HomeDecrement event, Emitter<HomeState> emit) {
    emit(state.copyWith(counter: state.counter- 1));
  }

  _onHomeIncrement(HomeIncrement event, Emitter<HomeState> emit) {
    emit(state.copyWith(counter: state.counter + 1));
  }

  _onHomeReset(HomeReset event, Emitter<HomeState> emit) {
    emit(state.copyWith(counter: 0));
  }

}
