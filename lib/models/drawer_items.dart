import 'package:amazing_calculator/resources/strings.dart';
import 'package:flutter/material.dart';

import '../data/drawer_item.dart';

class DrawerItems {
  /// calculator category items on the menu sorted in order of placement
  static List<DrawerItem> itemsCalculator = [
    stdCalc,
    sciCalc,
    proCalc,
    dateCalc,
  ];

  /// converter category items on the menu sorted in order of placement
  static List<DrawerItem> itemsConverter = [
    curConv,
    volConv,
    lenConv,
    weiConv,
    tempConv,
    eneConv,
    areaConv,
    speConv,
    timConv,
    powConv,
    dataConv,
    presConv,
    angConv,
  ];

  ///bottom Navigation
  static List<DrawerItem> itemAbout = [
    abtConv,
  ];

  ///The entire button outlines and icons
  ///Calculator Category
  static DrawerItem stdCalc = const DrawerItem(
    label: std,
    icon: Icons.calculate_outlined,
  );

  static DrawerItem sciCalc = const DrawerItem(
    label: sci,
    icon: Icons.science_sharp,
  );

  static DrawerItem proCalc = const DrawerItem(
    label: pro,
    icon: Icons.php_outlined,
  );

  static DrawerItem dateCalc = const DrawerItem(
    label: date,
    icon: Icons.date_range,
  );

  ///Converter Category
  static DrawerItem curConv = const DrawerItem(
    label: cur,
    icon: Icons.currency_bitcoin_outlined,
  );

  static DrawerItem volConv = const DrawerItem(
    label: vol,
    icon: Icons.connect_without_contact_outlined,
  );

  static DrawerItem lenConv = const DrawerItem(
    label: len,
    icon: Icons.linear_scale_sharp,
  );

  static DrawerItem weiConv = const DrawerItem(
    label: wei,
    icon: Icons.webhook,
  );

  static DrawerItem tempConv = const DrawerItem(
    label: tem,
    icon: Icons.thermostat_sharp,
  );

  static DrawerItem eneConv = const DrawerItem(
    label: ene,
    icon: Icons.fire_extinguisher_rounded,
  );

  static DrawerItem areaConv = const DrawerItem(
    label: are,
    icon: Icons.map_outlined,
  );

  static DrawerItem speConv = const DrawerItem(
    label: spe,
    icon: Icons.run_circle_outlined,
  );

  static DrawerItem timConv = const DrawerItem(
    label: tim,
    icon: Icons.timer_sharp,
  );

  static DrawerItem powConv = const DrawerItem(
    label: pow,
    icon: Icons.thunderstorm_outlined,
  );

  static DrawerItem dataConv = const DrawerItem(
    label: data,
    icon: Icons.data_exploration_outlined,
  );

  static DrawerItem presConv = const DrawerItem(
    label: pres,
    icon: Icons.speed_rounded,
  );

  static DrawerItem angConv = const DrawerItem(
    label: ang,
    icon: Icons.airline_seat_flat_angled_outlined,
  );

  static DrawerItem abtConv = const DrawerItem(
    label: abt,
    icon: Icons.error_outline,
  );
}
