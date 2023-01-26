import 'package:code_base/screens/page_home/home_event.dart';
import 'package:code_base/screens/page_home/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<SearchEvent, SearchState> {
  HomeBloc() : super(SearchState()) {
    on((event, emit) {
      if (event is SearchEvent1) {
        emit(SearchState1());
      } else if (event is SearchEvent2) {
        emit(SearchState2());
      }
    });
  }
}
