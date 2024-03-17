import 'package:get/get.dart';

import 'splash_index.dart';

/// It is solely responsible to handle dependencies

class SplashBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}