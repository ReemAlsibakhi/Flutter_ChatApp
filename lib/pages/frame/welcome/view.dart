import 'package:chatty_app/pages/frame/welcome/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../common/values/colors.dart';

//show info on UI, that view depends on controller
class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({Key? key}) : super(key: key);

  Widget _buildPageHeadTitle(String title) {
    return Container(
      margin: EdgeInsets.only(top: 360),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: AppColors.primaryElementext,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.bold,
            fontSize: 45.sp),
      ),
    );
  }

  //controller is object of WelcomeController, created auto
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryElement,
      body: Container(
          width: 360.w,
          height: 780.w,
          child: _buildPageHeadTitle(controller.title)),
    );
  }
}
