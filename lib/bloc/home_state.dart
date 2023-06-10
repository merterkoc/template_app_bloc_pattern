part of 'home_bloc.dart';

class HomeState extends Equatable {
  final String? title;
  final int counter;
  final Comment? comment;

  const HomeState({
    this.title,
    this.counter = 0,
    this.comment,
  });

  HomeState copyWith({
    String? title,
    int? counter,
    Comment? comment,
  }) {
    return HomeState(
      title: title ?? this.title,
      counter: counter ?? this.counter,
      comment: comment ?? this.comment,
    );
  }

  @override
  List<Object?> get props => [title, counter, comment]; // [title, counter];
}
