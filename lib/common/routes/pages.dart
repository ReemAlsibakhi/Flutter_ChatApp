import 'package:chatty_app/pages/message/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../pages/frame/sign_in/index.dart';
import '../../pages/frame/welcome/index.dart';
import '../middlewares/router_auth.dart';
import 'routes.dart';

class AppPages {
  static const INITAIL = AppRoutes.INITIAL;
  static final RouteObserver<Route> observer = RouteObserver();
  static List<String> history = [];
  static final List<GetPage> routes = [
    //about boot up the app
    GetPage(
      //slash page or welcome page
      name: AppRoutes.INITIAL,
      page: () => const WelcomePage(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: AppRoutes.SIGN_IN,
      page: () => SignInPage(),
      binding: SignInBinding(),
    ),

    // GetPage (
    //   name: AppRoutes.Application,
    // page: () =› ApplicationPage (), binding: ApplicationBinding(), middlewares: [
    //   RouteAuthMiddlewore(priority:1)
    // ],),
    GetPage(
      name: AppRoutes.Message,
      page: () => const MessagePage(),
      binding: MessageBinding(),
      middlewares: [RouteAuthMiddleware(priority: 1)], //executed before
    ),
  ];
}
