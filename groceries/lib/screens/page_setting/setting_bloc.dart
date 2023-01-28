import 'package:code_base/screens/page_setting/setting_event.dart';
import 'package:code_base/screens/page_setting/setting_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc() : super(SettingState()) {
    on((event, emit) {
      if (event is SettingEvent1) {
        emit(SettingState1());
      } else if (event is SettingEvent2) {
        emit(SettingState2());
      }
    });
  }
}
