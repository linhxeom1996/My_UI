import 'package:code_base/screens/page_home/home_event.dart';
import 'package:code_base/screens/page_home/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState()) {
    on((event, emit) {
      if (event is HomeEvent1) {
        emit(HomeState1());
      } else if (event is HomeEvent2) {
        emit(HomeState2());
      }
    });
  }
}
