import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/menu_item.dart';
import '../../models/menu_items.dart';
import '../../resources/icons.dart';
import '../../resources/strings.dart';
import '../../routes/app_route_name.dart';
import '../../widgets/my_list_tile.dart';
import 'application_state.dart';

class ApplicationController extends GetxController {
  ///call the instance of SplashScreenState
  final state = ApplicationState();

  ///Day and Night theme
  var isDark = false;

  Future<void> changeMyTheme(state)  async {
    if (state == true) {
      isDark = true;
      Get.changeTheme(ThemeData.light());
    } else {
      isDark = false;
      Get.changeTheme(ThemeData.dark());
    }
    update();
  }

  ///OnMenu Item Selection
  Future<void> onSelected(BuildContext context, MenuItem item) async {
    switch (item) {
      case MenuItems.itemSettings:
        Get.offAndToNamed(AppRouteName.historyPage);
    }
  }

  ///Functionality Declarations
  String output = '0';
  String _out = '0';
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = '';

  ///Function
  keypadOnPressed(String val) {
    ///condition for button 'C'
    if (val == 'C') {
      String _out = '0';
      double num1 = 0.0;
      double num2 = 0.0;
      operand = '0';
    } else if (val == '+' || val == '-' || val == 'x' || val == '/') {
      num1 = double.parse(output);
      operand = val;
      _out = '0';
      output = output + val;
    }
  }

  ///Load the constructor
  ApplicationController();

  late final List<ListTile> subhead;
  late final List<MyListTile> drawer;
  late final PageController pageController;

  @override
  void onInit() {
    super.onInit();

    ///Drawer Subhead List Items
    subhead = [
      //calculator sub-head
      const ListTile(
        title: Text(
          calc,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      //Converter Sub-head
      const ListTile(
        title: Text(
          conv,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ];

    ///Drawer List Items
    drawer = [
      ///standard selection
      const MyListTile(
        label: std,
        dense: true,
        leadingIcon: stdIcon,
      ),

      ///scientific selection
      const MyListTile(
        label: sci,
        dense: true,
        leadingIcon: sciIcon,
      ),

      ///programmer selection
      const MyListTile(
        label: pro,
        dense: true,
        leadingIcon: proIcon,
      ),

      ///date selection
      const MyListTile(
        label: date,
        dense: true,
        leadingIcon: dateIcon,
      ),

      ///currency selection
      const MyListTile(
        label: cur,
        dense: true,
        leadingIcon: curIcon,
      ),

      ///volume selection
      const MyListTile(
        label: vol,
        dense: true,
        leadingIcon: volIcon,
      ),

      ///length selection
      const MyListTile(
        label: len,
        dense: true,
        leadingIcon: lenIcon,
      ),

      ///weight and mass selection
      const MyListTile(
        label: wei,
        dense: true,
        leadingIcon: weiIcon,
      ),

      ///temperature selection
      const MyListTile(
        label: tem,
        dense: true,
        leadingIcon: temIcon,
      ),

      ///energy selection
      const MyListTile(
        label: ene,
        dense: true,
        leadingIcon: eneIcon,
      ),

      ///area selection
      const MyListTile(
        label: are,
        dense: true,
        leadingIcon: areIcon,
      ),

      ///speed selection
      const MyListTile(
        label: spe,
        dense: true,
        leadingIcon: speIcon,
      ),

      ///time selection
      const MyListTile(
        label: tim,
        dense: true,
        leadingIcon: timIcon,
      ),

      ///power selection
      const MyListTile(
        label: pow,
        dense: true,
        leadingIcon: powIcon,
      ),

      ///data selection
      const MyListTile(
        label: data,
        dense: true,
        leadingIcon: datIcon,
      ),

      ///pressure selection
      const MyListTile(
        label: pres,
        dense: true,
        leadingIcon: presIcon,
      ),

      ///angle selection
      const MyListTile(
        label: ang,
        dense: true,
        leadingIcon: angIcon,
      ),
    ];

    pageController = PageController(initialPage: state.page);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
