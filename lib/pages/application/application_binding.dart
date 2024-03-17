import 'package:get/get.dart';

import 'application_index.dart';

class ApplicationBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ApplicationController());
  }
}
