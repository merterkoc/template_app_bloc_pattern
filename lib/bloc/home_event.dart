part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class HomeIncrement extends HomeEvent {
  const HomeIncrement();

  @override
  List<Object?> get props => [];
}

class HomeDecrement extends HomeEvent {
  const HomeDecrement();

  @override
  List<Object?> get props => [];
}

class HomeReset extends HomeEvent {
  const HomeReset();

  @override
  List<Object?> get props => [];
}

class GetData extends HomeEvent {
  const GetData();

  @override
  List<Object?> get props => [];
}
