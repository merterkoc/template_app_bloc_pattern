part of 'home_bloc.dart';


class HomeState extends Equatable {
  final String? title;
  final int counter;

  const HomeState({this.title, this.counter = 0});

  HomeState copyWith({
    String? title,
    int? counter,
  }) {
    return HomeState(
      title: title ?? this.title,
      counter: counter ?? this.counter,
    );
  }

  @override
  List<Object?> get props => [title,counter]; // [title, counter];
}
