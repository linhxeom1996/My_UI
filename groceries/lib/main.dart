import 'package:code_base/screens/page_search/search_bloc.dart';
import 'package:code_base/screens/page_setting/setting_bloc.dart';
import 'package:code_base/screens/routers/router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'screens/services/notification_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  RouterBase.setupRouter();
  NotificationService().initialNotification();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales: const [
      Locale('en', 'US'),
    ],
    path: 'assets/translations',
    fallbackLocale: const Locale('en', 'US'),
    useOnlyLangCode: true,
    child: const MyApp(),
  ));
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
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: context.localizationDelegates,
          locale: context.locale,
          supportedLocales: context.supportedLocales,
          builder: EasyLoading.init(),
          onGenerateRoute: RouterBase.router.generator,
          initialRoute: '/',
        ));
  }
}
