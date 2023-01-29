import 'package:code_base/bottom_bar.dart';
import 'package:code_base/screens/page_intro/intro.dart';
import 'package:code_base/screens/page_login/login_page.dart';
import 'package:code_base/screens/page_splash/splash.dart';
import 'package:code_base/screens/routers/path_router.dart';
import 'package:fluro/fluro.dart';

class RouterBase {
  static FluroRouter router = FluroRouter();

  static Handler splash =
      Handler(handlerFunc: (context, parameters) => const SplashPage());

  static Handler intro =
      Handler(handlerFunc: (context, parameters) => const IntroPage());

  static Handler login =
      Handler(handlerFunc: (context, parameters) => const LoginPage());

  static Handler home =
      Handler(handlerFunc: (context, parameters) => const BottomBar());

  static void setupRouter() {
    router.define(
      PathScreen.home,
      handler: home,
      transitionType: TransitionType.none,
    );

    router.define(PathScreen.login,
        handler: login, transitionType: TransitionType.none);

    router.define(PathScreen.splash,
        handler: splash, transitionType: TransitionType.none);

    router.define(PathScreen.intro,
        handler: intro, transitionType: TransitionType.none);
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
