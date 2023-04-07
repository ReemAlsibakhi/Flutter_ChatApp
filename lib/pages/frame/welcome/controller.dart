import 'package:chatty_app/common/routes/names.dart';
import 'package:chatty_app/pages/frame/welcome/state.dart';
import 'package:get/get.dart';

/*
called from Ui
this controller has to be in the memory, so app can access them, to have in
memory we call it bindings
 */
class WelcomeController extends GetxController {
  //controller sitting between UI and state
  WelcomeController();

  //title not changed so we keep it here
  final title = "Chatty";
  final state = WelcomeState();

  @override
  void onReady() {
    super.onReady();
    Future.delayed(
        const Duration(seconds: 3), () => Get.offAllNamed(AppRoutes.Message));
  }
}
