import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:template_app_bloc_pattern/src/data/models/comment.dart';
import 'package:template_app_bloc_pattern/src/data/repository/home_repository.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final _homeRepository = HomeRepository();

  HomeBloc() : super(const HomeState()) {
    on<HomeDecrement>((event, emit) => (_onHomeDecrement(event, emit)));
    on<HomeIncrement>((event, emit) => (_onHomeIncrement(event, emit)));
    on<HomeReset>((event, emit) => (_onHomeReset(event, emit)));
    on<GetData>((event, emit) => (_onGetData(event, emit)));
  }

  _onHomeDecrement(HomeDecrement event, Emitter<HomeState> emit) {
    emit(state.copyWith(counter: state.counter - 1));
    add(const GetData());
  }

  _onHomeIncrement(HomeIncrement event, Emitter<HomeState> emit) {
    emit(state.copyWith(counter: state.counter + 1));
    add(const GetData());
  }

  _onHomeReset(HomeReset event, Emitter<HomeState> emit) {
    emit(state.copyWith(counter: 0));
  }

  _onGetData(GetData event, Emitter<HomeState> emit) async {
    final result = await _homeRepository.getComment(state.counter);
    emit(state.copyWith(comment: result));
  }
}
