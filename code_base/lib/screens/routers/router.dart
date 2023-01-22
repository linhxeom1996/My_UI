import 'package:code_base/screens/page_home/home_page.dart';
import 'package:code_base/screens/page_setting/setting_page.dart';
import 'package:fluro/fluro.dart';

class RouterBase {
  static FluroRouter router = FluroRouter();

  static Handler home =
      Handler(handlerFunc: (context, parameters) => const HomePage());

  static Handler setting =
      Handler(handlerFunc: (context, parameters) => const SettingPage());

  static void setupRouter() {
    router.define(
      '/',
      handler: home,
      transitionType: TransitionType.none,
    );

    router.define('/setting',
        handler: setting, transitionType: TransitionType.none);
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
