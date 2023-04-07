import 'package:chatty_app/common/routes/names.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../store/user.dart';

//check if the user has logged in
//this class called before any controller or loading view
class RouteAuthMiddleware extends GetMiddleware {
  //priortiy smaller the better
  @override
  int? priority = 0;

  RouteAuthMiddleware({required this.priority});

  //responsible for checking routes before you go to certain routes
  @override
  RouteSettings? redirect(String? route) {
    if (UserStore.to.isLogin ||
        route == AppRoutes.SIGN_IN ||
        route == AppRoutes.INITIAL) {
      return null;
    } else {
      Future.delayed(const Duration(seconds: 2),
          () => Get.snackbar("Tips", "Login expired, please login again!"));
      return const RouteSettings(name: AppRoutes.SIGN_IN);
    }
  }
}
