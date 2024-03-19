import 'dart:async';

import 'package:get/get.dart';

import '../../Routes/RouteName.dart';
import 'splash_index.dart';

class SplashController extends GetxController {
  ///call the instance of SplashScreenState
  final state = SplashState();

  @override
  void onReady() {
    super.onReady();
    LoadingTime();
  }

  Future<void> LoadingTime() async {
    Timer(const Duration(seconds: 2), () {
      Get.offAndToNamed(RouteName.ApplicationPage);
    });
  }

  ///Load the constructor
  SplashController();
}
