import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService {
  final GetStorage _getStorage = GetStorage();
  final String storageKey = 'isDarkTheme';

  ThemeMode getThemeMode(){
    return isSaveDarkTheme()? ThemeMode.dark : ThemeMode.light;
  }

  bool isSaveDarkTheme() {
    return _getStorage.read(storageKey) ?? false;
  }

  void saveThemeMode (bool isDarkMode){
    _getStorage.write(storageKey, isDarkMode);
  }

  void changeThemeMode (){
    Get.changeThemeMode(isSaveDarkTheme()? ThemeMode.light : ThemeMode.dark);
    saveThemeMode(!isSaveDarkTheme());
  }
}
