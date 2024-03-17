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
    Timer(const Duration(seconds: 5), () {
      Get.offAndToNamed(RouteName.OnBoardingPage);
    });
  }

  ///Load the constructor
  SplashController();
}
