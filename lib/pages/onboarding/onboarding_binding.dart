import 'package:get/get.dart';

import 'onboarding_index.dart';

class OnBoardingBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(OnBoardingController());
  }
}
