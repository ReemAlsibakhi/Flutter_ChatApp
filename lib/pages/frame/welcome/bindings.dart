import 'package:get/get.dart';

import 'controller.dart';

//called from routing
class WelcomeBinding implements Bindings {
  //dependency injection: inject your controller or dependencies
  @override
  void dependencies() {
    Get.lazyPut<WelcomeController>(() => WelcomeController());
  }
}
