import 'package:flutter/material.dart';

import '../data/menu_item.dart';

///Menu build_method
PopupMenuItem<MenuItem> buildItem(MenuItem item) => PopupMenuItem<MenuItem>(
      value: item,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            item.label,
            style: const TextStyle(),
          ),
          Icon(
            item.icon,
          ),
        ],
      ),
    );
