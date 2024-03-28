import 'dart:async';

import 'package:get/get.dart';

import '../../routes/app_route_name.dart';
import 'splash_index.dart';

class SplashController extends GetxController {
  ///call the instance of SplashScreenState
  final state = SplashState();

  @override
  void onReady() {
    super.onReady();
    loadingTime();
  }

  Future<void> loadingTime() async {
    Timer(const Duration(seconds: 1), () {
      Get.offAndToNamed(AppRouteName.applicationPage);
    });
  }

  ///Load the constructor
  SplashController();
}
