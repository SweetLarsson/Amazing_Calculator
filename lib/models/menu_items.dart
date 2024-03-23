import 'package:amazing_calculator/resources/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/menu_items.dart';

class MenuItems {
  /// first item on the menu
  static const List<MenuItem> itemsFirst = [
    itemSettings,
    itemShare,
    itemNotePad,
    itemTheme,
  ];

  /// second item on the menu
  static const List<MenuItem> itemsSecond = [
    itemPower,
  ];

  ///daylight/night button switch
  static const itemSettings = MenuItem(
    label: setting,
    icon: Icons.settings_outlined,
  );

  static const itemNotePad = MenuItem(
    label: note,
    icon: Icons.sticky_note_2_outlined,
  );

  static const itemTheme = MenuItem(
    label: theme,
    icon: CupertinoIcons.moon_stars
  );

  static const itemShare = MenuItem(
    label: share,
    icon: Icons.share_outlined,
  );

  static const itemPower = MenuItem(
    label: shutDown,
    icon: Icons.power_settings_new_sharp,
  );
}
