import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/menu_item.dart';
import '../models/menu_items.dart';
import 'app_route_name.dart';

/// OnMenu Item Selection
Future<void> onSelected(BuildContext context, MenuItem item) async {
  switch (item) {
    case MenuItems.itemSettings:
      Get.offAndToNamed(AppRouteName.splash);
      break;
    case MenuItems.itemShare:
      Get.offAndToNamed(AppRouteName.splash);
  }
}