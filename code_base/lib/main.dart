import 'package:code_base/screens/page_home/home_bloc.dart';
import 'package:code_base/screens/page_home/home_page.dart';
import 'package:code_base/screens/page_setting/setting_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => HomeBloc()),
          BlocProvider(create: (context) => SettingBloc()),
        ],
        child: const MaterialApp(
          home: HomePage(),
        ));
  }
}
