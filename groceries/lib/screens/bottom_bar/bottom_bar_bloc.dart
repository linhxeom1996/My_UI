import 'package:code_base/screens/bottom_bar/bottom_bar_event.dart';
import 'package:code_base/screens/bottom_bar/bottom_bar_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomBarBloc extends Bloc<BottomBarEvent, BottomBarState> {
  BottomBarBloc() : super(BottomBarState(indexPage: 0)) {
    on((event, emit) {
      if (event is BottomBarEvent) {
        emit(BottomBarState(indexPage: event.indexPage));
      }
    });
  }
}
