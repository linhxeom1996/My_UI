import 'package:code_base/bottom_bar.dart';
import 'package:code_base/screens/page_setting/setting_page.dart';
import 'package:code_base/screens/page_splash/splash.dart';
import 'package:fluro/fluro.dart';

class RouterBase {
  static FluroRouter router = FluroRouter();

  static Handler splash =
      Handler(handlerFunc: (context, parameters) => const SplashPage());

  static Handler home =
      Handler(handlerFunc: (context, parameters) => const BottomBar());

  static Handler setting =
      Handler(handlerFunc: (context, parameters) => const SettingPage());

  static void setupRouter() {
    router.define(
      '/home',
      handler: home,
      transitionType: TransitionType.none,
    );

    router.define('/setting',
        handler: setting, transitionType: TransitionType.none);

    router.define('/', handler: splash, transitionType: TransitionType.none);
  }

  // Navigator.pushNamed(context, '/page2/$text/$update');

  // static Handler page2 = Handler(
  //   handlerFunc: (context, params) {
  //     bool update = false;
  //     if (params['update']![0] == "true") {
  //       update = true;
  //     }
  //     return Page2(
  //       text: params['text']![0],
  //       update: update,
  //     );
  //   },
  // );

  // router.define(
  //     "/page2/:text/:update",
  //     handler: page2,
  //     transitionType: TransitionType.cupertino,
  //   );
}
